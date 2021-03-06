# NLSProbName: Hobbs_4.R
# NLSProbDescription: {The Hobbs weed infestation problem to estimate a
#    3-parameter logistic S curve in its unscaled form from a
# starting point of (1,1,.1) and lower=(0,0,0) and upper=(500,100,.25)
# }
# bound on b3 is lower than unconstrained solution value.

NLSstart <- list(b1=1,b2=1,b3=.1) # feasible start
NLSlower <- c(0,0,0)
NLSupper <- c(b1=500,b2=100,b3=.25)
NLSref<-"nlsr"
#NLSrefVersion<-packageVersion(NLSref)
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSproblems <- read.table(system.file("extdata","problems.csv",
                                        package="nlsCompare"),header=TRUE,sep=",")

NLSpars<-as.numeric(subset(NLSproblems,Name=="Hobbs_4.R")[4:(4+subset(NLSproblems,Name=="Hobbs_4.R")$nPars-1)])
NLSssquares<-subset(NLSproblems,Name=="Hobbs_4.R")$ssquares
NLStag<-"bounded;bad start"
# NLSproblems[NLSproblems[,"Name"]=="Hobbs_4.R",]$PkgVers<-paste(NLSref,NLSrefVersion,sep=":")
# NLSproblems[NLSproblems[,"Name"]=="Hobbs_4.R",]$LastUpdated<-format(Sys.time(), "%Y-%m-%d %H:%M")
# write.table(NLSproblems,system.file("extdata","problems.csv",
#                                         package="nlsCompare"),append=FALSE,sep=",",col.names=FALSE,row.names=FALSE)


