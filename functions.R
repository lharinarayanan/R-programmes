# demonstration of functions in R
# Syntax
# output_var<-function(args){}
abc<-function(x){
  x^2
}
abc(4)
abc(5)
# Default param for y two variables paassed
age<-function(x,y=10){
  x^2+y^2
}
age(20)
age(20,5)
ag<-function(){
  4
}
ag()
abc<-function(x){
  sin(x)^2+cos(x)^2+x
}
abc(8)
abc(7)
