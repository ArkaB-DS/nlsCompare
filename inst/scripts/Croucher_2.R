#  Croucher001.R
NLSstart <- c(p1=1, p2=0.2)
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSref<-"nlsr"
NLSrefVersion<-packageVersion(NLSref)

