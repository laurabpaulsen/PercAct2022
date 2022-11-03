# E22 P&A Halloween Writing task script 
library(ggplot2)

for (i in 1:9) {
  
  data_path = 'task1_data/'
  d <- read.table(paste(data_path, 'group',i,'_task1.tsv', sep=""), sep="\t", header=FALSE, skip = 11, 
                  col.names=c('frame','t','x','y','z'))
  
  if (i <= 2) {
    print(ggplot(d) + geom_point(aes(y, -x), color='black'))
  }  else {
    print(ggplot(d) + geom_point(aes(-y, x), color='black'))
  }
  
}
