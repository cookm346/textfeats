pos_tags <- readLines("data/mobypos.txt")
pos_tags <- strsplit(pos_tags, "[\\\\]|[^[:print:]]", fixed=FALSE)

first <- unlist(lapply(pos_tags, function(x)paste0(x[1:(length(x)-1)], collapse = "")))
last <- unlist(lapply(pos_tags, function(x)x[length(x)]))

classes <- c("N", "p", "h", "V", "t", "i", "A", "v", "C", "P", "!", "r", "D", "I", "o")

results <- t(sapply(last, function(x){
                sapply(classes, function(y){
                    ifelse(length(grep(y, x) > 1), 1, 0)
                })
            }))

pos_tags <- data.frame(word = first, results)
rownames(pos_tags) <- 1:nrow(pos_tags)
colnames(pos_tags) <- c("word", "Noun", "Plural", "Noun_Phrase", "Verb_participle", "Verb_transitive",
                                    "Verb_intransitive", "Adjective", "Adverb", "Conjunction", "Preposition",
                                    "Interjection", "Pronoun", "Definite_Article", "Indefinite_Article", "Nominative")

pos_tags$word <- gsub("[^[:alnum:] ]", "", pos_tags$word)



