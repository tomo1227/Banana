//
//  HomeView.swift
//  Banana
//
//  Created by Tomoki Ota on 2023/03/31.
//

import SwiftUI

struct HomeView: View {
    @State var isShowAboutView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: MinionView().navigationBarTitle("ミニオン")) {
                    Text("ミニオン")
                }
                NavigationLink(destination: DiceView().navigationBarTitle("サイコロゲーム")) {
                    Text("サイコロゲーム")
                }.padding()
                NavigationLink(destination: ContentView().navigationBarTitle("Tax Calculator")) {
                    Text("Tax Calculator")
                }
                Button {
                    isShowAboutView = true
                } label: {
                    Text("About")
                        .padding()
                }
                .sheet(isPresented: $isShowAboutView) {
                    AboutView()
                }
            }
            .padding()
            .navigationBarTitle("HOME", displayMode: .inline)
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
