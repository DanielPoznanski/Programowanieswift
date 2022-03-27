//
//  ContentView.swift
//  Lab3 zad1
//
//  Created by student on 27/03/2022.
//  Copyright © 2022 PL. All rights reserved.
//
/*
import SwiftUI

struct ContentView: View {
    @State var show = false;
    @State var scaleImg: CGFloat = 1.0
    @State var i = 0;
    var body: some View {
        let table = ["p1", "p2", "p3"]
        let label = ["p1", "p2", "p3"]
        
        return VStack{
            Image(table[i]).onTapGesture{
                self.i += 1;
                self.show = false;
                if(self.i == 3)
                { self.i = 0 }
            }
            .onLongPressGesture(minimumDuration: 0.1){
                self.show = !self.show
            }
            if(self.show) {
                Text(label[i])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

 */
//zad2

import SwiftUI
struct Car{
    let auto: String
}
struct CarView: View {
    var carInfo: Car
    var body: some View {
        ZStack {
            Text("Szczegoly Samochodu").font(.system(size: 125, weight: .bold))
            Text ("\(carInfo.auto)")
        }
        
    }
}
struct ContentView: View{
    @State var cars =
        [Car(auto: "Auto1"),
         Car(auto: "Auto2"),
         Car(auto: "Auto3")]
    
    var body: some View{
        VStack {
            NavigationView{
                List{
                    ForEach(cars, id: \.auto) { car in
                        Text(car.auto)
                    }.onDelete(perform: delete)
                }
            }
        }
    }
    func delete(at offsets: IndexSet){
        cars.remove(atOffsets: offsets)}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//zad3
/*
import SwiftUI

struct ContentView: View {@GestureState var isLongPress = false
    
    var body:some View{
        let tekst = "TEKST"
        let  longPress = LongPressGesture().updating($isLongPress){
            value,state,trransaction in state = value}
        
        return Text(tekst)
            .foregroundColor(isLongPress ? Color.red : Color.green)
                .gesture(longPress)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//zad4

import SwiftUI

struct ContentView: View {
    @State private var location: CGPoint = CGPoint(x: 50, y: 50)
    
    var simpleDrag: some Gesture {
        DragGesture()
            .onChanged { value in
                self.location = value.location
        }
    }
    
    var body: some View{
        VStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.black)
                .frame(width: 350, height: 400)
                .position(location)
                .gesture(simpleDrag)
        }
    }
}

*/
