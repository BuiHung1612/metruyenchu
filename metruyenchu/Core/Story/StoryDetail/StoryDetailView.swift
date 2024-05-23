//
//  StoryDetailView.swift
//  metruyenchu
//
//  Created by HungBui on 22/05/2024.
//

import SwiftUI

struct StoryDetailView: View {
    let storyInfo: Story
    @Environment(\.dismiss) var dismiss
    @State private var isPresentedSheet = false
    @State private var isLoadingContent = true
    @EnvironmentObject var storyDetailViewModel: StoryDetailViewViewModel
    @State private var fontSize:CGFloat = 14
   
    var body: some View {
        NavigationStack{
            ZStack{
                ScrollView{
                    HStack{
                        HStack{
                            Image(systemName: "chevron.left")
                                .foregroundStyle(Color.theme.primaryIconColor)
                            Text(storyInfo.storyName)
                                .foregroundStyle(storyDetailViewModel.selectedTextColor)
                        }
                        .onTapGesture {
                            dismiss()
                        }
                        Spacer()
                        Image(systemName: "gearshape.fill")
                            .foregroundStyle(Color.theme.primaryIconColor)
                            .onTapGesture {
                                withAnimation (.spring(duration: 0.3)) {
                                    isPresentedSheet.toggle()
                                }
                            }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                    if !isLoadingContent {
                        Text(storyInfo.storyContent)
                            .padding(.horizontal)
                            .font(.system(size: fontSize))
                            .foregroundStyle(storyDetailViewModel.selectedTextColor)
                    }
                }
                .background(storyDetailViewModel.selectedBGColor)
                StoryDetailTabView(isShowing: $isPresentedSheet,fontSize: $fontSize,storyInfo: STORIES_DATA[0])
            }
            .navigationBarBackButtonHidden(true)
            .overlay{
                if isLoadingContent {
                    ProgressView()
                }
            }
            .onChange(of: storyDetailViewModel.fontSize, { oldValue, newValue in
                print("FONT SIZE \(newValue)")
            })
           
            .onAppear(){
                DispatchQueue.main.asyncAfter(deadline: .now()+0.5){
                    withAnimation(.easeIn(duration: 0.5)){
                        isLoadingContent = false
                    }
                }
            }

        }
       
    }
}

#Preview {
    StoryDetailView(storyInfo: STORIES_DATA[0])
}
