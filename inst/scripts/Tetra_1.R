# NLSProbName: Tetra_1.R
# NLSProbDescription: {The Tetra data frame has 9 rows and 2 columns from an experiment on the pharmacokinetics of
# tetracycline.
# The two columns are:This data frame contains the following columns:
# `time`:  a numeric vector of time since drug administration (hr).
# `conc`:  a numeric vector of tetracycline concentrations.
# }

# Use the Tetra data from NRAIA package

## DATA
time=c( 1,  2,  3,  4,  6 , 8, 10, 12, 16)
conc = c( 0.7, 1.2, 1.4, 1.4, 1.1, 0.8, 0.6, 0.5, 0.3)
NLSdata <- data.frame(time,conc)

## STARTING VALUE
lrc1=-2
lrc2=1/4
A1=150
A2=50
NLSstart <-c(lrc1=lrc1,lrc2=lrc2,A1=A1,A2=A2) # a starting vector (named!)

## MODEL
NLSformula <-conc ~ A1*exp(-exp(lrc1)*time)+A2*exp(-exp(lrc2)*time)
NLSlower<- c(-Inf,-Inf,-Inf,-Inf)
NLSupper<- c(Inf,Inf,Inf,Inf)
NLSweights <- rep(0.25,length(time))
NLSsubset <- 1:length(time)
NLSref<-"nlsr"
#NLSrefVersion<-packageVersion(NLSref)
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSproblems <- read.table(system.file("extdata","problems.csv",
                                        package="nlsCompare"),header=TRUE,sep=",")
NLSpars<-as.numeric(subset(NLSproblems,Name=="Tetra_1.R")[6:(6+subset(NLSproblems,Name=="Tetra_1.R")$nPars-1)])
NLSssquares<-subset(NLSproblems,Name=="Tetra_1.R")$ssquares
NLStag<-"unbounded"
# NLSproblems[NLSproblems[,"Name"]=="Tetra_1.R",]$PkgVers<-paste(NLSref,NLSrefVersion,sep=":")
# NLSproblems[NLSproblems[,"Name"]=="Tetra_1.R",]$LastUpdated<-format(Sys.time(), "%Y-%m-%d %H:%M")
# write.table(NLSproblems,system.file("extdata","problems.csv",
#                                         package="nlsCompare"),append=FALSE,sep=",",col.names=FALSE,row.names=FALSE)
rm(time,conc,lrc1,lrc2,A1,A2)
