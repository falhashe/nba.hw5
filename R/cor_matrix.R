#'Correlation Matrix Function
#'
#'This function allows you to return a correlation matrix for each year in the nba dataset
#'@param  years extend from 1950 to 2017
#'@keywords year, correlation matrix
#'@examples
#'cor_matrix(1950) would yield a 22x22 matrix

usethis::use_data(nba)
cor_matrix<-function(x){
  year<-nba[nba$Year==x,]
  year<-purrr::keep(year, is.numeric)
  year<-year[, colSums(is.na(year))<nrow(year)]
  cor(year, method = "pearson", use = "complete.obs")}

