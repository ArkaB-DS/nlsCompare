# NLSProbName: Sacch2_1.R
# NLSProbDescription: {The Sacch2 data frame has 10 rows and 2 columns from an experiment on the pharmacokinetics of
# saccharin.
# The two columns are:This data frame contains the following columns:
# `time`: a numeric vector giving the time since drug administration (min).
# `conc`: a numeric vector giving the observed concentration of saccharin.
# }

# Use the Sacch2 data from NRAIA package

## DATA
time=c(0,   5,  15,  30,  45,  60,  75,  90, 105, 120)
conc = c(0.0, 184.3, 102.0,  50.5,  24.9,  14.1,   8.0,   5.7,   4.0,   2.9)
	
NLSdata <- data.frame(time,conc)

## STARTING VALUE
Dose=1
lKa=13
lKe=17
lCl=7
NLSstart <- c(Dose=Dose,lKa=lKa,lKe=lKe,lCl=lCl) # a starting vector (named!)

## MODEL
NLSformula <-conc ~ Dose*exp(lKe+lKa-lCl)*(exp(-exp(lKe)*time) - exp(-exp(lKa)*time))/(exp(lKa) - exp(lKe))
NLSlower<- c(-Inf,-Inf,-Inf,-Inf)
NLSupper<- c(Inf,Inf,Inf,Inf)
NLSweights <- rep(1,length(time))
NLSsubset <- 1:length(time)
NLSref<-"nlsr"
NLSrefVersion<-packageVersion(NLSref)
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSproblems <- read.table(system.file("extdata","problems.csv",
                                        package="nlsCompare"),header=TRUE,sep=",")
NLSpars<-as.numeric(subset(NLSproblems,Name=="Sacch2_1.R")[6:(6+subset(NLSproblems,Name=="Sacch2_1.R")$nPars-1)])
NLSssquares<-subset(NLSproblems,Name=="Sacch2_1.R")$ssquares
NLStag<-"unbounded"
NLSproblems[NLSproblems[,"Name"]=="Sacch2_2.R",]$PkgVers<-paste(NLSref,NLSrefVersion,sep=":")
NLSproblems[NLSproblems[,"Name"]=="Sacch2_2.R",]$LastUpdated<-format(Sys.time(), "%Y-%m-%d %H:%M")
write.table(NLSproblems,system.file("extdata","problems.csv",
                                        package="nlsCompare"),append=FALSE,sep=",",col.names=FALSE,row.names=FALSE)


rm(time,conc,Dose,lKa,lKe,lCl)