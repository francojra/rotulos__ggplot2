
# Adicionando rótulos ao gráfico ggplot2 -----------------------------------------------------------------------------------------------------------

## Baixar pacote

library(dados)
library(ggplot2)
library(ggrepel)

## Carregar dados

view(dados::mtcarros)

## Selecionar as 30 primeiras linhas

dados = head(mtcarros, 30)
view(dados)
 
## Criar gráfico com geom_text(), geom_label() e geom_text_repel()

ggplot(dados, aes(x = peso, y = milhas_por_galao)) +
  geom_point() + 
  geom_text(
    label = rownames(dados), 
    nudge_x = 0.25, nudge_y = 0.25, 
    check_overlap = T
  ) 

ggplot(dados, aes(x = peso, y = milhas_por_galao)) +
  geom_point() + 
  geom_text_repel(
    label = rownames(dados), 
    nudge_x = 0.25, nudge_y = 0.25,
    max.overlaps = 30
  ) 

ggplot(dados, aes(x = peso, y = milhas_por_galao)) +
  geom_point() +
  geom_label(
    label = rownames(dados), 
    nudge_x = 0.25, nudge_y = 0.25, 
    check_overlap = T
  ) 
  
ggplot(dados, aes(x = peso, y = milhas_por_galao)) +
  geom_point() +
  geom_label_repel(
    label = rownames(dados), 
    nudge_x = 0.25, nudge_y = 0.25,
    max.overlaps = 50, segment.colour = "gray",
    fill = "lightblue"
  ) +
  labs(x = "Peso", y = "Milhas por galão") +
  theme_minimal() +
  theme(text = element_text(size = 12, color = "black"),
        title = element_text(size = 13))

## Adicionando texto uma única informação

ggplot(dados, aes(x = peso, y = milhas_por_galao)) +
  geom_point() + 
  geom_label(
    label = "R² = - 0,65", 
    x = 4.7,
    y = 32,
    label.size = 0.35,
    color = "black",
    fill = "#69b3a2",
    fontface = "bold"
  )
