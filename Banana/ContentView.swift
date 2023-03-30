//
//  ContentView.swift
//  Banana
//
//  Created by Tomoki Ota on 2023/03/31.
//

import SwiftUI

struct ContentView: View {
    @State var str = "Hello, world!"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(str)
            Button("ボタン") {
                str = "Hello Banana!"
                print("ボタンが押されたよ")
            }
            .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
