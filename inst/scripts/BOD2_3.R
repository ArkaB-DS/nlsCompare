# Use BOD_1.R information
# feasible bounds, with regular solution
NLSlower<- c(2, -10)
NLSupper<- c(10,-1)
NLSref<-"nlsr::nlxb"
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSpars<-coef(refsol)
NLSssquares<-refsol$ssquares
NLStag<-"bounded"

