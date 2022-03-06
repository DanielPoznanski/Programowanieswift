//
//  ContentView.swift
//  Lab1
//
//  Created by student on 06/03/2022.
//  Copyright © 2022 PL. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var tab: [String] = ["Poniedzialek","Wtorek","Sroda","Czwartek","Piatek","Sobota","Niedziela"]
    
    @State var dzien: String = ""
    @State var dzienwybor: String = ""
    var body: some View {
        VStack(alignment: .center){
            Text("Podaj wybrany dzien tygodnia:")
                .foregroundColor(Color.purple)
                .rotation3DEffect(Angle(degrees: 45), axis: (x: 45.0, y: 0, z: 0));
        
        TextField("Wpisz dzien tygodnia", text:$dzien)
            .multilineTextAlignment(.center)
            Button(action:
                {
                    if self.tab.contains(self.dzien){
                    self.dzienwybor=self.dzien
                        }
                        else{
                        self.dzienwybor="Blad"
                    
            }
    },
                   label:{
                    Text("Zatwierdzasz wybor")
                        .foregroundColor(Color.gray)
                        .background(/*@START_MENU_TOKEN@*/Color.yellow/*@END_MENU_TOKEN@*/)})
        Text("Wybrano: \(dzienwybor)");
            }.padding()
        
    }
    }

/*
struct ContentView: View {
    var tablica_kolorow = [Color.red,Color.pink,Color.blue,Color.black,Color.white,Color.yellow]
    var body:some View {
        ZStack(){
        ForEach((0...5),id: \.self){
            Rectangle()
                .fill(self.tablica_kolorow[$0])
            .frame(width: 200, height: 200)
            .offset(x: CGFloat($0) * 10.0,y: CGFloat($0) * 10.0)        }
    }
    }
}
*/
/*
struct ContentView: View {
    var body:some View {
        ZStack(alignment:.bottomLeading){
            Image("pies")
            HStack(){
                VStack()
                {
                    Text("Nazwa: Piesek").fontWeight(.bold)
                    Text("Autor : Nieznany").frame(width:600)
            }
            }.background(Color.blue).opacity(0.5)
    }
}
}
*/
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

