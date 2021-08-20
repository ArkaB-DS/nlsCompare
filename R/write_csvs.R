write_csvs <- function(database,errorlog){
  write.table(database,file='nlsDatabase.csv',append=TRUE,
              sep=",",col.names=FALSE,row.names=FALSE) 
  write.table(errorlog,file='nlsErrorLog.csv',append=TRUE,
              sep=",",col.names=FALSE,row.names=FALSE)
}
