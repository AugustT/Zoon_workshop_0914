## Get data for Bombus hypnormum
library(rnbn)

nbnLogin(username = 'tom_test', password = 'HelloWorld')
sp1 <- getTVKQuery(query = 'Bombus hypnorum', top = TRUE)
Bhyp <- getOccurrences(tvks = sp1$ptaxonVersionKey)

save(Bhyp, file = 'Bhyp.rdata')

## Get data for Bats
UK_bats <- c('Alcathoe bat', 'barbastelle', "Bechstein's bat", "Brandt's bat", "brown long-eared bat",
             "common pipistrelle", "Daubenton's bat", "greater horseshoe bat", "grey long-eared bat",
             "Leisler's bat", "lesser horseshoe bat", "Nathusius' pipistrelle", "Natterer's bat",
             "noctule", "serotine", "soprano pipistrelle","whiskered bat")
sp2 <- getTVKQuery(query = UK_bats, species_only = TRUE, top = TRUE)
Chiro <- getOccurrences(tvks = sp2$ptaxonVersionKey)

save(Chiro, file = 'Chiro.rdata')