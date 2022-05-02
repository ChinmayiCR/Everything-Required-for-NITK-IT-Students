import numpy as np


def load_embeddings(path='./embeddings/numberbatch-en.txt'):
    """ Function to initialize embeddings and assign words in embeddings to specific value

    :param path: path to embedding file
    :type path: str
    :return: embeddings index, a dictionary to map to embedding vector
    :rtype: dict
    """

    embeddings_index = {}
    with open(path, 'r', encoding='utf-8') as f: # encoding='utf-8'
        for line in f:
            values = line.split(' ')
            word = values[0]
            embedding = np.asarray(values[1:], dtype='float32')
            embeddings_index[word] = embedding
    return embeddings_index


def create_embedding_matrix(word2int, embeddings_index, embedding_dim=300):
    """
    Function creates am embedding matrix based off of whats contained in reviews versus embeddings
    :param word2int: Dictionary of words mapped to values from tokenizer
    :type word2int: dict
    :param embeddings_index: Dictionary of word mapped to embedding vector
    :type embeddings_index: dict
    :param embedding_dim: Dimension of the embedding matrix used. Default is 300 since CN Embedding matrix used
    :type embedding_dim: int
    :return: embedding matrix
    :rtype: numpy.ndarray
    """

    assert isinstance(word2int, dict)
    assert isinstance(embeddings_index, dict)

    nb_words = len(word2int)

    # Create matrix with default values of zero
    word_embedding_matrix = np.zeros((nb_words, embedding_dim), dtype=np.float32)
    for word, i in word2int.items():
        if word in embeddings_index:
            word_embedding_matrix[i] = embeddings_index[word]
        else:
            # If word not in embeddings, create a random embedding for it
            new_embedding = np.array(np.random.uniform(-1.0, 1.0, embedding_dim))
            embeddings_index[word] = new_embedding
            word_embedding_matrix[i] = new_embedding
    print("Length Embedding Matrix: %d\tLength Word2Int: %d" % (len(word_embedding_matrix), len(word2int)))
    return word_embedding_matrix
