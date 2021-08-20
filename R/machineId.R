machineId <- function(){
  options(warn=-1)
  sy<-Sys.info()
  cpu<-benchmarkme::get_cpu()
  ramtry<-as.numeric( benchmarkme::get_ram() )
  if (!anyNA(ramtry)) {
    ram <- ramtry/(1024^3)
  } else {
    ram<-paste(sum(as.numeric(system('wmic MemoryChip get Capacity',intern=TRUE)),na.rm=T)/1024^3,"GB")
  }
  machid<-paste(sy["nodename"],":",sy["user"],"-",sy["sysname"],"-",sy["release"],
                "|",cpu$model_name,"|",ram," RAM", sep='')
  return(machid)
}
