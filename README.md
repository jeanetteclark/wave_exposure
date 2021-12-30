# wave_exposure

This repository contains a preliminary R impelementation of the MATALB method used in [Robinson et al, 2018](https://doi.org/10.1007/s00338-018-01737-w) and [Aston et al, 2019]. The method uses low (50km) resolution Wave Watch 3 hindcast data to predict annual wave exposure on small (< 10km) remote Pacific Islands using an incident wave swath approach. For an arbitraty point on the coast of an island, the directions of incident waves that the point is exposed to are calculated using radial lines and coastline data. In the annual WW3 data, these incident directions are filtered for, and integrated to provide an annual metric which serves as a better approximation for wave exposure than the low resolution WW3 data alone.

Attempts to make this project more applicable to current analyses and more reproducible come in fits and starts, unfortunately I don't have time to devote much to it. I created this repository so this interesting method that I worked on for quite a while is not forever lost, as I think it is a solid approach to this problem. Although there are many limitations to using it, the method is very lightweight from a computational perspective, and thus is approachable for many research scientists without access or expertise in advanced nuemrical wave modeling techniques.

`R/` contains code relevant to calculating incident wave swath and total wave exposure
`bathy_data` contains bathymetry data for the islands of interest, prepared for the R functions
`coats_original` contains the original coastline data
`matlab` contains the original matlab implementation
`python` contains an attempt to obtain satellite imagery data in order to potentially develop a better method for obtaining coastline data
`waves_original` contains a sample of the original hindcasted WW3 data for 4 island pixels


