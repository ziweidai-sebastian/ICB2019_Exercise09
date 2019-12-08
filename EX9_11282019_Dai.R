#Part 1
raw_data <- read.csv("icb ex9.csv")
Time <- raw_data[,1]
Temp <- raw_data[,2]
plot(Time,Temp)

#Part 2
data <- read.table("data.txt")
north <- data[data[,1] == "north",]
east <- data[data[,1] == "east",]
west <- data[data[,1] == "west",]
south <- data[data[,1] == "south",]
north_total <- sum(as.numeric(north[,2]))
north_mean <- north_total/nrow(north)
east_total <- sum(as.numeric(east[,2]))
east_mean <- east_total/nrow(east)
west_total <- sum(as.numeric(west[,2]))
west_mean <- west_total/nrow(west)
south_total <- sum(as.numeric(south[,2]))
south_mean <- south_total/nrow(south)
H <- c(east_mean, west_mean, north_mean, south_mean)
M <- c("east","west","north","south")
barplot(H,names.arg = M, xlab = "Regions", ylab = "Population Mean", col = "pink")

#scatterplot
region <- c(east$V1, west$V1, north$V1, south$V1)
polpulation <- c(east$V2, west$V2, north$V2, south$V2)
plot(region,polpulation, xlab = "From left to right: East, West, North, South", col = "blue")

