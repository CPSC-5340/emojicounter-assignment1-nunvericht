//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.
// modified by nju0004


import SwiftUI

let emojis = ["🤣", "😜", "😀", "🤩", "😂", "🦕", "🐉"]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(emojis, id: \.self) {
                    item in ListItem(text: item)
                }
            }
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
