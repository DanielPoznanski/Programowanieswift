//
//  ContentView.swift
//  Lab_2_homework
//
//  Created by Przemyslaw Sipta on 22/03/2022.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack() {
                Text("Laboratorium 3")
                    .font(.title)
                VStack() {
                    NavigationLink(
                        destination: Ex91View(),
                        label: {
                            Text("Zadanie 9.1")
                        }
                    ).withMenuButtonStyles()
                    NavigationLink(
                        destination: Ex92View(),
                        label: {
                            Text("Zadanie 9.2")
                        }
                    ).withMenuButtonStyles()
                    NavigationLink(
                        destination: Ex101View(),
                        label: {
                            Text("Zadanie 10.1")
                        }
                    ).withMenuButtonStyles()
                }.frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            }
            .frame(width: .infinity, height: .infinity, alignment: .leading)
        }
    }
}

extension NavigationLink {
    func withMenuButtonStyles() -> some View {
        self.padding(10.0)
            .foregroundColor(.black)
            .overlay(
                RoundedRectangle(
                    cornerRadius: 10
                )
                .stroke(
                    Color.blue,
                    lineWidth:1)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
