
##La funcion roll simula el lanzmaiento de 2 dados y provee la suma
roll<-function(){
  die<-1:6
  dice<-sample(die,size = 2,replace = TRUE)
  sum(dice)}
rolls<-replicate(10000,roll())  
qplot(rolls,binwidth=1)
roll()
##La funcion Skewd_roll simula un dado viciado
skewd_roll<-function(){
  die<-1:6
  dice<-sample(die,size = 2,replace = TRUE, prob = c(1/8,1/8,1/8,1/8,1/8,3/8))
  sum(dice)}
roll()
rolls
rolls<-replicate(10000,skewd_roll())  
qplot(rolls,binwidth=1)