library(geosphere)
library(sp)
library(maptools)
library(dpyr)
library(tidyr)
library(sf)
library(stringr)

source("~/Desktop/wave_exposure/utils.R")

# read in test file and create unique site_id
contour <- read.csv("~/Desktop/wave_exposure/bathy_data/15m_contour_points.csv") %>% 
  group_by(island) %>% 
  mutate(site_id = paste0(island, "_", str_pad(seq(1:n()), 3, "left", pad = "0")))

# select one point
#x = contour$x[11]
#y = contour$y[11]

rad_lines <- create_radial_lines(x, y)


# create polygon from coast points
# really need to get better coastline data...
coasts <- read.csv("~/Desktop/wave_exposure/bathy_data/coasts.csv") %>% 
  drop_na()

agr <- subset(coasts, isl == "agr")
haw <- subset(coasts, isl == "haw")

#create line from coastline
poly_agr <- st_sf(st_sfc(st_linestring(as.matrix(agr[, c('lon', 'lat')]))), crs = 4326)

#for all radial lines, find intersection of radial line and coast

bins <- unlist(lapply(rad_lines, boolean_intersects, poly_agr, quiet = T))

bins <- data.frame(deg = 0:359, bins = bins) %>% 
  filter(bins == 0)

deg_bins <- bins$deg

#calculate wave exposure for that point based on bins

agr_site <- annual_wave_power("~/Desktop/wave_exposure/waves_original/AGR.txt", 2000, 2011, deg_bins)


