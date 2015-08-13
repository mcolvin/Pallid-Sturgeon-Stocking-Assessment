

# DROP V1
sims<- sims[,V1:=NULL]
# ONLY LOOK AT YEARS 1 TO 50
sims<- subset(sims, year<=50)

# COMPILE UP INPUTS INTO SOMETHING MORE USEFUL
inputs<- lapply(1:length(inputs),function(x)
	{
	y<- inputs[[x]][-c(grep("rng",names(inputs[[x]])))]
	y<- y[-c(grep("cv",names(y)))]
	return(y)
	})
inputs<-rbindlist(inputs)


