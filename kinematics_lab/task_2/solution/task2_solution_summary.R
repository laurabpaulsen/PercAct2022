cond1 <- read_csv('exercises/ansuini_preprocessed_8475_3.csv') # grasp
cond2 <- read_csv('exercises/ansuini_preprocessed_8475_4.csv') # throw
cond3 <- read_csv('exercises/ansuini_preprocessed_8475_2.csv') # pour

d <- data.frame(rbind(cond1, cond2, cond3))
d$condLabel <- c('grasp','throw','pour')

ggplot(d) + 
  geom_point(aes(condLabel, movementOnset))
ggplot(d) + 
  geom_point(aes(condLabel, reachDuration))
ggplot(d) + 
  geom_point(aes(condLabel, peakReachVelocity))
ggplot(d) + 
  geom_point(aes(condLabel, maxReachHeight))
ggplot(d) + 
  geom_point(aes(condLabel, maxReachAperture))
ggplot(d) + 
  geom_point(aes(condLabel, graspHeight))
