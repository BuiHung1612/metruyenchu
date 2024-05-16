//
//  RemoteImage.swift
//  metruyenchu
//
//  Created by Hung Bui on 15/05/2024.
//

import SwiftUI

struct RemoteImage: View {
    let imageUrl: String
    let width: CGFloat?
    let height: CGFloat?
    let blurRadius:CGFloat
    let borderRadius: CGFloat
    
    init(imageUrl: String, width: CGFloat?, height: CGFloat?, blurRadius: CGFloat = 0, borderRadius: CGFloat = 8) {
           self.imageUrl = imageUrl
           self.width = width ?? 110
           self.height = height ?? 150
           self.blurRadius = blurRadius
           self.borderRadius = borderRadius
       }
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { Image in
            Image.resizable()
                .frame(width: width,height: height)
                .clipShape(.rect(cornerRadius: borderRadius))
                .blur(radius: blurRadius)
                .scaledToFill()
            
        } placeholder: {
            VStack{
                ProgressView()
            }
            .frame(width: 110,height: 150)
            .clipShape(.rect(cornerRadius: 8))
        }
        .fixedSize()
    }
}

#Preview {
    RemoteImage(imageUrl: "https://static.cdnno.com/poster/ai-bao-han-tu-tien/300.jpg?1677860647", width: 110,height: 150)
}
