#  Croucher_2.R
NLSstart <- c(p1=1, p2=0.2)
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSref<-"nlsr"
NLSrefVersion<-packageVersion(NLSref)
NLSpars<-as.numeric(subset(NLSproblems,Name=="Croucher_2.R")[4:(4+subset(NLSproblems,Name=="BOD2_1.R")$nPars-1)])
NLSssquares<-subset(NLSproblems,Name=="Croucher_2.R")$ssquares


