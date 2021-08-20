# Active bound at solution
# Use BOD_1.R information
# feasible bounds, with regular solution
NLSlower<- c(0, -1.4)
NLSupper<- c(2.2,0)
NLSref<-"nlsr"
#NLSrefVersion<-packageVersion(NLSref)
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSproblems <- read.table(system.file("extdata","problems.csv",
                                        package="nlsCompare"),header=TRUE,sep=",")
NLSpars<-as.numeric(subset(NLSproblems,Name=="BOD2_4.R")[4:(4+subset(NLSproblems,Name=="BOD2_4.R")$nPars-1)])
NLSssquares<-subset(NLSproblems,Name=="BOD2_4.R")$ssquares
NLStag<-"bounded"
# NLSproblems[NLSproblems[,"Name"]=="BOD2_4.R",]$PkgVers<-paste(NLSref,NLSrefVersion,sep=":")
# NLSproblems[NLSproblems[,"Name"]=="BOD2_4.R",]$LastUpdated<-format(Sys.time(), "%Y-%m-%d %H:%M")
# write.table(NLSproblems,system.file("extdata","problems.csv",
#                                         package="nlsCompare"),append=FALSE,sep=",",col.names=FALSE,row.names=FALSE)

