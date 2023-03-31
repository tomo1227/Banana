//
//  ThirdView.swift
//  Banana
//
//  Created by Tomoki Ota on 2023/03/31.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            Color(.yellow)
                .edgesIgnoringSafeArea(.all)
            if let url = URL(string: "https://twitter.com/tomomon1227") {
                Link("Twitter", destination: url)
            }
        }
    }
}
struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
