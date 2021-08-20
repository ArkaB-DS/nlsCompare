csv_exists <-function(database,errorlog){
  if (!file.exists("nlsDatabase.csv")){
    write.table(database,file='nlsDatabase.csv',append=TRUE,
                sep=",",col.names=TRUE,row.names=FALSE)
    print(" 'nlsDatabase.csv' has been created")
  }else{
    print(" 'nlsDatabase.csv' already exists")
  }

  if (!file.exists("nlsErrorLog.csv")){
    write.table(errorlog,file='nlsErrorLog.csv',append=TRUE,
                sep=",",col.names=TRUE,row.names=FALSE)
    print(" 'nlsErrorLog.csv' has been created")
  }else{
    print(" 'nlsDatabase.csv' already exists")
  }
}
