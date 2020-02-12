## The textfeats package

This is an R package for computing text features for single words or longer documents.

<br>

## Example Usage

### Installing the package

```r
install.packages("devtools")
library(devtools)

install_github("cookm346/textfeats")
library(textfeats)
```
<br>

### Using the package

Here is some basic text we can use to demonstrate the package. The elements of this array can be single words or longer text including full documents (e.g., books).

```r
x <- c("i am the WALRUS", "Jerk!!", "very very good")
```

<br> 


#### Computing frequency based features

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
