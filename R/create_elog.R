create_elog<- function(){
  column_names <- c("DateTime","MachID","FileName",
                    "Solver","Algorithm","Control","Message")
  errorlog <- data.frame(matrix(nrow = 0, ncol = length(column_names)))
  colnames(errorlog) <- column_names
  return(errorlog)
}
