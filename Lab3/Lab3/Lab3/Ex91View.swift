//
//  Ex91View.swift
//  Lab3
//
//  Created by Przemyslaw Sipta on 26/03/2022.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var name: String
    var image: Image
}

var listItems = [
    Item(name: "Happy birthday", image: Image("photo-1")),
    Item(name: "Tort nr.1", image: Image("photo-2")),
    Item(name: "Tort nr.2", image: Image("photo-3")),
    Item(name: "Kraina lodu", image: Image("photo-4"))
]

struct Ex91View: View {
    var body: some View {
        ZStack() {
            Text("Brak zdjęć")
            ForEach(listItems) { item in
                ImageItem(image: item.image, name: item.name)
            }
        }
    }
}

struct ImageItem: View {
    @State var offsetValue: CGFloat = .zero
    @GestureState var showLabel: Bool = false
    var image: Image
    var name: String
    var body: some View {
        ZStack(alignment: .bottom) {
            if(showLabel) {
                VStack() {
                    Text(name)
                        .foregroundColor(Color.white)
                }.frame(width: 350, height: 50)
                    .background(Color(hue: 1.0, saturation: 1.0, brightness: 0.001, opacity: 0.559))
                    .zIndex(2)
            }
            image
                 .resizable()
                 .frame(width: 350, height: 350)
                 .background(Color.blue)
                 .gesture(LongPressGesture()
                            .updating($showLabel) { value, state, transition in
                                state = value
                            }
                 )
        }
        .frame(width: 350, height: 350)
        .background(Color.blue)
        .offset(x: offsetValue)
        .gesture(
            DragGesture()
                .onChanged { value in
                    if(value.translation.width < 0) {
                        offsetValue = value.translation.width
                    }
                }
                .onEnded { value in
                    if(offsetValue < -200) {
                        withAnimation(.spring()) {
                            offsetValue = -600
                        }
                    }
                    else {
                        withAnimation(.spring()) {
                            offsetValue = .zero
                        }
                    }
                    
                }
        )
    }
}

struct Ex91View_Previews: PreviewProvider {
    static var previews: some View {
        Ex91View()
    }
}
