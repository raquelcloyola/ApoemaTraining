
nome <- c("Rafael", "Marcos", "Maria", "Elaine", "Raquel", "Bruna", "Andreia", "Mariana", "Amanda", 
          "Juliana", "Adriana", "Paulo")

tipo <- c("aluguel", "venda")

myData <- data.frame(ID = 1:1000, 
                     nome = sample(nome, 1000, replace = TRUE),
                     idade = as.integer(runif(1000,18,60)),
                     mes = sample(month.name, 1000, replace=TRUE),
                     tipo = sample(tipo, 1000, replace = TRUE),
                     preco = runif(1000, 50, 5000),
                     stringsAsFactors = FALSE)

mediatipo <- tapply(myData$preco, myData$tipo, mean)
somanome <- tapply(myData$preco, myData$nome, sum)

tipotrans <- split(myData$preco, myData$tipo)

myData
mediatipo
somanome
tipotrans

barplot(myData$preco, myData$idade)

hist(myData$preco)

write.csv(x = myData, file = "myData.csv")
myData <- read.csv( file = "myData.csv")



