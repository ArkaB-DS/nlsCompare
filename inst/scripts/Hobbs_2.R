# NLSProbName: Hobbs_2.R
# NLSProbDescription: {The Hobbs weed infestation problem to estimate a 
#    3-parameter logistic S curve in its unscaled form from a  
# starting point of (1,1,.1) and lower=(0,0,0) and upper=(500,100,5)
# }
# feasible bounds containing solution

NLSstart <- list(b1=1,b2=1,b3=.1)
NLSlower <- c(0,0,0)
NLSupper <- c(b1=500,b2=100,b3=5)
NLSref<-"nlsr"
NLSrefVersion<-packageVersion(NLSref)
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLStag<-"bounded"
NLSpars<-as.numeric(subset(NLSproblems,Name=="Hobbs_2.R")[4:(4+subset(NLSproblems,Name=="BOD2_1.R")$nPars-1)])
NLSssquares<-subset(NLSproblems,Name=="Hobbs_2.R")$ssquares
