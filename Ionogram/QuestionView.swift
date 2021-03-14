//
//  QuestionView.swift
//  Ionogram
//
//  Created by Shogo Nobuhara on 2021/03/15.
//

import SwiftUI

struct QuestionView: View {
    
    @State private var showAnswer = false
    
    var body: some View {
        
        VStack {
            HStack {
                Text("イオノグラムとは何ですか？")
                .padding(1)
                
                Spacer()
                
                
                Button(action: {
                    withAnimation {
                        self.showAnswer.toggle()
                    }
                }) {
                    VStack {
                        Image(systemName: "chevron.right.circle")
                            .imageScale(.large)
                            .rotationEffect(.degrees(showAnswer ? 90 : 0))
                            .padding()
                    }
                }
            }
            Divider()
            
            if(showAnswer == true) {
                
                HStack {
                    Text("イオノゾンデによって取得される電離層の一次観測データをイオノグラムと呼びます。")
                        .padding(.top,1)
                    Spacer()
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
