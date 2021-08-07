spreadsheet <- data.frame()
spreadsheet_error <- data.frame()

create_csvs<- function(){
  ## create comparison spreadsheet
  spreadsheet <<- data.frame(DateTime="",MachID="",FileName="",Solver="",
                            Algorithm="",Control="",Residuals="",Deviance="",Gradient="",
                            Parameters="",Rmat="",Convergence="",Passed="", Tags="")

  ## create error spreadsheet
  spreadsheet_error <<- data.frame(DateTime="",MachID="",FileName="",Solver="",WhatFails="",
                                  Algorithm="",Control="",Message="")
}
