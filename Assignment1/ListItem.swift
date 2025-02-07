//
//  ListItem.swift
//  Assignment1
//
//  Created by Nicholl Unvericht on 3/6/24.
//  defines the Emoji ListItem added to List

import SwiftUI

struct ListItem: View {
    @State var counter = 0
    var text: String

    var body: some View {
        HStack {
            Text(text)
            Text("Counter: \(counter)")
            Spacer()
            
            // + button attributes
            Button("+") {
                counter += 1
            }
            .font(.title)
            .frame(maxWidth: 50)
            .buttonStyle(BorderlessButtonStyle())
            .border(Color.green)
            .foregroundColor(.green)
            
            // - button attributes
            Button("-") {
                counter -= 1
            }
            .font(.title)
            .frame(maxWidth: 50)
            .buttonStyle(BorderlessButtonStyle())
            .border(Color.red)
            .foregroundColor(.red)
        }
        .padding()
    }
}

struct ListItem_Previews: PreviewProvider {static var previews: some View {
    ListItem(text: "🦕")
    }
}
