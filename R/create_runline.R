create_runline<-function(NLSsolver,NLSalgorithm,NLScontrol,NLSdata,
			NLSstart,NLSlower,NLSupper,NLSweights,NLSsubset,
			NLSna.action=NULL,NLSmasked=NULL){

	NLSrunline <- "(formula=NLSformula,data=NLSdata,
				          start=NLSstart,
        					lower=NLSlower,
        					upper=NLSupper,
        					weights=NLSweights,
        					subset=NLSsubset,
        					#na.action=NLSna.action,
        					algorithm=NLSalgorithm,
        					control=NLScontrol)"

	if (NLSsolver=="nlsr::nlxb"){
		NLSrunline <- "(formula=NLSformula,
        				    data=NLSdata,
        				    start=NLSstart,
        				    lower=NLSlower,
        				    upper=NLSupper,
        				    weights=NLSweights,
        				    #masked=
              			control=NLScontrol)"
	    }

	if(NLSsolver=="nlsj::nlsj" & NLSalgorithm=="marquardt"){ #?? SOLVER to be kept?
		NLSrunline <- "(formula=NLSformula,
          					data=NLSdata,
          					start=NLSstart,
          					lower=NLSlower,
          					upper=NLSupper,
          					weights=NLSweights,
          					subset=NLSsubset,
          					#na.action=
          					control=NLScontrol)"
		  }
	return(NLSrunline)
	}
