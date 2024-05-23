//
//  StoryInfoViewHeader.swift
//  metruyenchu
//
//  Created by HungBui on 16/05/2024.
//

import SwiftUI

let HEADER_MAX_HEIGHT = UIScreen.main.bounds.height*0.32

struct StoryInfoViewHeader: View {
    @State private var expandableContent: Bool = true
    let storyInfo: Story
    @State private var headerHeight = HEADER_MAX_HEIGHT
    @Binding var offset: CGFloat
    var body: some View {
        ZStack(alignment:.topLeading){
            RemoteImage(imageUrl: storyInfo.imageURL,width: UIScreen.main.bounds.width, height: headerHeight  ,blurRadius: 30)
          
                
            
            VStack(alignment:.leading){
                BackBtnView()
                    .padding(.bottom, 20)
                HStack(alignment:.top, spacing: 16){
                    
                    RemoteImage(imageUrl: storyInfo.imageURL, width: 120, height: 160, borderRadius: 12)
                    
                    VStack(alignment:.leading){
                        
                        Text(storyInfo.type[0])
                            .font(.system(size: 10,weight: .medium))
                            .padding(.vertical,2)
                            .padding(.horizontal,10)
                            .background(Color.theme.darkBlueColor)
                            .foregroundStyle(.white)
                            .clipShape(.rect(cornerRadius: 20))
                        
                        Text(storyInfo.storyName)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                        Text("bởi \(storyInfo.author)")
                            .font(.system(size: 14))
                            .foregroundStyle(.white)
                        StarRateView(iconSize: 14,textSize: 14, textColor: .white)
                     Spacer()
                        HStack{
                            Button(action: {}, label: {
                                NavigationLink {
                                    StoryDetailView(storyInfo: storyInfo)
                                } label: {
                                    Text("Đọc truyện")
                                        .font(.system(size: 12,weight: .medium))
                                        .padding(.vertical,6)
                                        .padding(.horizontal,14)
                                        .background(Color.theme.darkBlueColor)
                                        .foregroundStyle(.white)
                                        .clipShape(.rect(cornerRadius: 20))
                                }
                            })
                           
                            HStack(spacing:8){
                                Button {
                                    //TODO ADD STORY
                                } label: {
                                    Image(systemName: "plus")
                                        .imageScale(.small)
                                        .padding(6)
                                        .foregroundStyle(Color.theme.darkBlueColor)
                                    
                                        .background(.white)
                                        .clipShape(.circle)
                                    
                                }
                                Text("Thêm vào tủ truyện")
                                
                                    .font(.system(size: 10))
                                    .foregroundStyle(.white)
                                    .frame(width: 80,alignment: .leading)
                            }
                            
                        }
                    }
                    
                }
                .frame(height: 160)
                .scaleEffect(normalizeValue(a: offset*1.4, b: HEADER_MAX_HEIGHT), anchor: .topLeading)
            }
            .offset(y: 60)
            .padding(.horizontal)
            .ignoresSafeArea()
            
        }
        .onChange(of: offset, { oldValue, newValue in
            let value = normalizeValue(a: offset*1.4, b: HEADER_MAX_HEIGHT)
            
            if (value == 0.6){
                expandableContent = false
            }
            else if(!expandableContent){
                expandableContent = true
                headerHeight = (HEADER_MAX_HEIGHT+offset) > 0 ? HEADER_MAX_HEIGHT + offset : 0
            }
            else {
                headerHeight = (HEADER_MAX_HEIGHT+offset) > 0 ? HEADER_MAX_HEIGHT + offset : 0
            }
        })
        .frame(width: UIScreen.main.bounds.width,height: headerHeight,alignment: .top)
    }
}

#Preview {
    StoryInfoViewHeader(storyInfo: STORIES_DATA[3], offset: .constant(0))
    
}


func normalizeValue(a: Double, b: Double) -> Double {
    guard b != 0 else {
        fatalError("Divisor cannot be zero")
    }
    if a == 0 {
        return 1
    }
    
    let dividedValue = a / b
    let value = 1 + dividedValue
    let finalValue = value > 1 ? 1 : value < 0.6 ? 0.6 : value
    return finalValue
}
