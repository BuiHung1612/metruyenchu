//
//  StoryDetailInfoView.swift
//  metruyenchu
//
//  Created by HungBui on 22/05/2024.
//

import SwiftUI

struct StoryDetailInfoView: View {
    let storyInfo: Story
    @State private var chapter:Double = 1
    
    var body: some View {
        VStack(spacing:0){
                VStack(spacing:0){
                    Text("\(Int(chapter)) / \(storyInfo.totalChapters)")
                        .foregroundStyle(Color.theme.primaryTextColor)
                    HStack(spacing:16){
                        Image(systemName: "arrowtriangle.backward.fill")
                            .imageScale(.large)
                            .onTapGesture {
                                if(chapter > 1){
                                    chapter -= 1
                                }
                                
                            }
                        Slider(value: $chapter, in: 1...Double(storyInfo.totalChapters))
                            .tint(.gray)
                        Image(systemName: "arrowtriangle.forward.fill")
                            .imageScale(.large)
                            .onTapGesture {
                                if Int(chapter) < storyInfo.totalChapters {
                                    chapter += 1
                                }
                            }
                    }
                   
                    HStack(alignment: .bottom){
                        IconWithTitle(title: "DS.Chương", iconName: "list.triangle")
                        Spacer()
                        IconWithTitle(title: "Tự động", iconName: "lightbulb.min")
                        Spacer()
                        IconWithTitle(title: "Đánh dấu", iconName: "bookmark")
                        Spacer()
                        IconWithTitle(title: "Nghe", iconName: "headphones")
                    }
                    .padding(.top,8)
                }
                .padding()
                .background(
                    .gray.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                DetailInforRow(title: "Tải lại nội dung", iconName: "arrow.triangle.2.circlepath") {
                    //TODO RELOAD
                }
                DetailInforRow(title: "Bình luận", iconName: "message"){
                    //TODO COMMENT
                }
                DetailInforRow(title: "Thông tin truyện", iconName: "info.circle"){
                    //TODO INFO
                }
                DetailInforRow(title: "Tải truyện", iconName: "icloud.and.arrow.down"){
                    //TODO DOWNLOAD
                    
                }
                DetailInforRow(title: "Báo lỗi", iconName: "exclamationmark.bubble"){
                    //TODO REPORT
                }
                Spacer()
            }
            .padding()
       
    }
}

#Preview {
    StoryDetailInfoView(storyInfo: STORIES_DATA[1])
}

struct IconWithTitle: View {
    let title:String
    let iconName: String
    var body: some View {
        VStack(spacing:12){
            Image(systemName: iconName)
                .imageScale(.medium)
                .foregroundColor(Color.theme.primaryIconColor)
            Text(title)
                .font(.system(size: 12,weight: .light))
                .foregroundStyle(Color.theme.textDarkGray)
        }
    }
}

struct DetailInforRow: View {
    let title: String
    let iconName: String
    let action: () -> Void
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: iconName)
                .imageScale(.large)
                .foregroundColor(Color.theme.primaryIconColor)
            Text(title)
                .foregroundStyle(Color.theme.primaryTextColor)
        }
        .padding(.top,14)
        .frame(maxWidth: .infinity,alignment: .leading)
    }
}
