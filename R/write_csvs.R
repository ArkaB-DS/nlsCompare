write_csvs <- function(spreadsheet,spreadsheet_error){
  write.table(spreadsheet,file='nlsDatabase.csv',append=TRUE,
              sep=",",col.names=FALSE,row.names=FALSE)
  write.table(spreadsheet_error,file='nlsErrorLog.csv',append=TRUE,
              sep=",",col.names=FALSE,row.names=FALSE)
}
