//
//  HistoryPageView.swift
//  metruyenchu
//
//  Created by HungBui on 15/05/2024.
//

import SwiftUI

struct HistoryPageView: View {
    var body: some View {
        List(STORIES_DATA){ item in
            
            HStack(alignment:.center,spacing:16){
                RemoteImage(imageUrl: item.imageURL, width: 110,height: 150)
                
                
                VStack(alignment:.leading,spacing: 12){
                    Text(item.storyName)
                        .font(.system(size: 18,weight: .medium))
                        .foregroundStyle(Color.theme.primaryTextColor)
                        .padding(.top,8)
                    Text("Đã đọc 933")
                        .fontWeight(.medium)
                        .foregroundStyle(Color.theme.textDarkGray)
                    Spacer()
                }
                Spacer()
                VStack{
                    Image(systemName: "ellipsis")
                        .imageScale(.large)
                        .rotationEffect(.degrees(90))
                        .padding(.top,20)
                    Spacer()
                }
            }
            .overlay {
                NavigationLink(destination: { StoryInfoView(storyInfo: item) },
                               label: { EmptyView() })
                .opacity(0)
            }
            .listRowBackground(Color.clear)
        }
        .listStyle(.plain)
        .background(Color.theme.darkGraybackgroundColor)
    }
}

#Preview {
    HistoryPageView()
}
