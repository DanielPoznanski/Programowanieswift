//
//  Ex81View.swift
//  Lab_2_homework
//
//  Created by Przemyslaw Sipta on 23/03/2022.
//

import SwiftUI

struct Event: Identifiable {
    var id = UUID()
    var name: String
    var duration: Double
}

struct Ex92View: View {
    @State private var items = [
        Event(name: "Event 1", duration: 0),
        Event(name: "Event 2", duration: 0),
        Event(name: "Event 3", duration: 0),
    ];
    var body: some View {
        VStack() {
            List{
                ForEach(items.indices, id:\.self) {i in
                    ListItem(eventName: self.$items[i].name)
                        .swipeActions(edge: .leading) {
                                      Button {
                                        deleteItem(offset: i)
                                      } label: {
                                        Label("Bookmark", systemImage: "trash")
                                      }.tint(.red)
                        }
                        .listRowInsets(EdgeInsets())
                        .frame(height: 50)
//                        .gesture(
//                            DragGesture()
//                                .onEnded { value in
//                                    print("HELLO")
//                                    if(value.translation.width > 25) {
//                                        deleteItem(offset: i)
//                                    }
//                                }
//                            )
                }
            }
            .listRowSeparator(.hidden)
        }
    }
    
    private func deleteItem(offset: Int) {
        let newItems = items.filter(){$0.name != items[offset].name}
        print(items, newItems)
        self.items = newItems
    }
}

struct ListItem: View {
    @Binding var eventName: String;
   
    var body: some View {
        VStack() {
            Text(String(self.eventName))
        }
        .frame(height: 50)
        .padding([.top, .leading, .bottom], 10.0)
        .background(Color.white)
    }
}


struct Ex92View_Previews: PreviewProvider {
    static var previews: some View {
        Ex92View()
    }
}
