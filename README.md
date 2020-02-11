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

```r

x <- c("some example text", "penguin", "xxxxx")

warriner(x)

pos(x)

```
