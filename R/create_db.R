create_db<- function(){
  database<- data.frame(DateTime="",MachID="",FileName="",Solver="",
				Algorithm="",Control="",Parameters="",
				SSquares="",Better="", Tags="")
  return(database)
}
