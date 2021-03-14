//
//  ContentView.swift
//  Ionogram
//
//  Created by Shogo Nobuhara on 2021/03/13.
//

import SwiftUI

struct ContentView: View {
    
    // トグルが開いているかどうか
    @State private var showDetail = false
    
   
    
    var body: some View {
        
        VStack {
            VStack {
                URLImage(url: "https://wdc.nict.go.jp/ionog/ionogram/nowpng/png/allsite.png")
                    .aspectRatio(contentMode: .fit)
            }
            
            HStack {
                Spacer()
                ReloadImageView()
                    .padding(10)
            }
            .padding()
            Spacer()
            // 質問のテキストを表示
            QuestionView()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



