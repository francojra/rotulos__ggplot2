
# Adicionando rótulos ao gráfico -----------------------------------------------------------------------------------------------------------

## Baixar pacote

library(dados)
library(tidyverse)
library(ggrepel)

## Carregar dados

view(dados::mtcarros)

## Selecionar as 30 primeiras linhas

dados = head(mtcarros, 30)
view(dados)
 
## Criar gráfico com geom_text(), geom_label() e geom_text_repel()

ggplot(dados, aes(x = peso, y = milhas_por_galao)) +
  geom_point() + # Show dots
  geom_text(
    label = rownames(dados), 
    nudge_x = 0.25, nudge_y = 0.25, 
    check_overlap = T
  ) 

ggplot(dados, aes(x = peso, y = milhas_por_galao)) +
  geom_point() + # Show dots
  geom_text_repel(
    label = rownames(dados), 
    nudge_x = 0.25, nudge_y = 0.25,
    max.overlaps = 30
  ) 

ggplot(dados, aes(x = peso, y = milhas_por_galao)) +
  geom_point() + # Show dots
  geom_label(
    label = rownames(dados), 
    nudge_x = 0.25, nudge_y = 0.25, 
    check_overlap = T
  ) 
  
ggplot(dados, aes(x = peso, y = milhas_por_galao)) +
  geom_point() + # Show dots
  geom_label_repel(
    label = rownames(dados), 
    nudge_x = 0.25, nudge_y = 0.25,
    max.overlaps = 50, segment.colour = "gray",
    fill = "lightblue"
  ) 
