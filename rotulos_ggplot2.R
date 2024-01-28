
# Adicionando rótulos ao gráfico -----------------------------------------------------------------------------------------------------------


# Adicionado texto com geom_text() ---------------------------------------------------------------------------------------------------------

## Baixar pacote

library(dados)
library(tidyverse)

## Carregar dados

view(dados::mtcarros)

## Selecionar as 30 primeiras linhas

dados = head(mtcarros, 30)
view(dados)
 
# 1/ add text with geom_text, use nudge to nudge the text
ggplot(data, aes(x=wt, y=mpg)) +
  geom_point() + # Show dots
  geom_text(
    label=rownames(data), 
    nudge_x = 0.25, nudge_y = 0.25, 
    check_overlap = T
  )