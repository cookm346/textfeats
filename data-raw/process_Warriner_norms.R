norms <- read.csv("data/Ratings_Warriner_et_al.csv", row.names = 1)
norms <- norms[ , c("Word", "V.Mean.Sum", "A.Mean.Sum", "D.Mean.Sum")]
colnames(norms) <- c("word", "valence", "arousal", "dominance")
