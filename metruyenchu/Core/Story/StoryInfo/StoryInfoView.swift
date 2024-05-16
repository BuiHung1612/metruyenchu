//
//  StoryInfoView.swift
//  metruyenchu
//
//  Created by Hung Bui on 15/05/2024.
//

import SwiftUI

struct StoryInfoView: View {
    let storyInfo: Story
    @State private var selectedTabIndex = 0
    
    var body: some View {
        NavigationStack{
            VStack{
                StoryInfoViewHeader(storyInfo: storyInfo)
                VStack{
                    HistoryHeaderView(selectedTabIndex: $selectedTabIndex, tabViews: ["Giới thiệu", "Đánh giá", "Bình Luận", "D.S Chương"],indicatorFitText: false)
                       
                       
                    
                    TabView(selection: $selectedTabIndex){
                 
                        Text("Tab Content 1").tabItem { Text("Tab Label 1") }.tag(0)
                        Text("Tab Content 2").tabItem { Text("Tab Label 2") }.tag(1)
                        Text("Tab Content 1").tabItem { Text("Tab Label 1") }.tag(2)
                        Text("Tab Content 2").tabItem { Text("Tab Label 2") }.tag(3)
                    }.tabViewStyle(.page(indexDisplayMode: .never))
                        .background(.gray)
                    
                }
                
            }
            
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackBtnView())
            .toolbar(.hidden, for: .tabBar)
            
            .ignoresSafeArea()
            
        }
        
    }
}

#Preview {
    StoryInfoView(storyInfo: .init(storyName: "Ta có một thế giới Tu Tiên",
                                   description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin.",
                                   rate: 4.5,
                                   type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
                                   author: "Tối Bạch Đích Ô Nha",
                                   totalChapters: 1143,
                                   readCount: 2216941,
                                   nominationCount: 8623,
                                   imageURL: "https://static.cdnno.com/poster/ta-co-mot-the-gioi-tu-tien/300.jpg?1661651944"
                                  ))
}



struct BackBtnView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button(action: {
            dismiss()
        }, label: {
            Image(systemName: "chevron.left")
                .foregroundStyle(.white)
        })
    }
}
