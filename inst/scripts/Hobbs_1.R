# NLSProbName: Hobbs_1.R
# NLSProbDescription: {The Hobbs weed infestation problem to estimate a
#    3-parameter logistic S curve in its unscaled form from a reasonably
#    easy starting point of (200, 50, 0.3)
# }


## DATA
y=c(5.308, 7.24, 9.638, 12.866, 17.069, 23.192, 31.443,
          38.558, 50.156, 62.948, 75.995, 91.972)
tt=1:12
NLSdata <- data.frame(y,tt)

## STARTING VALUE
b1=200
b2=50
b3=0.3
NLSstart <-list(b1=b1, b2=b2, b3=b3) # a starting vector (named!)

## MODEL
NLSformula <- y ~ b1/(1+b2*exp(-b3*tt))
NLSlower<- c(-Inf,-Inf,-Inf)
NLSupper<- c(Inf,Inf,Inf)
NLSsubset <- 1:length(y)
NLSweights <- rep(1,length(y))
NLSref<-"nlsr"
#NLSrefVersion<-packageVersion(NLSref)
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSproblems <- read.table(system.file("extdata","problems.csv",
                                        package="nlsCompare"),header=TRUE,sep=",")
NLSpars<-as.numeric(subset(NLSproblems,Name=="Hobbs_1.R")[4:(4+subset(NLSproblems,Name=="Hobbs_1.R")$nPars-1)])
NLSssquares<-subset(NLSproblems,Name=="Hobbs_1.R")$ssquares
NLStag<-"unbounded"
# NLSproblems[NLSproblems[,"Name"]=="Hobbs_1.R",]$PkgVers<-paste(NLSref,NLSrefVersion,sep=":")
# NLSproblems[NLSproblems[,"Name"]=="Hobbs_1.R",]$LastUpdated<-format(Sys.time(), "%Y-%m-%d %H:%M")
# write.table(NLSproblems,system.file("extdata","problems.csv",
#                                         package="nlsCompare"),append=FALSE,sep=",",col.names=FALSE,row.names=FALSE)
rm(y,tt,b1,b2,b3)
