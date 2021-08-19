create_db<- function(){
  column_names <- c("DateTime","MachID","FileName","Solver",
                  "Algorithm","Control","Parameters",
                  "SSquares","Better","RefSol", "Tags")
  database <- data.frame(matrix(nrow = 0, ncol = length(column_names)))
  colnames(database) <- column_names
  return(database)
}
