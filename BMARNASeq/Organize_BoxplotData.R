# Load and organize data for plotting - num.cDEGs
threshold.vec <- seq(1000, 5000, 1000)
seed.vec <- c(8809678, 98907, 233, 556, 7890, 120, 2390, 778, 666, 99999)
boxplot.data.new <- NULL
for (threshold.i in threshold.vec) {
  for (seed.i in seed.vec) {
    load(sprintf("../ApplicationData/derived/RandomSeed/Top5000/BMAseqMultiInt%s.RData", seed.i))
    load(sprintf("../ApplicationData/derived/RandomSeed/Top5000/DESeq2MultiInt%s.RData", seed.i))
    load(sprintf("../ApplicationData/derived/RandomSeed/Top5000/edgeRMultiInt%s.RData", seed.i))
    load(sprintf("../ApplicationData/derived/RandomSeed/Top5000/eBayesMultiInt%s.RData", seed.i))
    load(sprintf("../ApplicationData/derived/RandomSeed/Top5000/VoomLimmaMultiInt%s.RData", seed.i))
    boxplot.data.new <- rbind(boxplot.data.new, boxplot_data(threshold.i, seed.i))
  }
}


# Load and organize data for plotting - rate.cDEGs
threshold.vec <- seq(1000, 5000, 1000)
seed.vec <- c(8809678, 98907, 233, 556, 7890, 120, 2390, 778, 666, 99999)
boxplot.data.new2 <- NULL
for (threshold.i in threshold.vec) {
  for (seed.i in seed.vec) {
    load(sprintf("../ApplicationData/derived/RandomSeed/Top5000/BMAseqMultiInt%s.RData", seed.i))
    load(sprintf("../ApplicationData/derived/RandomSeed/Top5000/DESeq2MultiInt%s.RData", seed.i))
    load(sprintf("../ApplicationData/derived/RandomSeed/Top5000/edgeRMultiInt%s.RData", seed.i))
    load(sprintf("../ApplicationData/derived/RandomSeed/Top5000/eBayesMultiInt%s.RData", seed.i))
    load(sprintf("../ApplicationData/derived/RandomSeed/Top5000/VoomLimmaMultiInt%s.RData", seed.i))
    boxplot.data.new2 <- rbind(boxplot.data.new2, boxplot_data2(threshold.i, seed.i))
  }
}


# Save the image 
save.image(file = "../ApplicationData/derived/overlapplot_image.RData")
