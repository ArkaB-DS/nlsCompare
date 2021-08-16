# Active bound at solution
# Use BOD_1.R information
# feasible bounds, with regular solution
NLSlower<- c(0, -1.4)
NLSupper<- c(2.2,0)
NLSref<-"nlsr"
NLSrefVersion<-packageVersion(NLSref)
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSpars<-as.numeric(subset(NLSproblems,Name=="BOD2_1.R")[4:(4+subset(NLSproblems,Name=="BOD2_1.R")$nPars-1)])
NLSssquares<-subset(NLSproblems,Name=="BOD2_1.R")$ssquares
NLStag<-"bounded"
