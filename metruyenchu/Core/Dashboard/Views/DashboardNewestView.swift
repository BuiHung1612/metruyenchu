//
//  DashboardNewestView.swift
//  metruyenchu
//
//  Created by HungBui on 10/05/2024.
//

import SwiftUI

struct DashboardNewestView: View {
   
    var body: some View {
        VStack{
            ScrollView (.horizontal, showsIndicators: false){
                HStack{
                    ForEach(STORIES_DATA.indices, id:\.self){ index in
                        RemoteImage(imageUrl: STORIES_DATA[index].imageURL, width: 60, height: 70,borderRadius: 6)
                        
                    }
                }
                
            }
            .padding(.bottom,10)
            
            HStack(alignment:.top,spacing:12){
                VStack(alignment:.leading){
                    Text("Tiên Hiệp")
                        .foregroundStyle(Color.theme.textDarkGray)
                        .fontWeight(.medium)
                        .padding(.bottom,4)
                    Text("Thần Thoại Kỷ Nguyên, Ta Tiến Hóa Thành Hằng Tinh Cấp Cự Thú")
                        .lineLimit(1)
                        .padding(.bottom,4)
                        .foregroundStyle(Color.theme.primaryTextColor)
                        .fontWeight(.medium)
                    Text("Trên trời cao, mấy ngàn thước dáng dấp côn theo vùng trời thành thị bay qua, coi thường thấu trời đạn đạo oanh tạc.\n Úc Lợi châu, dài đến ngàn mét diệt thế cự mãng phá hủy thành thị, thôn phệ trăm vạn người, tại mấy khoả đạn h·ạt n·hân dưới v·ụ n·ổ chậm chậm rời đi.")
                        .lineLimit(2)
                        .padding(.bottom,4)
                        .foregroundStyle(Color.theme.textDarkGray)
                        .fontWeight(.medium)
                    
                    StarRateView()
                    Spacer()
                    HStack{
                        Button(action: {
                            //TODO READ STORY
                        }, label: {
                            Text("Đọc")
                                .font(.system(size: 18,weight: .medium))
                                .padding(.vertical,6)
                                .padding(.horizontal,20)
                                .background(.black)
                                .foregroundStyle(.white)
                                .clipShape(.rect(cornerRadius: 20))
                        })
                        Button {
                            //TODO ADD STORY
                        } label: {
                            Image(systemName: "plus")
                                .padding(10)
                                .foregroundStyle(.white)
                                .bold()
                                .background(Color.theme.darkBlueColor)
                                .clipShape(.circle)
                            
                        }
                        
                    }
                }
                Spacer()
                
                RemoteImage(imageUrl: "https://static.cdnno.com/poster/than-thoai-ky-nguyen-ta-tien-hoa-thanh-hang-tinh-cap-cu-thu/300.jpg?1705212729", width: UIScreen.main.bounds.width*0.34,height: 200)
               
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    VStack{
        DashboardNewestView()
        Spacer()
    }
}
