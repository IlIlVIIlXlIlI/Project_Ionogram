//
//  ReloadImage.swift
//  Ionogram
//
//  Created by Shogo Nobuhara on 2021/03/15.
//

import SwiftUI

struct ReloadImageView: View {
    
    // 画像の更新
    @State private var reload = false
    
    var body: some View {
        Button(action: {
            self.reload.toggle()
        }) {
    
    
            VStack {
                Image(systemName: "arrow.clockwise")
                    .imageScale(.large)
                    .padding()
            }
        }
    }
}

struct ReloadImageView_Previews: PreviewProvider {
    static var previews: some View {
        ReloadImageView()
    }
}
