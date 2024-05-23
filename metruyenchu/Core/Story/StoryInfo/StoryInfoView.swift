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
    @State private var minHeight: CGFloat = 100
    @State private var offset: CGFloat = 0
    @State private var imageOffset: CGFloat = 0
    var body: some View {
        NavigationStack{
            
            GeometryReader{ proxy in
                ScrollView{
                    VStack{
                        StoryInfoViewHeader(storyInfo: storyInfo, offset: $offset)
                        HistoryHeaderView(selectedTabIndex: $selectedTabIndex, tabViews: ["Giới thiệu", "Đánh giá", "Bình Luận", "D.S Chương"],indicatorFitText: false)
                        TabViewContainer(selectedTabIndex: $selectedTabIndex,storyInfo: storyInfo)
                            .tabViewStyle(.page(indexDisplayMode: .never))
                            .frame(minHeight: proxy.size.height)
                    }
                    .background(Color.theme.backgroundColor)
                    .background(GeometryReader { proxy -> Color in
                        DispatchQueue.main.async {
                            offset = proxy.frame(in: .named("scroll")).origin.y
                        }
                        return Color.clear
                    })
                }
                .coordinateSpace(name: "scroll")
                
            }
            .ignoresSafeArea()
            
        }
        
        .navigationBarBackButtonHidden(true)
        .toolbar(.hidden, for: .tabBar)
    }
}

#Preview {
    StoryInfoView(storyInfo: STORIES_DATA[0])
}


struct BackBtnView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button(action: {
            dismiss()
        }, label: {
            Image(systemName: "chevron.left")
                .resizable()
                .foregroundStyle(.white)
                .scaledToFit()
                .frame(width: 18,height:18)
        })
    }
}



struct ViewOffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}



struct TabViewContainer: View {
    @Binding var selectedTabIndex: Int
    let storyInfo: Story
    
    
    var body: some View {
        
        TabView(selection: $selectedTabIndex) {
            
            IntroduceTabView(storyInfo: storyInfo)
                .tag(0)
            
            EvaluateTabView()
                .tag(1)
            CommentTabView()
                .tag(2)
            ChapterListTabView()
                .tag(3)
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .background(Color.theme.backgroundColor)
        
        
    }
}


