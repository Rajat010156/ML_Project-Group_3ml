pacman::p_load('dplyr','tidyr','ggplot2')
data <- data.frame(class = c('NORMAL', 'PNEUMONIA'),
                   train = c(1176, 3610),
                   validation = c(173, 373),
                   test = c(234, 390))

data %>% 
  gather(key = 'key', 'value', 2:4) %>% 
  ggplot(aes(x = key, y = value, fill = class)) +
  geom_bar(position = 'fill', stat = 'identity') +
  labs(x = 'Dataset', y = 'Amount', title = 'Data Spliting', fill = 'Class') +
  theme(legend.position = 'top')
  
