from nltk.tokenize import word_tokenize
from nltk.stem import PorterStemmer
import time
start_time = time.time()
file = open('Datasets/corpus.txt', encoding='utf8')

vocab = []
for lines in file:
    for word in lines.split():
        vocab.append(word)

size_vocab_intial = len(vocab)
print('Vocabulary size before preprocessing: ', len(vocab))

f = open('Datasets/corpus.txt', encoding='utf8')
read = f.read()
file.seek(0)

line = 1
for word in read:
    if word == '\n':
        line += 1
# print("Number of lines: ", line)

array = []
for i in range(line):
    array.append(file.readline())

array
punc = '''!()-[]{};:'"\\, <>./?@#$%^&*_~'''

# After removing punctuation marks
for e in read:
    if e in punc:
        read = read.replace(e, " ")
read
read = read.lower()
read
for i in range(1):

    text_tokens = word_tokenize(read)
tokenize_vocab_size = len(text_tokens)
print(len(text_tokens))

stopWordsList = []
fileStopWords = open('Datasets/stopwords.txt', encoding='utf8')
# Storing stopwords in a list
for wordFile in fileStopWords:
    stopWordsList.append(wordFile.strip())

# Making a list without stopwords
without_stopwords = [
    word for word in text_tokens if word not in stopWordsList]
stop_words = len(without_stopwords)
print(len(without_stopwords))

# Stemmming the words

stemmer = PorterStemmer()
stemmed_tokens = [stemmer.stem(word) for word in without_stopwords]
# print(stemmed_tokens)
print('Vocabulary Sizes after various preprocessing steps')
print('Initial vocabulary size: ', size_vocab_intial)
print('Vocabulary after tokenization: ', tokenize_vocab_size)
print('Vocabulary after removing stop words: ', stop_words)
print('Vocabulary after Stemming', len(stemmed_tokens))
print("Number of final index terms: ", len(stemmed_tokens))

# for i in range(line):
#     check = array[i].lower()
#     for tokenItem in stemmed_tokens:

#         if tokenItem in check:
#             if tokenItem not in dict:
#                 pair = (0, set())
#                 dict[tokenItem] = set()

#             if tokenItem in dict:
#                 dict[tokenItem].add(i+1)

# dict
# dict = {}

dict = {}

# Making inverted index of index terms along with count of the index terms
for i in range(line):
    check = array[i].lower()
    for tokenItem in stemmed_tokens:

        if tokenItem in check:
            if tokenItem not in dict:
                dict[tokenItem] = [1, set()]

            if tokenItem in dict:
                dict[tokenItem][0] += 1
                dict[tokenItem][1].add(i+1)

dict


def andSets(set1, set2):
    result = set1.intersection(set2)
    return result


def orSets(set1, set2):
    result = set1.union(set2)
    return result


def notSets(set1, set2):
    result = set1-set2
    return result


def query_search(query):
    print("Query:", query)
    documents_set = set()
    prev = 'OR'
    for word in query.split():

        if word not in ["AND", "OR", "NOT"]:

            print(word, dict[word])
            curr_posting = dict[word][1]
            if prev == 'AND':
                documents_set = andSets(documents_set, curr_posting)
            elif prev == 'OR':

                documents_set = orSets(documents_set, curr_posting)
            elif prev == 'NOT':

                documents_set = notSets(documents_set, curr_posting)
            else:
                prev = word

    if len(documents_set) == 0:
        print('Documents satisfying the boolean query:', 'Empty Set!')
    else:
        print('Documents satisfying the boolean query:', documents_set)
    print('\n')


query1 = "bright OR health AND care"
query_search(query1)
query2 = "health AND care"
query_search(query2)
query3 = "music OR travel"
query_search(query3)
query4 = "music AND travel"
query_search(query4)
print("Total Time: %s seconds" % (time.time() - start_time))
