#convert original coasts csv files to a single file
files = list.files("~/Desktop/R_WaveExposure/coasts/", full.names = T)
files_base = gsub(".txt", "", list.files("~/Desktop/R_WaveExposure/coasts/"))

coasts <- data.frame()

for (i in 1:length(files)){
  df <- read.table(files[i], sep = ",", header = T)
  df$isl <- files_base[i]
  coasts <- rbind(coasts, df)
  rm(df)
}

write.csv(coasts, "~/Desktop/R_WaveExposure/coasts.csv", row.names = F)
