//
//  StoryInfoViewHeader.swift
//  metruyenchu
//
//  Created by HungBui on 16/05/2024.
//

import SwiftUI

struct StoryInfoViewHeader: View {
    let storyInfo: Story
    var body: some View {
        ZStack{
            RemoteImage(imageUrl: storyInfo.imageURL,width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.3,blurRadius: 30)
            
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
                                .foregroundStyle(.white)
                                .frame(width: 80,alignment: .leading)
                        }
                        
                    }
                }
            }
            .padding(.bottom,10)
            .safeAreaInset(edge: .top) {
                
            }
            
        }
        .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height*0.3,alignment: .top)
    }
}

#Preview {
    StoryInfoViewHeader(storyInfo: .init(storyName: "Toàn Dân Tu Tiên: Nơi Này Tu Tiên Quá Cao Cấp",
                                         description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin.",
                                         rate: 4.5,
                                         type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
                                         author: "Tối Bạch Đích Ô Nha",
                                         totalChapters: 1143,
                                         readCount: 2216941,
                                         nominationCount: 8623,
                                         imageURL: "https://static.cdnno.com/poster/toan-dan-tu-tien-noi-nay-tu-tien-qua-cao-cap/300.jpg?1714828514"
                                        ))
    
}
