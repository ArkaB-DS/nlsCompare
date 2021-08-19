run<-function(machid,database,errorlog){

  ## get the problem names
  NLSproblems <- read.table(system.file("extdata","problems.csv",
                                        package="nlsCompare"),header=TRUE,sep=",")
  ## get the methods to be applied
  NLSmethods <- read.table(system.file("extdata","methods.csv",
                                       package="nlsCompare"),header=TRUE,sep=",")

  ## set counters for row number of csvs
  problemNumber <- 1
  errorNumber <- 1

  for(i in 1:nrow(NLSproblems)){
    source(system.file("scripts",NLSproblems$Name[i],package="nlsCompare"))
    cat("Sourced problem number",i,"\n")
    for(j in 1:nrow(NLSmethods)){
      cat("Using method number",j,"\n")

      NLSsolver=NLSmethods[j,1]
	    NLSalgorithm=NLSmethods[j,2]
	    NLScontrol=eval(parse(text=NLSmethods[j,3]))

	    NLSrunline<-create_runline(NLSsolver,NLSalgorithm,
			NLScontrol,NLSdata,NLSstart,NLSlower,
			NLSupper,NLSweights,NLSsubset
			#,na.action=NULL,
			#masked=NULL,
			)

	    ## check if there is any error in creating a nls model
	    ## if yes, write it in the error log and mention ERROR in nlsDatabase
	    check.output<-try(output <- eval(parse(text=paste(NLSmethods[j,1],NLSrunline))),silent=TRUE)
      if (inherits(check.output,"try-error")) {
        ## fill in error log dataframe
        errorlog[errorNumber,1]<-format(Sys.time(), "%Y-%m-%d %H:%M")
        errorlog[errorNumber,2]<-machid
        errorlog[errorNumber,3]<-NLSproblems$Name[i]
        errorlog[errorNumber,4]<-NLSmethods[j,1]
        errorlog[errorNumber,5]<-NLSmethods[j,2]
        errorlog[errorNumber,6]<-NLSmethods[j,3]
        errorlog[errorNumber,7]<-attr(check.output,"condition")$message
        errorNumber <-errorNumber + 1

        ## fill in nlsDatabase dataframe
	      database[problemNumber,1] <- format(Sys.time(), "%Y-%m-%d %H:%M")
        database[problemNumber,2] <- machid
        database[problemNumber,3] <- NLSproblems$Name[i]
        database[problemNumber,4] <- NLSmethods[j,1]
        database[problemNumber,5] <- NLSmethods[j,2]
        database[problemNumber,6] <- NLSmethods[j,3]
        database[problemNumber,9] <-  "ERROR"
        database[problemNumber,10] <-  NLSref
        database[problemNumber,11] <-  NLStag
        problemNumber <- problemNumber +1

        ## no need to do the comparisons below
        next
	      }

      ## TESTING

      ## SETTING TOLERANCE
      epstol <- sqrt(.Machine$double.eps*100) # Can replace 100 with nls.control()$offset

      ## residuals ## ALTERNATIVE TO TESTING SUM OF SQUARES
      #checker.resid<-try(Residuals<-all.equal(NLSssquares,
      #                                       sum(as.vector(resid(output))^2),
      #                                        tolerance=epstol*(max(abs(c(NLSssquares,
      #                                                                    sum(as.vector(resid(output))^2))
      #                                        )) + epstol)))
      #if(inherits(checker.resid,"try-error")){
      #  Residuals <- attr(checker.resid,"condition")$message
      #}
	    #Residuals<-numeric_output(Residuals)

      ## deviance
      check.dev<-try(Deviance<-all.equal(NLSssquares,
                                           deviance(output),
							 tolerance=epstol*(max(abs(c(NLSssquares,deviance(output))))
								+epstol)))
      if(inherits(check.dev,"try-error")){
        Deviance <- attr(check.dev,"condition")$message
      }
      Deviance<-numeric_output(Deviance)

       ## parameters
      check.pars<-try(Parameters<-all.equal( 	as.numeric(NLSpars),
                                               	as.numeric(output$m$getPars()),
								tolerance=epstol*(max(abs(c(as.numeric(NLSpars),
												as.numeric(output$m$getPars()))))
								+epstol)))
      if(inherits(check.pars,"try-error")){
        Parameters <- attr(check.pars,"condition")$message
      }
	    Parameters<-numeric_output(Parameters)

	    ## fill in nlsDatabase dataframe
	    database[problemNumber,1] <- format(Sys.time(), "%Y-%m-%d %H:%M")
	    database[problemNumber,2] <- machid
	    database[problemNumber,3] <- NLSproblems$Name[i]
      database[problemNumber,4] <- NLSmethods[j,1]
      database[problemNumber,5] <- NLSmethods[j,2]
      database[problemNumber,6] <- NLSmethods[j,3]
      database[problemNumber,7] <- Parameters
      database[problemNumber,8] <- Deviance
      database[problemNumber,9] <- ifelse(isTRUE(all.equal(as.numeric(c(Deviance,
									Parameters)),rep(1,2))),"Equal",
							   ifelse(deviance(output)<NLSssquares,"Better","Worse"))
      database[problemNumber,10] <-  NLSref
      database[problemNumber,11] <-  NLStag

      problemNumber <- problemNumber +1
    }
    cat("Successful problem-->",i,"\n")
  }
  return(list(database=database,errorlog=errorlog))
}
