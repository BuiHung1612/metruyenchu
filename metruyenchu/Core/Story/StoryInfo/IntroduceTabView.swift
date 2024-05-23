//
//  IntroduceTabView.swift
//  metruyenchu
//
//  Created by HungBui on 17/05/2024.
//

import SwiftUI

struct IntroduceTabView: View {
    let storyInfo: Story
    var body: some View {
        
        LazyVStack{
            HStack(spacing: 40){
                VStack{
                    Text("15")
                        .font(.system(size: 20,weight: .semibold))
                        .foregroundStyle(.primaryText)
                    Text("Chương/Tuần")
                        .font(.system(size: 12))
                        .foregroundStyle(.textGray)
                }
                VStack{
                    Text("\(storyInfo.totalChapters)")
                        .font(.system(size: 20,weight: .semibold))
                        .foregroundStyle(.primaryText)
                    Text("Chương - Đang ra")
                        .font(.system(size: 12))
                        .foregroundStyle(.textGray)
                }
                VStack{
                    Text("\(storyInfo.readCount)")
                        .font(.system(size: 20,weight: .semibold))
                        .foregroundStyle(.primaryText)
                    Text("Lượt đọc")
                        .font(.system(size: 12))
                        .foregroundStyle(.textGray)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical)
            .background(.gray.opacity(0.1))
            Text(storyInfo.description)
                .foregroundStyle(Color.theme.primaryTextColor)
                .lineSpacing(10)
                .padding()
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.bottom,20)
            
            Spacer()
            
            
            
        }
    }
}

#Preview {
    IntroduceTabView(storyInfo: STORIES_DATA[0])
}
