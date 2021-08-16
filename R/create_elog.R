create_elog<- function(){
  errorlog <- data.frame(DateTime="",MachID="",FileName="",
				 Solver="",Algorithm="",Control="",Message="")
  return(errorlog)
}
