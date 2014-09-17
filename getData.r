## Get data for Bombus hypnormum
library(rnbn)

nbnLogin(username = 'tom_test', password = 'HelloWorld')
sp <- getTVKQuery(query = 'Bombus hypnorum', top = TRUE)
Bhyp <- getOccurrences(tvks = sp$ptaxonVersionKey)

str(Bhyp)

save(Bhyp, file = 'Bhyp.rdata')

