# Croucher-base.R -- https://walkingrandomly.com/?p=5254
# NLSProbName: Croucher-base
# NLSProbDescription: {This is a fairly simple 2-parameter problem. This file is the "base"
#     from which others in the Croucher family are built.}

xdata <- c(-2,-1.64,-1.33,-0.7,0,0.45,1.2,1.64,2.32,2.9)
ydata <- c(0.699369,0.700462,0.695354,1.03905,1.97389,2.41143,1.91091,0.919576,-0.730975,-1.42001)
p1<- 1
p2<-0.2
NLSformula <- ydata ~ p1*cos(p2*xdata) + p2*sin(p1*xdata)
NLSstart<-list(p1=p1,p2=p2) # This is the default start given in the reference.
NLSdata<-data.frame(xdata, ydata)
NLSweights <- rep(1, length(xdata))
NLSsubset<-1:length(xdata)
NLSlower<- c(-Inf,-Inf)
NLSupper<- c(Inf,Inf)
NLStag<-"unbounded"
refsol<-nlsr::nlxb(NLSformula,NLSstart,NLSdata,lower=NLSlower, upper=NLSupper,trace=TRUE)
NLSproblems <- read.table(system.file("extdata","problems.csv",
                                        package="nlsCompare"),header=TRUE,sep=",")
NLSref<-"nlsr"
#NLSrefVersion<-packageVersion(NLSref)
NLSpars<-as.numeric(subset(NLSproblems,Name=="Croucher_1.R")[4:(4+subset(NLSproblems,Name=="Croucher_1.R")$nPars-1)])
NLSssquares<-subset(NLSproblems,Name=="Croucher_1.R")$ssquares
# NLSproblems[NLSproblems[,"Name"]=="Croucher_1.R",]$PkgVers<-paste(NLSref,NLSrefVersion,sep=":")
# NLSproblems[NLSproblems[,"Name"]=="Croucher_1.R",]$LastUpdated<-format(Sys.time(), "%Y-%m-%d %H:%M")
# write.table(NLSproblems,system.file("extdata","problems.csv",
#                                         package="nlsCompare"),append=FALSE,sep=",",col.names=FALSE,row.names=FALSE)
rm(xdata, ydata, p1, p2) # Normally remove these as we don't want to pollute the workspace
