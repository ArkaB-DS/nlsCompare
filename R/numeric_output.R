numeric_output<-function(str){
	if(all(sapply(c("Mean",":"),grepl,str))){
		return( gsub("^.*: *","",str)) ## comment--> replace with strsplit 
	}else{
	return(str)
	}
 }
