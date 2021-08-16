# Use BOD_1.R information
# feasible bounds, with regular solution
NLSlower<- c(2, -10)
NLSupper<- c(10,-1)
NLSref<-"nlsr"
NLSrefVersion<-packageVersion(NLSref)
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSpars<-as.numeric(subset(NLSproblems,Name=="BOD2_3.R")[6:(6+subset(NLSproblems,Name=="BOD2_3.R")$nPars-1)])
NLSssquares<-subset(NLSproblems,Name=="BOD2_3.R")$ssquares
NLSproblems <- read.table(system.file("extdata","problems.csv",
                                        package="nlsCompare"),header=TRUE,sep=",")
NLSproblems[NLSproblems[,"Name"]=="BOD2_3.R",]$PkgVers<-paste(NLSref,NLSrefVersion,sep=":")
NLSproblems[NLSproblems[,"Name"]=="BOD2_3.R",]$LastUpdated<-format(Sys.time(), "%Y-%m-%d %H:%M")
write.table(NLSproblems,system.file("extdata","problems.csv",
                                        package="nlsCompare"),append=FALSE,sep=",",col.names=FALSE,row.names=FALSE)

NLStag<-"bounded"

View(NLSproblems)