//
//  StoryDetailSettingView.swift
//  metruyenchu
//
//  Created by HungBui on 22/05/2024.
//

import SwiftUI

struct StoryDetailSettingView: View {
    @State private var selectedMode: ReadingMode = ReadingMode.scroll
    @EnvironmentObject var viewModel: StoryDetailViewViewModel
    @Binding var fontSize: CGFloat
    var body: some View {
        
        VStack(alignment:.leading,spacing:0){
            Text("Chế độ đọc")
                .font(.system(size: 16,weight: .medium))
                .foregroundStyle(Color.theme.primaryTextColor)
                .padding(.bottom,12)
            HStack(spacing:0){
                ReadingModeButton(readingMode: ReadingMode.scroll, selectedMode: $selectedMode, action: {
                    withAnimation(.spring){
                        selectedMode = ReadingMode.scroll
                    }
                })
                Divider()
                    .frame(height:32)
                ReadingModeButton(readingMode: ReadingMode.page,selectedMode: $selectedMode, action: {
                    withAnimation(.spring){
                        selectedMode = ReadingMode.page
                    }
                })
               
            }
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.cyan, lineWidth: 1)
               )
            
            Text("Cỡ chữ")
                .font(.system(size: 16,weight: .medium))
                .foregroundStyle(Color.theme.primaryTextColor)
                .padding(.vertical,12)
            
            HStack{
                Text("A")
                    .foregroundStyle(Color.theme.primaryTextColor)
                
                Slider(value: $fontSize, in: 10...40)
                    .tint(.black)
                    
                Text("A")
                    .font(.system(size: 40))
                    .foregroundStyle(Color.theme.primaryTextColor)
                    
            }
            .padding(.horizontal)
            .background(.gray.opacity(0.2))
            .clipShape(.rect(cornerRadius: 12))
            
            Text("Màu \(viewModel.fontSize)")
                .font(.system(size: 16,weight: .medium))
                .foregroundStyle(Color.theme.primaryTextColor)
                .padding(.vertical, 12)
            HStack{
                ForEach(0..<COLORS.count, id:\.self){ index in
                    Circle()
                        .stroke(index == viewModel.selectedColorIndex ? .blue : Color.gray, lineWidth: 4)
                        
                        .fill(COLORS[index])
                        .frame(width: 30,height:30)
                        .overlay{
                            index == viewModel.selectedColorIndex ? Image(systemName: "checkmark")
                                .foregroundStyle(.blue) : nil
                                
                            
                        }
                        .onTapGesture {
                            viewModel.selectedColorIndex = index
                        }
                  
                    if index != COLORS.count - 1 {
                                Spacer()
                                  
                            }
                    
                }
            }
                Spacer()
            
        }
        .padding()
        
    }
    
}




#Preview {
    StoryDetailSettingView(fontSize: .constant(14))
}

struct ReadingModeButton: View {
    
    let readingMode: ReadingMode
    @Binding var selectedMode: ReadingMode
    let action: () -> Void
    
    var body: some View {
        HStack{
            Image(systemName: readingMode.readingModeIcon)
                .foregroundStyle(selectedMode == readingMode ? .white : Color.theme.darkBlueColor)
            Text(readingMode.readingModeName)
                .font(.system(size: 14,weight: .light))
                .foregroundStyle(selectedMode == readingMode ? .white : Color.theme.darkBlueColor)
        }
        .padding(.vertical,8)
        .padding(.horizontal,16)
        .background(selectedMode == readingMode ? Color.theme.darkBlueColor : .white)
        .clipShape(.rect(topLeadingRadius: readingMode == ReadingMode.scroll ? 12 : 0,
                         bottomLeadingRadius: readingMode == ReadingMode.scroll ? 12 : 0,
                         bottomTrailingRadius:readingMode == ReadingMode.page ? 12 : 0,
                         topTrailingRadius: readingMode == ReadingMode.page ? 12 : 0
                        ))
        .onTapGesture {
            action()
        }
    }
}
