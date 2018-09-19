# create contour levels from Raster
library(raster) #gdal, rgeos

#MHI
r <- raster("~/Desktop/wave_exposure/bathymetry_rasters/MHI_50m/w001001.adf")
a <- round(focal(r, w=matrix(1/49, nc=7, nr=7), na.rm = T, NAonly = T))
x <- rasterToContour(r, levels = c(-5))

test <- st_as_sf(x)


r <- raster("~/Desktop/wave_exposure/bathymetry_rasters/PH_5m.asc/PH_5m.asc")
a <- round(focal(r, w=matrix(1/49, nc=7, nr=7), na.rm = T, NAonly = T))
x_r <- rasterToContour(a, levels = c(-5))
x <- rasterToContour(r, levels = c(-5))

# FFS presenting problems...
r <- round(raster("~/Desktop/wave_exposure/bathymetry_rasters/FFS_5m.asc/FFS-5m.grd.asc"))
x <- rasterToContour(r, levels = c(-15:0))

pol <- rasterToPolygons(r, fun=function(x){x>-6}, dissolve = T)

t <- rasterToPoints(r,fun=function(x){x>-10})
