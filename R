highcorr<-function(x,limit=0.4,typ ="B",Variable1="All") 
{
 
 data <- x[, sapply(x, class)%in% "numeric"]
 
 corr <- cor(data)
 
 corr [lower.tri(corr, diag = TRUE)] <- 0
 
 highcor  <- as.data.frame(as.table(corr))
 
 highcor  <- highcor[order(-abs(highcor$Freq)),]

 ifelse(typ=="B", highcor <- subset(highcor,abs(highcor$Freq) > limit)
                , ifelse(typ=="P", highcor  <- subset(highcor, highcor$Freq > limit)
                                 , highcor  <- subset(highcor,(-highcor$Freq) > limit)
                        )
       )
 rownames(highcor) <- NULL           
 names(highcor)<-c("Var1", "Var2", "Correlation")
 
 ifelse(Variable1=="All",return(highcor),return(subset(highcor,highcor$Var1==Variable1)))

}
highcorr(iris)
