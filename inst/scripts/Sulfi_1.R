# NLSProbName: Sulfi_1.R
# NLSProbDescription: {The Sulfi data frame has 12 rows and 2 columns from an experiment on the pharmacokinetics of
# sulfisoxazole.
# The two columns are:This data frame contains the following columns:
# `time`:  a numeric vector giving the time since drug administration (min).
# `conc`:  a numeric vector giving the observed concentration of sulfisoxazole (?g/ml).
# }


# Use the Sulfi data from NRAIA package

## DATA
time=c( 0.25,  0.50,  0.75,  1.00,  1.50,  2.00,  3.00,  4.00,  6.00, 12.00, 24.00,
		  48.00)
conc = c( 215.6, 189.2, 176.0, 162.8, 138.6, 121.0, 101.2,  88.0,  61.6,  22.0,   4.4,
		    0.1)
NLSdata <- data.frame(time,conc)

## STARTING VALUE
lrc1=1
lrc2=-2
A1=19
A2=31
NLSstart <-c(lrc1=lrc1,lrc2=lrc2,A1=A1,A2=A2) # a starting vector (named!)

## MODEL
NLSformula <-conc ~ A1*exp(-exp(lrc1)*time)+A2*exp(-exp(lrc2)*time)
NLSlower<- c(-Inf,-Inf,-Inf,-Inf)
NLSupper<- c(Inf,Inf,Inf,Inf)
NLSweights <- rep(1,length(time))
NLSsubset <- 1:length(time)
NLSref<-"nlsr"
NLSrefVersion<-packageVersion(NLSref)
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSpars<-as.numeric(subset(NLSproblems,Name=="Sulfi_1.R")[6:(6+subset(NLSproblems,Name=="Sulfi_1.R")$nPars-1)])
NLSssquares<-subset(NLSproblems,Name=="Sulfi_1.R")$ssquares
NLStag<-"unbounded"
NLSproblems <- read.table(system.file("extdata","problems.csv",
                                        package="nlsCompare"),header=TRUE,sep=",")
NLSproblems[NLSproblems[,"Name"]=="Sulfi_1.R",]$PkgVers<-paste(NLSref,NLSrefVersion,sep=":")
NLSproblems[NLSproblems[,"Name"]=="Sulfi_1.R",]$LastUpdated<-format(Sys.time(), "%Y-%m-%d %H:%M")
write.table(NLSproblems,system.file("extdata","problems.csv",
                                        package="nlsCompare"),append=FALSE,sep=",",col.names=FALSE,row.names=FALSE)


rm(time,conc,lrc1,lrc2,A1,A2)