#'Oldest Player Function
#'
#'This function allows you to find the oldest player for each year in the nba dataset
#'@param  years extend from 1950 to 2017
#'@keywords year, age
#'@examples
#'oldest_player(1950) would yield 36

usethis::use_data(nba)
oldest_player<-function(x){
  year<-nba[nba$Year==x,]
  return(max(year$Age,na.rm=TRUE))}


