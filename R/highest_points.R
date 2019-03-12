#'Highest Points Function
#'
#'This function allows you to find the highest points for each year in the nba dataset
#'@param  years extend from 1950 to 2017
#'@keywords year, points
#'@examples
#'highest_points(1950) would yield 1865

usethis::use_data(nba)
highest_points<-function(x){
  year<-nba[nba$Year==x,]
  return(max(year$PTS,na.rm=TRUE))}

