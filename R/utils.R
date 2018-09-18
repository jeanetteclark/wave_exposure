#' Create a list of radial lines from a single point
#'
#' Creates radial lines from a single point of latitude/longitude, with a given resolution (in degrees) and length (in kilometers)
#'
#' @param x Longitude of central point
#' @param y Latitude of central point
#' @param res Resolution of line spacing (in degrees)
#' @param dist Length of line (in kilometers)
#' @param crs EPGS code for coordinate reference system. Default is WGS84 (EPSG: 4326)
#'
#' @return (list of sf objects) List of sf linestring objects for each radial line
#' @export
#'
#' @examples
#' \dontrun{
#' x <- 145.6693473
#' y <- 18.72645165
#' rad_lines <- create_radial_lines(x, y)
create_radial_lines <- function(x, y, res = 1, dist = 100, coord_ref = 4326){
  #create bearing vector
  i = seq(0, 359, res)
  # create 360 detination points starting at point (x,y), with bearing of i, and length of 100km
  p = destPoint(c(x,y), i, dist*1000)
  
  #create the list of radial lines
  rad_lines <- list()
  for (i in 1:nrow(p)){
    mat <- matrix(c(x, p[i,1], y, p[i,2]), nrow = 2, ncol = 2, byrow = F)
    rad_lines[[i]] <- st_sf(st_sfc(st_linestring(mat)), crs = coord_ref)
  }
  return(rad_lines)
}



#' Wrapper around st_intersects that determines whether an intersection occurs 
#'
#' @param lines sf linestring object from radial lines list
#' @param coast linestring object representing coastline
#' @param quiet whether to suppress messages from st_intersect
#'
#' @return 0 or 1 corresponding to whether intersection occurred or not
boolean_intersects <- function(line, coast, quiet = T){
  if (quiet == T){
    suppressMessages(result <- st_intersection(line, coast))
  }
  else if (quiet == F){
    result <- st_intersection(line, coast)
  }
  bool <- nrow(result)
}



#' Calculate annual wave power metric
#' 
#' This function requires input wave data at hourly resolution with a column for year and a column for peak wave power (CgE).
#' It returns a data.frame with columns year and power.
#' 
#' @param path path to csv with wave data
#' @param start_year start year of interest
#' @param end_year end year of interest
#' @param deg_bins vector of degree bins of incident wave swath
#' 
#' @return power_metric data.frame containing year and annual wave power metric
annual_wave_power <- function(path, start_year, end_year, deg_bins){
  power_metric <- read.table(path, sep = ",", header = T) %>% 
    filter(year %in% start_year:end_year) %>% 
    group_by(year) %>% 
    summarize(power = sum(CgE))
}




