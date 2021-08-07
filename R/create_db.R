create_db<- function(){
  database<- data.frame(DateTime="",MachID="",FileName="",Solver="",
                        Algorithm="",Control="",Residuals="",Deviance="",Gradient="",
                        Parameters="",Rmat="",Convergence="",Passed="", Tags="")
  return(database)
}
