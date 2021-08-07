create_elog<- function(){
  errorlog <- data.frame(DateTime="",MachID="",FileName="",Solver="",WhatFails="",
                         Algorithm="",Control="",Message="")
  return(errorlog)
}
