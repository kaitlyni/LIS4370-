#test if generic functions apply
print(iris)
summary(iris)

#test for s3 or s4
is.object(iris)
isS4(iris)

#Determining type
class(iris)
str(iris)

#Example of S3:
library(pryr)

pet <- function(petName = "Unknown", petSpecies = "Unknown", petAge = "Unknown") {
  me <- list(name = petName, species = petSpecies, age = petAge)
  attr(me, "class") = "Pet"
  return(me)
}

bucket <- pet()
bucket
bucket$name
otype(bucket)

Everest <- pet(petName = "Everest", petSpecies = "Cat", petAge = 1)
Everest
Everest$species
otype(Everest)


#Example of S4:
pet2 <- setClass(
  "pet2",
  slots = list(name = "character", species = "character", age = "numeric"),
  prototype = list(name = "Unknown", species = "Unknown", age = 0),
  validity = function(object) {
    if(object@name == "" || object@species == "" || object@age < 0) {
      return("Invalid input")
    } else {
      return(TRUE)
    }
  }
)

ari <- pet2()
ari
ari@age
otype(ari)

Pudding <- pet2(name = "Pudding", species = "Cat", age = 8)
Pudding
Pudding@name
otype(Pudding)
