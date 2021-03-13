//
//  ContentView.swift
//  Ionogram
//
//  Created by Shogo Nobuhara on 2021/03/13.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            URLImage(url: "https://wdc.nict.go.jp/ionog/ionogram/nowpng/png/allsite.png")
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
