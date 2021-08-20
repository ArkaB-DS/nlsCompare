rm_nls <- function(){
  #?? how to deal with environment
  rm(NLSdata,NLSformula,NLSlower,NLSmethods,NLSproblems,
     NLSsubset,NLSupper,NLSweights,NLSstart,
     NLSssquares,NLSpars,refsol,NLStag,NLSref,NLSrefVersion,
     envir=.GlobalEnv
     )
}
