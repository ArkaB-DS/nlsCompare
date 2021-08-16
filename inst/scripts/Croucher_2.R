#  Croucher_2.R
NLSstart <- c(p1=1, p2=0.2)
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSref<-"nlsr"
NLSrefVersion<-packageVersion(NLSref)
NLSpars<-as.numeric(subset(NLSproblems,Name=="Croucher_2.R")[6:(6+subset(NLSproblems,Name=="Croucher_2.R")$nPars-1)])
NLSssquares<-subset(NLSproblems,Name=="Croucher_2.R")$ssquares
NLSproblems <- read.table(system.file("extdata","problems.csv",
                                        package="nlsCompare"),header=TRUE,sep=",")
NLSproblems[NLSproblems[,"Name"]=="Croucher_2.R",]$PkgVers<-paste(NLSref,NLSrefVersion,sep=":")
NLSproblems[NLSproblems[,"Name"]=="Croucher_2.R",]$LastUpdated<-format(Sys.time(), "%Y-%m-%d %H:%M")
write.table(NLSproblems,system.file("extdata","problems.csv",
                                        package="nlsCompare"),append=TRUE,sep=",",col.names=FALSE,row.names=FALSE)



