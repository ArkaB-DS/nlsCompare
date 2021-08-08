create_elog<- function(){
  errorlog <- data.frame(DateTime="",FileName="",Solver="",WhatFails="",
                                  Algorithm="",Control="",Message="",MachID="")
  return(errorlog)
}
