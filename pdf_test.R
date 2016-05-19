library(tm)

filename <- "pdf/test.pdf"

doc <- readPDF(control = list(text = "-layout"))(elem = list(uri = filename),
                                                 language = "en",
                                                 id = "id1")
doc$content
corups <- Corpus(VectorSource(doc$content))
