library(tm)

filename <- "pdf/test.pdf"

doc <- readPDF(control = list(text = "-layout"))(elem = list(uri = filename),
                                                 language = "en",
                                                 id = "id1")
app <- doc$content
# corups <- Corpus(VectorSource(doc$content))

library(stringr)
header <- "PHORCAS 2016 Application|1044 - Memorial Hermann/Texas Medical|Match Code Number: 1272|Application Page"
hdr <- str_detect(app, header)
app <- app[!hdr]

# Writing skills
# Oral communication skills
# Leadership/mentoring skills
# Assertiveness
# Organize and manage time
# Work with peers and communicate effectively
# Clinical Problem Solving Skills
# Effective patient interactions
# Dependability
# Independence and resourcefulness
# Accept constructive criticism
# Emotional stability and maturity
# Professionalism

begin <- str_detect(app, "Characteristic Comments")
end <- str_detect(app, "Narrative Comments")
x <- which(begin)
y <- which(end)
char <- lapply(seq_along(x), function(i) app[x[i]:y[i]])
str_c(char[[1]], collapse = "")
