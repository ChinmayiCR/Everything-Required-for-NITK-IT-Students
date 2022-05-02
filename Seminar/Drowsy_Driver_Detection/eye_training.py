# -*- coding: utf-8 -*-
"""
Created on Sat May  2 05:44:41 2020

@author: karth
"""

from __future__ import absolute_import
from __future__ import print_function
import numpy as np
np.random.seed(1337)  # for reproducibility
from keras.models import Sequential
from keras.layers.core import Dense, Dropout, Activation, Flatten
from keras.layers.convolutional import Conv2D, MaxPooling2D
from keras.optimizers import SGD
import pickle
import os
from six.moves import cPickle as pickle
import cv2



openDirs = ['dataset/openLeftEyes', 'dataset/openRightEyes']
closeDirs = ['dataset/closedLeftEyes', 'dataset/closedRightEyes']

def generate_dataset(type, dirData):
    dataset = np.ndarray([1231*2, 24, 24, 1], dtype='float32')
    i = 0
    for dir in dirData:
        for filename in os.listdir(dir):
            if filename.endswith('.jpg'):
                im = cv2.imread(dir + '/' + filename)
                # Convert to grayscale image
                im = np.dot(np.array(im, dtype='float32'), [[0.2989], [0.5870], [0.1140]]) / 255
                dataset[i, :, :, :] = im[:, :, :]
                i += 1

    if type == 1:
        labels = np.ones([len(dataset), 1], dtype=int)
    else:
        labels = np.zeros([len(dataset), 1], dtype=int)
    return dataset, labels

def save_train_and_test_set(dataset, labels, ratio, pickle_file):
    split = int(len(dataset) * ratio)
    train_dataset = dataset[:split]
    train_labels = labels[:split]
    test_dataset = dataset[split:]
    test_labels = labels[split:]

    try:
        f = open(pickle_file, 'wb')
        save = {
            'train_dataset': train_dataset,
            'train_labels': train_labels,
            'test_dataset': test_dataset,
            'test_labels': test_labels,
        }
        pickle.dump(save, f, pickle.HIGHEST_PROTOCOL)
        f.close()
    except Exception as e:
        print('Unable to save data to', pickle_file, ':', e)
        raise

    statinfo = os.stat(pickle_file)

# Main
if __name__ == '__main__':
    dataset_open, labels_open = generate_dataset(1, openDirs)
    dataset_closed, labels_closed = generate_dataset(0, closeDirs)

    ratio = 0.8

    pickle_file_open = 'open_eyes.pickle'
    pickle_file_closed = 'closed_eyes.pickle'

    # Save open dataset to pickle file
    save_train_and_test_set(dataset_open, labels_open, ratio, pickle_file_open)
    # Save close dataset to pickle file
    save_train_and_test_set(dataset_closed, labels_closed, ratio, pickle_file_closed)
    
    
    pickle_files = ['open_eyes.pickle', 'closed_eyes.pickle']
    i = 0
    for pickle_file in pickle_files:
        with open(pickle_file, 'rb') as f:
            save = pickle.load(f)
            if i == 0:
                train_dataset = save['train_dataset']
                train_labels = save['train_labels']
                test_dataset = save['test_dataset']
                test_labels = save['test_labels']
            else:
                train_dataset = np.concatenate((train_dataset, save['train_dataset']))
                train_labels = np.concatenate((train_labels, save['train_labels']))
                test_dataset = np.concatenate((test_dataset, save['test_dataset']))
                test_labels = np.concatenate((test_labels, save['test_labels']))
            del save  # hint to help gc free up memory
        i += 1

    # print('Training set', train_dataset.shape, train_labels.shape)
    # print('Test set', test_dataset.shape, test_labels.shape)

    batch_size = 30
    nb_classes = 1
    nb_epoch = 20

    X_train = train_dataset
    # X_train = X_train.reshape((X_train.shape[0], X_train.shape[3]) + X_train.shape[1:3])
    Y_train = train_labels

    X_test = test_dataset
    # X_test = X_test.reshape((X_test.shape[0], X_test.shape[3]) + X_test.shape[1:3])
    Y_test = test_labels

    # print data shape
    print("{1} train samples, {4} channel{0}, {2}x{3}".format("" if X_train.shape[1] == 1 else "s", *X_train.shape))
    print("{1}  test samples, {4} channel{0}, {2}x{3}".format("" if X_test.shape[1] == 1 else "s", *X_test.shape))
    # input image dimensions
    _, img_channels, img_rows, img_cols = X_train.shape

    model = Sequential()
    # first	and	second Conv Layers with pooling
    model.add(Conv2D(32, (3, 3), padding='same',input_shape=(img_channels, img_rows, img_cols)))
    model.add(Activation('relu'))
    model.add(Conv2D(32, (3, 3)))
    model.add(Activation('relu'))
    model.add(MaxPooling2D(pool_size=(2, 2)))
    model.add(Dropout(0.25))

    model.add(Conv2D(64, (3, 3), padding='same'))
    model.add(Activation('relu'))
    model.add(Conv2D(64, (3, 3)))
    model.add(Activation('relu'))
    model.add(MaxPooling2D(pool_size=(2, 2)))
    model.add(Dropout(0.25))

    model.add(Conv2D(128, (3, 3), padding='same'))
    model.add(Activation('relu'))
    model.add(Conv2D(128, (3, 3)))
    model.add(Activation('relu'))
    model.add(MaxPooling2D(pool_size=(2, 2)))
    model.add(Dropout(0.25))

    # FC layer
    model.add(Flatten())
    model.add(Dense(512))
    model.add(Activation('relu'))
    model.add(Dropout(0.5))

    # Output layer. Define the class
    model.add(Dense(nb_classes))
    model.add(Activation('sigmoid'))

    # let's train the model using SGD + momentum (how original).
    sgd = SGD(lr=0.01, decay=1e-6, momentum=0.9, nesterov=True)
    model.compile(loss='binary_crossentropy', optimizer=sgd, metrics=['accuracy'])

    model.fit(X_train, Y_train, batch_size=batch_size, epochs=nb_epoch, verbose=2, validation_data=(X_test, Y_test))

    score = model.evaluate(X_test, Y_test, verbose=0)

    print('Loss score:', score[0])
    print('Test accuracy:', score[1] * 100, '%')

    # Save model to file
    print("Save model to file json...")
    model_json = model.to_json()
    with open('model1.json', "w") as json_file:
        json_file.write(model_json)

    print("Save weights to file...")
    model.save_weights('model1.h5',overwrite=True)






