//
//  URLImage.swift
//  Ionogram
//
//  Created by Shogo Nobuhara on 2021/03/14.
//

import SwiftUI

struct URLImage: View {

    let url: String
    @ObservedObject private var imageDownloader = ImageDownloader()

    init(url: String) {
        self.url = url
        self.imageDownloader.downloadImage(url: self.url)
    }

    var body: some View {
        if let imageData = self.imageDownloader.downloadData {
            let img = UIImage(data: imageData)
            return VStack {
                Image(uiImage: img!).resizable()
            }
        } else {
            return VStack {
                Image(uiImage: UIImage(systemName: "network")!)
                    .resizable()
                    
            }
        }
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(url: "https://wdc.nict.go.jp/ionog/ionogram/nowpng/png/allsite.png")
            .aspectRatio(contentMode: .fit)
    }
}
