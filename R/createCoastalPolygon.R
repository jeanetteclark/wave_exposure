#testing polygon creation


# really need to get better coastline data...
# make sure all polygons are closed
coasts <- read.csv("~/Desktop/wave_exposure/bathy_data/coasts.csv") %>% 
    drop_na() %>% 
    group_by(isl) %>% 
    mutate(id = seq(1:n()))

coasts_close <- filter(coasts, id == 1)

max_inds <- c()
isls <- unique(coasts$isl)
for (i in 1:47){
    max_inds[i] <- max(coasts$id[which(coasts$isl == isls[i])]) + 1
}

coasts_close$id <- max_inds

coasts <- rbind(coasts, coasts_close)
coasts <- arrange(coasts, isl, id)




#create line from coastline
#poly_agr <- st_sf(st_sfc(st_linestring(as.matrix(ffs[, c('lon', 'lat')]))), crs = 4326)

coasts_list <- list()
isls <- unique(coasts$isl)
for (i in 1:length(isls)){
    coasts_list[[i]] <- as.matrix(coasts[coasts$isl == isls[i], c("lon", "lat")])
}

poly_agr <- st_sf(st_sfc(st_polygon(coasts_list), crs = 4326))
poly_smooth <- smooth(poly_agr, method = "densify", max_distance = 1000)
                  