pollutantMean <- function(directory, pollutant, id = 1:322) {
        
        csvfile <- paste(directory, list.files(directory), sep="")

        for (i in id) {
                
                csvData <- rbind (csvData, read.csv(csvfile[i]))
        
                }
        
        colMeans(csvData[pollutant], na.rm = TRUE)
        
}