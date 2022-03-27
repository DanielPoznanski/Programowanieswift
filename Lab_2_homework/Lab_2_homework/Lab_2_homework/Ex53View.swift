//
//  Ex53View.swift
//  Lab_2_homework
//
//  Created by Przemyslaw Sipta on 22/03/2022.
//

import SwiftUI

struct Ex53View: View {
    var body: some View {
        VStack() {
            Text("Pierwsze ćwiczenie")
            ZStack() {
                Circle()
                    .foregroundColor(Color.orange)
                    .frame(width: 200, height: 200)
                Text("1")
                    .font(.system(size: 50, weight: .bold))
            }
            NavigationLink(
                destination: SecondView(),
                label: {
                    Text("Go to second view")
                }
            )
        }
    }
}

struct SecondView: View {
    var body: some View {
        VStack() {
            ZStack() {
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width: 200, height: 200)
                Text("2")
                    .font(.system(size: 50, weight: .bold))
            }
            NavigationLink(
                destination: ThirdView(),
                label: {
                    Text("Go to third view")
                }
            )
        }
    }
}

struct ThirdView: View {
    var body: some View {
        ZStack() {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color.green)
                .frame(width: 200, height: 200)
            Text("3")
                .font(.system(size: 50, weight: .bold))
        }
    }
}

struct Ex53View_Previews: PreviewProvider {
    static var previews: some View {
        Ex53View()
    }
}
