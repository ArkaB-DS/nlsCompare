csv_exists <-function(){
  if (!file.exists("nlsDatabase.csv")){
    write.table(spreadsheet,file='nlsDatabase.csv',append=TRUE,
                sep=",",col.names=TRUE,row.names=FALSE)
  }

  if (!file.exists("nlsErrorLog.csv")){
    write.table(spreadsheet_error,file='nlsErrorLog.csv',append=TRUE,
                sep=",",col.names=TRUE,row.names=FALSE)
  }
}
