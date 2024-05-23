//
//  StoryDetailTabView.swift
//  metruyenchu
//
//  Created by HungBui on 22/05/2024.
//

import SwiftUI

struct StoryDetailTabView: View {
    @State private var selectedTabIndex = 0
    @Binding var isShowing: Bool
    @Binding var fontSize: CGFloat
    
    let storyInfo: Story
    var body: some View {
        ZStack(alignment: .bottom){
            if isShowing {
                Rectangle()
                    .fill(.black.opacity(0.8))
                    .ignoresSafeArea()
                    .onTapGesture{
                        isShowing.toggle()
                    }
          
                VStack(spacing: 0){
                   
                    HistoryHeaderView(selectedTabIndex: $selectedTabIndex, tabViews: ["Thông tin", "Cài đặt"],indicatorFitText: true)
                        .padding(.top)
                        
                    TabView(selection: $selectedTabIndex,
                            content:  {
                       StoryDetailInfoView(storyInfo: storyInfo).tag(0)
                        StoryDetailSettingView(fontSize: $fontSize).tag(1)
                    })
                    .tabViewStyle(.page(indexDisplayMode: .never))
                    
                    .ignoresSafeArea()
                    .frame(height: UIScreen.main.bounds.height*0.6,alignment: .top)
                   
                }
               
                .background(Color.theme.backgroundColor)
                .transition(.move(edge: .bottom))
                
            }
            
        }
        .onChange(of: isShowing) { oldValue, newValue in
            if !newValue {
                selectedTabIndex = 0
            }
        }
        
    }
}

#Preview {
    StoryDetailTabView(isShowing: .constant(true),fontSize: .constant(14), storyInfo: STORIES_DATA[0])
}
