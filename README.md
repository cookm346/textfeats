# The textfeats package

This is an R package for computing text features for single words or longer documents.

<br>

# Example Usage

## Installing the package

```r
install.packages("devtools")
library(devtools)

install_github("cookm346/textfeats")
library(textfeats)
```
<br>

## Using the package

Here is some basic text we can use to demonstrate the package. The elements of this array can be single words or longer text including full documents (e.g., books).

```r
x <- c("i am the WALRUS", "Jerk!!", "very very good")
```

<br> 


### Computing frequency based features

The package will compute fequency based features for each string, including:

* Number of words
* Number of unique words
* Number of characters
* Number of unique characters
* Number of punction characters

```r
count(x)

##                 n_words n_unique_words n_chars n_unique_chars n_periods n_commas n_question n_exclamation
## i am the WALRUS       4              4      15             13         0        0          0             0
## Jerk!!                1              1       6              5         0        0          0             2
## very very good        3              2      14              8         0        0          0             0
```

<br>

### Computing sentiment based features

The package will also produce a set of sentiment based features. The valence, arousal, and dominance of individual words or longer documents can be summarized by utilizing the norms from [Warriner et al (2013).](http://crr.ugent.be/archives/1003)

```r
warriner(x)

##                 valence arousal dominance
## i am the WALRUS    5.79    3.95      5.23
## Jerk!!             2.43    6.45      4.84
## very very good     7.89    3.66      6.41
```

For strings with more than one word, the mean valence, arousal, and dominance is computed.

<br>

### Computing parts of speech based features

The package will produce a set of features based on the parts of speech of the text (e.g., noun, verb, adjective). These parts of speech classes are extracted from the [Moby parts of Speech database.](https://en.wikipedia.org/wiki/Moby_Project#Part-of-Speech) Fifteen different classes exist in the database. The outout below is trucated.

```r
pos(x)

##                 Noun Plural Noun_Phrase Verb_participle Verb_transitive   ...
## i am the WALRUS    2      0           0               1               0   ...
## Jerk!!             1      0           0               1               1   ...
## very very good     1      0           0               0               0   ...
```

For strings with more than one word, the sum for each parts of speech class is computed.

<br>

### Computing concretness norms

The package will fetch concreteness norms for Brysbaert (2014). For strings with more than one word, the mean concreteness for each word will be returned.

```r
concreteness(x)

##                     Concreteness
## i am the WALRUS     2.796667
## Jerk!!              3.260000
## very very good      1.500000
```

<br>

### Computing word embeddings

Finally, the package will generate a set of semantic vectors (i.e., word embeddings). Any set of word embeddings can be used. For strings with more than one word, the function will compute the mean of the word vectors in the string (i.e., the semantic gist of the document). The outout below is trucated.

```r

# load(url("http://www.lingexp.uni-tuebingen.de/z2/LSAspaces/TASA.rda"))

semantics(x, TASA)

##                                [,1]        [,2]          [,3]          [,4]         [,5]          [,6]   ...
## i am the WALRUS    [1,] 0.049237273 0.064432684 -0.0106181763  0.0215646167 -0.000233423  0.0045926339   ...
## Jerk!!             [2,] 0.001102812 0.001143806 -0.0008592891 -0.0005428566  0.001024854 -0.0007934065   ...
## very very good     [3,] 0.049006431 0.009857605 -0.0135557641 -0.0073958977 -0.022383744  0.0004875048   ...
```

<br>
<br>
<br>
<br>
<br>
