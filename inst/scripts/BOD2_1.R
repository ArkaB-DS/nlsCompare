# NLSProbName: BOD2_1.R
# NLSProbDescription: { The BOD2 data frame has 8 rows and 2 columns
# giving the biochemical oxygen demand versus time in an evaluation of water quality.
# The two columns are:
# `time`: A numeric vector giving the time of the measurement (days).
# `demand`: A numeric vector giving the biochemical oxygen demand (mg/l).
# }


# Use the BOD2 data from NRAIA package
demand <- c(0.47, 0.74, 1.17, 1.42, 1.60, 1.84, 2.19, 2.17)
time <- c( 1,  2,  3,  4,  5,  7,  9, 11)

## DATA
NLSdata <- data.frame(demand,time)

## STARTING VALUE
A = 2.2
lrc = log(0.25)
NLSstart <- list(A = A, lrc = lrc) # a starting vector (named!)

## MODEL
NLSformula <- demand ~ A*(1-exp(-exp(lrc)*time))
NLSlower<- c(-Inf,-Inf)
NLSupper<- c(Inf,Inf)
NLSweights <- rep(1,length(time)) ## ?? Find better weights
NLSsubset <- 1:length(time)
NLSref<-"nlsr"
NLSrefVersion<-packageVersion(NLSref)
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSproblems <- read.table(system.file("extdata","problems.csv",
                                        package="nlsCompare"),header=TRUE,sep=",")
NLSpars<-as.numeric(subset(NLSproblems,Name=="BOD2_1.R")[6:(6+subset(NLSproblems,Name=="BOD2_1.R")$nPars-1)])
NLSssquares<-subset(NLSproblems,Name=="BOD2_1.R")$ssquares
NLSproblems[NLSproblems[,"Name"]=="BOD2_1.R",]$PkgVers<-paste(NLSref,NLSrefVersion,sep=":")
NLSproblems[NLSproblems[,"Name"]=="BOD2_1.R",]$LastUpdated<-format(Sys.time(), "%Y-%m-%d %H:%M")
write.table(NLSproblems,system.file("extdata","problems.csv",
                                        package="nlsCompare"),append=FALSE,sep=",",col.names=TRUE,row.names=FALSE)
NLStag<-"unbounded"
rm(demand,time,A,lrc)
