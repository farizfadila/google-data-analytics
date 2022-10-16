# Conditional Statement
# return based on condition specification
if (5>3){
  print("Print ini jika 5>3 adalah TRUE")
}

x <- 53
if (x>0){
  print("x adalah bilangan positif")
}
if (x<0){
  print("x adalah bilangan negatif")
}
if (x==0){
  print("x adalah bilangan nol")
}
# if statement diatas dapat disederhanakan seperti berikut
if (x>0){
  print("Bilangan tersebut adalah bilangan positif")
} else if (x<0){
  print("Bilangan tersebut adalah bilangan negatif")
} else {
  "Bilangan tersebut adalah bilagnan nol"
}