//
//  StoryInfoView.swift
//  metruyenchu
//
//  Created by Hung Bui on 15/05/2024.
//

import SwiftUI

struct StoryInfoView: View {
    let storyInfo: Story
   
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    RemoteImage(imageUrl: storyInfo.imageURL, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.3, blurRadius: 20)
                        
                    HStack(alignment:.top){
                        RemoteImage(imageUrl: storyInfo.imageURL, width: 120, height: 160, blurRadius: 0)
                        VStack(alignment:.leading){
                            Text(storyInfo.storyName)
                            Text("Bởi \(storyInfo.author)")
                            Spacer()
                            StarRateView()
                            HStack{
                                Button(action: {
                                    //TODO READ STORY
                                }, label: {
                                    Text("Đọc truyện")
                                        .font(.system(size: 12,weight: .medium))
                                        .padding(.vertical,6)
                                        .padding(.horizontal,14)
                                        .background(Color.theme.darkBlueColor)
                                        .foregroundStyle(.white)
                                        .clipShape(.rect(cornerRadius: 20))
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
                                        .foregroundStyle(Color.theme.primaryTextColor)
                                        .frame(width: 80,alignment: .leading)
                                }
                                
                            }
                        }
                    }
                    
                    .background(.red)
                    
                }
             
                               
               
                .frame(height:UIScreen.main.bounds.height*0.3)
                TabView(selection: .constant(1),
                        content:  {
                    Text("Tab Content 1").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(1)
                    Text("Tab Content 2").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(2)
                })
                
            }
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {}, label: {
                Image(systemName: "chevron.left")
                    .foregroundStyle(Color.theme.primaryTextColor)
            }))

        }
        
    }
}

#Preview {
    StoryInfoView(storyInfo: .init(storyName: "Ai Bảo Hắn Tu Tiên!",
                        description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin.",
                        rate: 4.5,
                        type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
                        author: "Tối Bạch Đích Ô Nha",
                        totalChapters: 1143,
                        readCount: 2216941,
                        nominationCount: 8623,
                        imageURL: "https://static.cdnno.com/poster/ai-bao-han-tu-tien/300.jpg?1677860647"
                       ))
}
