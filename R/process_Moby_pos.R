# pos2 <- readLines("http://www.gutenberg.org/files/3203/files/mobypos.txt")
# pos2 <- strsplit(pos2,"[\\\\]|[^[:print:]]",fixed=FALSE)
#
# first <- unlist(lapply(pos2, function(x)paste0(x[1:(length(x)-1)], collapse = "")))
# last <- unlist(lapply(pos2, function(x)x[length(x)]))
#
# classes <- c("N", "p", "h", "V", "t", "i", "A", "v", "C", "P", "!", "r", "D", "I", "o")
#
# results <- t(sapply(last, function(x){
#                 sapply(classes, function(y){
#                     ifelse(length(grep(y, x) > 1), 1, 0)
#                 })
#             }))
#
# pos_final <- data.frame(word = first, results)
# rownames(pos_final) <- 1:nrow(pos_final)
# colnames(pos_final) <- c("word", "Noun", "Plural", "Noun_Phrase", "Verb_participle", "Verb_transitive",
#                                     "Verb_intransitive", "Adjective", "Adverb", "Conjunction", "Preposition",
#                                     "Interjection", "Pronoun", "Definite_Article", "Indefinite_Article", "Nominative")
#
# pos_final$word <- gsub("[^[:alnum:] ]", "", pos_final$word)
#
#
# write.csv(pos_final, "data/moby_pos.csv", row.names = FALSE)
