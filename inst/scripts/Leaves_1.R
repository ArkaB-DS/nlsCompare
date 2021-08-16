# NLSProbName: Leaves_1.R
# NLSProbDescription: { The Leaves data frame has 15 rows and 2 columns of leaf length over time.
# The two columns are:This data frame contains the following columns:
# `time`: e time from initial emergence (days).
# `length`: leaf length (cm).
# }

## DATA
time=c( 0.5,  1.5,  2.5,  3.5,  4.5,  5.5,  6.5,  7.5,  8.5,  9.5, 10.5, 11.5, 12.5, 13.5,
		  14.5)
length = c( 1.3,  1.3,  1.9,  3.4,  5.3,  7.1, 10.6, 16.0, 16.4, 18.3, 20.9, 20.5, 21.3, 21.2,
			20.9)
NLSdata <- data.frame(time,length)

## STARTING VALUE
Asym=3
xmid=2
scal=1
NLSstart <-list(Asym=Asym,xmid=xmid,scal=scal) # a starting vector (named!)
#tnls2 <- nls(NLSform2, data=NLSdata)
## MODEL
NLSformula <-length ~ Asym/(1+exp((xmid-time)/scal))
#NLSform2<-length ~ SSlogis(time, Asym, xmid, scal)
NLSlower<- c(-Inf,-Inf,-Inf)
NLSupper<- c(Inf,Inf,Inf)
NLSsubset <- 1:length(time)
NLSweights <- rep(1,length(time))
NLSref<-"nlsr"
NLSrefVersion<-packageVersion(NLSref)
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSproblems <- read.table(system.file("extdata","problems.csv",
                                        package="nlsCompare"),header=TRUE,sep=",")
NLSpars<-as.numeric(subset(NLSproblems,Name=="Leaves_1.R")[6:(6+subset(NLSproblems,Name=="Leaves_1.R")$nPars-1)])
NLSssquares<-subset(NLSproblems,Name=="Leaves_1.R")$ssquares
NLStag<-"unbounded"
# NLSproblems[NLSproblems[,"Name"]=="Leaves_1.R",]$PkgVers<-paste(NLSref,NLSrefVersion,sep=":")
# NLSproblems[NLSproblems[,"Name"]=="Leaves_1.R",]$LastUpdated<-format(Sys.time(), "%Y-%m-%d %H:%M")
# write.table(NLSproblems,system.file("extdata","problems.csv",
#                                         package="nlsCompare"),append=FALSE,sep=",",col.names=FALSE,row.names=FALSE)
rm(time,length,Asym,xmid,scal)
