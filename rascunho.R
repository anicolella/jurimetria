```{r, eval=F, echo=FALSE}
library(ggplot2)
p<-ggplot(final_fem_22, aes(y=feminic_tx)) +
  geom_boxplot(fill='steelblue')  +
  coord_flip()
p+labs(title="Tx Feminicídio por 100 mil no Brasil 2022",
       x ="", y = "Tx Feminicídio")

