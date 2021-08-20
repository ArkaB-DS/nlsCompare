numeric_output<-function(str){
	if(all(sapply(c("Mean",":"),grepl,str))){
		return( gsub("^.*: *","",str))  
	}else{
	return(str)
	}
 }
