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
//zad 6.3 
var tab3:[Int] = []
print("Podaj ilosc elementow tablicy")
var tabSize2 = Int(readLine()!)!
tabSize2 = tabSize2-1
for i in 0...tabSize2{
print("Podaj element tablicy: ")
let newVal = Int(readLine()!)!
tab3.insert(newVal, at: i)
}
var poz = 0
var dl = 1
var dlMax = 0
for i in 0...tabSize2-1 {
if(tab3[i] < tab3[i + 1])
{
dl += 1
} else {
if(dl > dlMax)
{
dlMax = dl
poz = i - dl + 1
}
dl = 1
}
}
if(dl > dlMax) {
dlMax = dl
poz = tabSize2 - dl + 1
}
print("Dlugosc ciagu: ", dlMax)
print("Pozycja ciagu: ", poz)
var ok = true
for i in 0...tabSize2-1 {
if(tab3[i] < tab3[i+1]) {
ok = false
}
}
if(ok) {
print("Elementy tworza ciag malejacy")
} else {
print("Elementy nie tworza ciagu malejacego")
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
/*
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
  print("Odejmowanie",wynik.rzeczywista,"+", wynik.urojona,"i")
}
func mnozenie(L1:liczbaZespolona,L2:liczbaZespolona){
    var wynik = liczbaZespolona(rzeczywista:0, urojona:0)
    wynik.rzeczywista = L1.rzeczywista*L2.rzeczywista
    wynik.urojona = L1.urojona * L2.urojona
  print("Mnozenie",wynik.rzeczywista,"+", wynik.urojona,"i")
}
}

let w : Int = 10
while w != 0{
print("Podaj pierwsza liczbe")
let r1 = Int(readLine()!)
let u1 = Int(readLine()!)
let L1 = liczbaZespolona (rzeczywista:r1!, urojona:u1!)
  
print("Podaj druga liczbe")
let r2 = Int(readLine()!)
let u2 = Int(readLine()!)
let L2 = liczbaZespolona (rzeczywista:r2!, urojona:u2!)

print("Podaj dzialanie 1.Dodawanie, 2.Odejmowanie, 3.Mnozenie, 0.Wyjdz")

let w = Int(readLine()!)
if w==1 {L1.dodaj(L1:L1,L2:L2)}
else if w==2 {L1.odejmowanie(L1:L1,L2:L2)}
else if w==3 {L1.mnozenie(L1:L1,L2:L2)}
else if w==0 {break}
}
*/


//zadanie 9.2

struct Loty{
    var miejsce = [Int : String]()
    var cel = [Int : String]()
    var czas: Double

  init(miejsce: [Int:String], cel: [Int:String],czas:Double ) {
  self.miejsce = miejsce
  self.cel = cel
  self.czas = czas
}

func wyswietl(){
                print("""
                      Lotnisko startu: \(miejsce)
                      Lotnisko docelowe: \(cel)
                      Czas lotu : \(czas)                     
                      """)
}
}

func podajLoty()->[Loty]{
  var loty: [Loty] = []
  var nr1: Int?
  var nazwa1: String?
  var nr2: Int?
  var nazwa2: String?
  var czas: Double?

                         
  print("Podaj liczbe lotow")
  let ilosc = Int(readLine()!)
  for _ in 0..<ilosc!{
    print("Podaj nr lotniska startu")
    nr1 = Int(readLine()!)
    print("Podaj nazwe lotniska startu")
    nazwa1 = String(readLine()!)
    print("Podaj nr lotniska celu")
    nr2 = Int(readLine()!)
    print("Podaj nazwe lotniska celu")
    nazwa2 = String(readLine()!)
    print("Podaj czas lotu")
    czas = Double(readLine()!)
    loty.append(Loty(miejsce:[nr1!:nazwa1!],cel:[nr2!:nazwa2!],czas:czas!))
  }
return loty
}


func loty(){
  let loty: [Loty] = podajLoty()
  for i in loty{
                i.wyswietl()
  }
  
}

loty()
/*
//Zadanie 9.3
var samochody=Set<String>()
samochody=[]
samochody.insert("Fiat")
samochody.insert("Audi")
samochody.insert("BMW")
samochody.insert("Opel")
samochody.insert("Citroen")
if samochody.isEmpty {
print("Zbiór jest pusty")
}
else {
print(samochody)
}
var s = readLine()!
if let samochodydoUsuniecia = samochody.remove(s) {
print("Można usunąć \(samochodydoUsuniecia)")
print(samochody)
}
else {
print("Element do usunięcia nie istnieje")
}
*/ 
