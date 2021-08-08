create_db<- function(){
  database<- data.frame(DateTime="",FileName="",Solver="",
                        Algorithm="",Control="",Residuals="",Deviance="",Gradient="",
                        Parameters="",Rmat="",Convergence="",Passed="", Tags="",MachID="")
  return(database)
}
