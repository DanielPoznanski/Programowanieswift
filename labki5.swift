 import Foundation
/*
// zad 5.1
var a = 1
print ("Polecenie 1")
repeat{
print(a)
 a+=1
}while a <= 25

print ("Polecenie 2")
var b = 1
while b <= 25{
 print(b)
b+=1
}
print ("Polecenie 3")
for i in stride(from: 1, to: 25, by: 3){
print(i)
}
*/

/*
//zad 5.2
print("Podaj maksymalna liczbe")
let licz = Int(readLine()!)
var x = 0
var y = 1
while y <= licz!{
 print(y)
y+=x
x = y-x
}
*/

/*
//zad 5.3
let liczba = Int(readLine()!)

for i in 2...liczba!-1 {
    
    if(liczba!%i == 0 || liczba!<2){
        print("liczba nie jest pierwsza")
        break
    }
    if(i == liczba!-1){
        print("liczb jest pierwsza")
    }
}
*/
//zad 5.4
/*
print ("Podaj liczbe 3cyfrowa")
let liczba = Int(readLine()!)
if (liczba! < 100 || liczba! > 999){
      print ("To nie jest liczba 3 cyfrowa")
}
else{
     


let j = liczba!%10
let d = liczba!/10%10
let s = liczba!/100%10
  let suma = Double(j + d + s)

let srednia = Double( suma / 3 )
  print ("Srednia cyfr podanej liczby to", srednia)
}
*/
/*
//zad 5.5
print ("Podaj wyraz do sprawdzenia")
let str1 = String(readLine()!)
let str = str1.lowercased()
let wynik = str == String (str.reversed())

if(wynik){
    print(str1," jest palindromem")
}
else{
    print(str1, "nie jest palindromem")
}
*/
