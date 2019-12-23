# Amazon Review Analysis
### Dataset: [Amazon Fine Food Reviews](https://www.kaggle.com/snap/amazon-fine-food-reviews)
 
#### Data cleaning and conversion of text to vectors

### Dependencies

* Sqlite3
* Numpy
* Pandas
* NLTK
* BeautifulSoup
* TQDM
* Scikit-learn
* Gensim (Word2Vec)

```
pip commands can be used to install any of the above. <pip install {dependency}>
```

### Data cleaning:
* Dropping duplicates (with same UserId,ProfileName,Time and Text)
* Dropping rows with HelpfulnessNumerator > df.HelpfulnessDenominator (HelpfulnessDenominator is the sum of helpful or HelpfulnessNumerator and no opinion)

### Text cleaning:
* [Expanding contractions](https://stackoverflow.com/questions/19790188/expanding-english-language-contractions-in-python/47091490#47091490)
* [Stop words removal](https://www.geeksforgeeks.org/removing-stop-words-nltk-python/)(Excluding 'not', 'nor', 'neither' , 'no')
* Hyperlinks removal with regex
* Tags removal with Beautiful Soup (html.parser)

### Conversion of text/summary to vectors:
#### [Bag of Words](http://scikit-learn.org/stable/modules/generated/sklearn.feature_extraction.text.CountVectorizer.html)
* Creates a list of all the available words
* For each sentence, we will get a sparse vector with frequency of each word of list in sentence.
#### [Bigrams](https://en.wikipedia.org/wiki/Bigram)
* Handles words with meaning in pairs (example: not good)
#### [TF-IDF](https://en.wikipedia.org/wiki/Tf%E2%80%93idf)
* TF: Number of times a word occurs in a sentence / Total number of words in sentence
* IDF: log(Number of documents / Number of documents which contain the word)
* Term frequency: How frequent the word is in sentence (document).
* Inverse document frequency: How rare the word is in document corpus.
#### [Word2Vec](https://papers.nips.cc/paper/5021-distributed-representations-of-words-and-phrases-and-their-compositionality.pdf)
* Takes semantic meaning into consideration.
#### To convert sentences to vectors
* Average word2Vec
* TF-IDF weighted Word2Vec

### Built With

* [The Jupyter Notebook](https://jupyter.org/)
