import Foundation

/*    zad 1
var a,s : Int
s=0
for _ in 1...5{
    a = Int.random(in: 1..<1000)
    s+=a
    print("wygenerowana liczba: ", a)
}

print("suma elementow: ", s)
print("srednia elementow: ", s/5)
 */

/*
  //zad 2.1
  var str: String = String(readLine()!)
    var val: Int?
    val = Int (str)

    let b = 2022
    var c = b - val!

print("Masz ", c , "lat")
*/
/*
//zad  2.2 
var pi, obw, pole : Double
let r = Double(readLine()!)


pi = 3.14
obw = 2*pi*r!
pole = pi*r!*r!

let rounded1 = String(format: "%.2lf", obw)
let rounded2 = String(format: "%.2lf", pole)


print("obwod kola: ",rounded1 , " pole kola: ", rounded2)
*/

/*   //zad 2.3
var a,s : Int
s=0
for _ in 1...3{
    a = Int.random(in: 1..<10)
    s+=a;
    print("wygenerowana liczba: ", a)
}
var b: Double?
b = Double (s)
print("srednia elementow: ", b!/3.0)
 */
 /*
  //  zad 3.1
let str1 = "Ala ma kota"
let str2 = """
    Kot ma
    Ale
 """

print(str1)
print(str2)
 
*/
 /*
//  zad 3.2
let imie = String(readLine()!)
let imie2 = String(readLine()!)
let nazwisko = String(readLine()!)
let rok = String(readLine()!)

var val : Int?
val = Int(rok)
let wiek = 2022 - val!


let str1 = imie+" "+imie2+" "+nazwisko+" "+rok
print(str1)

let str2 = str1.replacingOccurrences(of: imie2, with: "")

print(str2)

let str3 = str2.replacingOccurrences(of: rok, with: "")+String(wiek)

print(str3)


if imie[imie.startIndex] == "D" || imie[imie.startIndex] == "d"{
    print(imie, "zaczyna sie na litere D")
}
else
{
print(imie, "NIE zaczyna sie na litere D")
}

*/


/*   zad 3.3

let ciag:String = String(readLine()!)
let znak:Character = Character(readLine()!)
//let ciag = String(readLine()!)
let ostatnia = ciag.index(before: ciag.endIndex)
var miejsce = Int(readLine()!)
var szukany = ciag.index(ciag.startIndex, offsetBy: miejsce!-1)
var szukany2 = ciag.index(ciag.endIndex, offsetBy: -miejsce!)

if ciag[ciag.startIndex] == znak{
                                 print ( " Litera jest na poczatku ")
}
if ciag[ostatnia]==znak{
                        print ("Litera jest na koncu")
}
if ciag[szukany] == znak {
                                             print ("znak znajduje sie na podanym miejscu od poczatku")
}
if ciag[szukany2] == znak {
                                             print ("znak znajduje sie na podanym miejscu od konca")
}
else {
      print("Podany znak nie spelnia warunkow zadania")
}

*/
/*
//zad 3.4
let str1 = String(readLine()!)
let str2 = String(readLine()!)
if str1 == str2
{
    print("sa identyczne")
}
else{
     print("nie sa identyczne")
}
print("prosze podac prefiks")
let str3 = String(readLine()!)

if str1.hasPrefix(str3)
{
print("Ciąg: \(str1) zawiera prefiks \(str3)" )
}


print("prosze podac sufiks")
let str4 = String(readLine()!)

if str1.hasPrefix(str4) {
print("Ciąg: \(str1) zawiera prefix \(str4)" )
}
if str1.hasSuffix(str4) {
print("Ciąg: \(str1) zawiera suffix \(str4)" )
}
*/