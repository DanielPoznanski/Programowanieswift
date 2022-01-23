import Foundation

/*
//zad 6.1
var tab: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print ("Podaj wartosc do wstawienia jako pierwszy element")
var x = Int(readLine()!)
//polecenie 1
tab[0] = x!
//polecenie 2
print("Podaj na ktorym miejscu w tablicy wpisac element")
var y = Int(readLine()!)
if (y! > 10 || y! < 0){
        tab.append(x!)
}
else{
     tab[y!-1] = x!
}
for i in tab{
             print(i)
}
*/

/*
// zad 6.2
var tab: [Int] = []
print ("Podaj ilosc elementow tablicy")
var x = Int(readLine()!)
for _ in 1...x!{
  print ("Podaj wartosc tablicy")
  let y = Int(readLine()!)
           tab.append(y!)
}
print("Podaj wartosc, ktora chcesz sprawdzic")
var num = Int(readLine()!)
if (tab[0] == num!){
print("Element \(num!) jest pierwszy w tabeli")
}
if (tab[x!-1] == num!){
print("Element \(num!) jest ostatni w tabeli")
}
else{
print("Element nie jest ani pierwszy ani ostatni")
}

tab.sort()
print ("Wartosci w tablicy")
for i in tab{
             print(i)
}

print("Najmniejsza wartosc")
print(tab[0])
print ("Najwieksza wartosc")
print(tab[x!-1])
*/
/* 
//zad 6.3 - polecenie 2 i 3 nie dziala
var tab: [Int] = []
print ("Podaj ilosc elementow tablicy")
var x = Int(readLine()!)
for _ in 1...x!{
  print ("Podaj wartosc tablicy")
  let y = Int(readLine()!)
           tab.append(y!)
}

var dlugosc : Int = 0
var max_dlugosc : Int = 0
var start : Int = 0

for i in tab{
  if(tab[i-1]<tab[i]){
                      dlugosc+=1
  
  }
  if (dlugosc >= max_dlugosc){
                                max_dlugosc = dlugosc
  }
else{
     dlugosc = 1
}
for in 0...max_dlugosc{
                       print(tab[start!+i])
}
}
*/
/*
//zad 7.1
func znajdz(liczba : Int, szukana : Int) -> Bool{
  var kolejna : Int = 0
  var liczba=liczba
  while liczba > 0 
  {
                  kolejna = liczba%10
                  if szukana == kolejna
    {
                              return true
                  }
  else{
    liczba /= 10  
    }
  }
return false 
}
while true{
print ("Podaj liczbe")
  let liczba = Int(readLine()!)
  if(liczba! == 0) {break;}
  else{
print("Podaj liczbe ktorej szukasz")
  let szukana = Int(readLine()!)
print (znajdz(liczba:liczba!,szukana:szukana!))
  }
}
*/
/*
//zad 8.1
var o1 = (imie1: "Jan", nazwisko1: "Kowalski", rok1: 1992)
var o2 = (imie2: "Adam", nazwisko2: "Nowak", rok2: 1980)

func starszy(_ n: Int,_ m: Int) -> Int 
{
      var ret : Int
      if o1.rok1 == o2.rok2
  {
      ret = 0
    }
      else if o1.rok1 > o2.rok2
  {
      ret =  1
    }
      else{
      ret =  2
      }
  return ret
}
func starszy2(_ n: Int,_ m: Int){
      if o1.rok1 == o2.rok2{
      print("\(o1.imie1) \(o1.nazwisko1) i \(o2.imie2) \(o2.nazwisko2) są w tym samym wieku")
        }
      else if o1.rok1 < o2.rok2{
      print("\(o1.imie1) \(o1.nazwisko1)  jest starszy od  \(o2.imie2) \(o2.nazwisko2)")
        }
      else{
      print("\(o2.imie2) \(o2.nazwisko2)  jest starszy od  \(o1.imie1) \(o1.nazwisko1)")
        }
} 

print(starszy2(o1.rok1,o2.rok2))

*/
// zad 9.1
struct liczbaZespolona {
var rzeczywista: Int
var urojona: Int
  
init(rzeczywista: Int, urojona: Int) {
self.rzeczywista = rzeczywista
self.urojona = urojona
}

func dodaj(L1:liczbaZespolona,L2:liczbaZespolona){
    var wynik = liczbaZespolona(rzeczywista:0, urojona:0)
    wynik.rzeczywista = L1.rzeczywista+L2.rzeczywista
    wynik.urojona = L1.urojona + L2.urojona
  print("Dodawanie",wynik.rzeczywista,"+", wynik.urojona,"i")
}
func odejmowanie(L1:liczbaZespolona,L2:liczbaZespolona){
    var wynik = liczbaZespolona(rzeczywista:0, urojona:0)
    wynik.rzeczywista = L1.rzeczywista-L2.rzeczywista
    wynik.urojona = L1.urojona - L2.urojona
  print("Odejmowanie",wynik.rzeczywista,"-", wynik.urojona,"i")
}
func mnozenie(L1:liczbaZespolona,L2:liczbaZespolona){
    var wynik = liczbaZespolona(rzeczywista:0, urojona:0)
    wynik.rzeczywista = L1.rzeczywista*L2.rzeczywista
    wynik.urojona = L1.urojona * L2.urojona
  print("Mnozenie",wynik.rzeczywista,"*", wynik.urojona,"i")
}
}

var w : Int = 10
while w != 0{
print("Podaj pierwsza liczbe")
var r1 = Int(readLine()!)
var u1 = Int(readLine()!)
var L1 = liczbaZespolona (rzeczywista:r1!, urojona:u1!)
  
print("Podaj druga liczbe")
var r2 = Int(readLine()!)
var u2 = Int(readLine()!)
var L2 = liczbaZespolona (rzeczywista:r2!, urojona:u2!)

print("Podaj dzialanie 1.Dodawanie, 2.Odejmowanie, 3.Mnozenie, 0.Wyjdz")

var w = Int(readLine()!)
if w==1 {L1.dodaj(L1:L1,L2:L2)}
else if w==2 {L1.odejmowanie(L1:L1,L2:L2)}
else if w==3 {L1.mnozenie(L1:L1,L2:L2)}
else if w==0 {break}
}
