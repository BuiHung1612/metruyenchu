//
//  RemoteImage.swift
//  metruyenchu
//
//  Created by Hung Bui on 15/05/2024.
//

import SwiftUI

struct RemoteImage: View {
    let imageUrl: String
    let width: CGFloat
    let height: CGFloat
    let blurRadius:CGFloat
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { Image in
            Image.resizable()
                .frame(width: width,height: height)
                .clipShape(.rect(cornerRadius: 8))
                .blur(radius: blurRadius)
                .scaledToFill()
            
        } placeholder: {
            VStack{
                ProgressView()
            }
            .frame(width: 110,height: 150)
            .clipShape(.rect(cornerRadius: 8))
        }
    }
}

#Preview {
    RemoteImage(imageUrl: "https://static.cdnno.com/poster/ai-bao-han-tu-tien/300.jpg?1677860647", width: 110,height: 150,blurRadius: 0)
}
