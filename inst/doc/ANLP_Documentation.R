## ----echo=T,message=F----------------------------------------------------
library(ANLP)
print(length(twitter.data))

## ------------------------------------------------------------------------
train.data <- sampleTextData(twitter.data,0.1)
print(length(train.data))
head(train.data)

## ------------------------------------------------------------------------
train.data.cleaned <- cleanTextData(train.data)
train.data.cleaned[[1]]$content[1:5]

## ------------------------------------------------------------------------
unigramModel <- generateTDM(train.data.cleaned,1)
head(unigramModel)

## ------------------------------------------------------------------------
bigramModel <- generateTDM(train.data.cleaned,2)
head(bigramModel)

## ------------------------------------------------------------------------
trigramModel <- generateTDM(train.data.cleaned,3)
head(trigramModel)

## ------------------------------------------------------------------------
nGramModelsList <- list(trigramModel,bigramModel,unigramModel)

## ------------------------------------------------------------------------
testString <- "I am the one who"
predict_Backoff(testString,nGramModelsList)

testString <- "what is my"
predict_Backoff(testString,nGramModelsList)

testString <- "the best movie"
predict_Backoff(testString,nGramModelsList)

