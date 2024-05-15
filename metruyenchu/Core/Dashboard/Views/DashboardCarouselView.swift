//
//  DashboardCarouselView.swift
//  metruyenchu
//
//  Created by HungBui on 10/05/2024.
//

import SwiftUI

struct DashboardCarouselView: View {
    @State private var selectedImageIndex = 0
    private let timer = Timer.publish(every: 6, on: .main, in: .common).autoconnect()

    private let images: [String] = ["https://static.cdnno.com/storage/topbox/630560d39c4872b74b7091613e77de32.webp","https://static.cdnno.com/storage/topbox/d65a012961472012273fcd486d20dcd2.webp","https://static.cdnno.com/storage/topbox/1ab75445df46b0de50399545960b9d64.webp","https://static.cdnno.com/storage/topbox/6a4bd0b6ee9b48c719d8358a94080958.webp","https://static.cdnno.com/storage/topbox/add6ddfbf4c35578adb804d9b3d16dca.webp"]
    
    var body: some View {
        VStack{
            HStack{
                
                TabView(selection: $selectedImageIndex) {
                    ForEach(images.indices, id: \.self){index in
                        AsyncImage(url: URL(string: images[index]))
                        { image in
                            image.resizable()
                        } placeholder: {
                            
                        }
                        .clipShape(.rect(cornerRadius: 14))
                        .padding(.horizontal)
                        
                            
                    }
                    
                }
                .onReceive(timer, perform: { _ in
                  
                    if selectedImageIndex < images.count-1 {
                        withAnimation(.spring(duration: 2)){
                            selectedImageIndex += 1
                        }
                    }
                    
                    else if selectedImageIndex == images.count - 1{
                        withAnimation(.spring(duration: 2)){
                            selectedImageIndex = 0
                        }
                    }
                })
                .frame(height: 200)
                .tabViewStyle(.page(indexDisplayMode: .never))
  
            }
            HStack(spacing: 16){
                ForEach(images.indices, id:\.self){ index in
                        Rectangle()
                        .fill(selectedImageIndex == index ? Color.theme.primaryIconColor : .gray)
                        .frame(width: 20,height: 6)
                        .animation(.easeInOut, value: selectedImageIndex)
                   
                }
            }
           
        }
        
        
    }
}

#Preview {
    DashboardCarouselView()
}
