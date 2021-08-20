setup_dir<-function(){
  location <- easycsv::choose_dir()
  setwd(location)
  return(location)
}
