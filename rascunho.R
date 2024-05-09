```{r, eval=F, echo=FALSE}
library(ggplot2)
p<-ggplot(final_fem_22, aes(y=feminic_tx)) +
  geom_boxplot(fill='steelblue')  +
  coord_flip()
p+labs(title="Tx Feminicídio por 100 mil no Brasil 2022",
       x ="", y = "Tx Feminicídio")

library(sm)
sm.density.compare(final_fem_22$feminic_tx, final_fem_22$N_NE_CO, xlab="Taxa de Feminicídio", lwd=c(3, 3),col=c('darkgreen', 'darkblue'))
title(main="Comparação da taxa de feminicídio entre regiôes")

legend("topright", c("N NE CO", "S SD"), xpd = TRUE, horiz = FALSE , bty = "n",  col=c('darkgreen', 'darkblue'), lwd=c(4, 4), cex = 0.6)
