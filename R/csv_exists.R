csv_exists <-function(){
  #rtn<-c(TRUE,TRUE)
  if (!file.exists("nlsDatabase.csv")){
    write.table(spreadsheet,file='nlsDatabase.csv',append=TRUE,
                sep=",",col.names=TRUE,row.names=FALSE)
    #rtn[1] <- FALSE
    print(" 'nlsDatabase.csv' has been created")
  }else{
    print(" 'nlsDatabase.csv' already exists")
  }

  if (!file.exists("nlsErrorLog.csv")){
    write.table(spreadsheet_error,file='nlsErrorLog.csv',append=TRUE,
                sep=",",col.names=TRUE,row.names=FALSE)
    #rtn[2] <- FALSE
    print(" 'nlsErrorLog.csv' has been created")
  }else{
    print(" 'nlsDatabase.csv' already exists")
  }

}
