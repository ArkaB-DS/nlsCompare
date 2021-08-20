# NLSProbName: Lipo_1.R
# NLSProbDescription: {The Lipo data frame has 12 rows and 2 columns of lipoprotein concentrations over time.
# The two columns are:This data frame contains the following columns:
# `time`: a numeric vector giving the time of the concentration measurement (hr)
# `conc`:  a numeric vector of concentrations.
# }

## DATA
time=c( 0.5,  1.0,  1.5,  2.0,  3.0,  4.0,  5.0,  6.0,  7.0,  8.0,  9.0, 10.0)
conc = c( 46.10, 25.90, 17.00, 12.10,  7.22,  4.51,  3.19,  2.40,  1.82,  1.41,  1.00,
  		    0.94)
NLSdata <- data.frame(time,conc)

## STARTING VALUE
lrc1=1/4
lrc2=-2
A1=100
A2=150
NLSstart <- list(lrc1=lrc1,lrc2=lrc2,A1=A1,A2=A2) # a starting vector (named!)

## MODEL
NLSformula <-conc ~ A1*exp(-exp(lrc1)*time)+A2*exp(-exp(lrc2)*time)
NLSlower<- c(-Inf,-Inf,-Inf,-Inf)
NLSupper<- c(Inf,Inf,Inf,Inf)
NLSsubset <- 1:length(time)
NLSweights <- rep(1,length(time))
NLSref<-"nlsr"
#NLSrefVersion<-packageVersion(NLSref)
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSproblems <- read.table(system.file("extdata","problems.csv",
                                        package="nlsCompare"),header=TRUE,sep=",")
NLSpars<-as.numeric(subset(NLSproblems,Name=="Lipo_1.R")[4:(4+subset(NLSproblems,Name=="Lipo_1.R")$nPars-1)])
NLSssquares<-subset(NLSproblems,Name=="Lipo_1.R")$ssquares
NLStag<-"unbounded"
# NLSproblems[NLSproblems[,"Name"]=="Lipo_1.R",]$PkgVers<-paste(NLSref,NLSrefVersion,sep=":")
# NLSproblems[NLSproblems[,"Name"]=="Lipo_1.R",]$LastUpdated<-format(Sys.time(), "%Y-%m-%d %H:%M")
# write.table(NLSproblems,system.file("extdata","problems.csv",
#                                         package="nlsCompare"),append=FALSE,sep=",",col.names=FALSE,row.names=FALSE)
rm(time,conc,lrc1,lrc2,A1,A2)
