//
//  HistoryHeaderView.swift
//  metruyenchu
//
//  Created by HungBui on 15/05/2024.
//

import SwiftUI

struct HistoryHeaderView: View {
    @Binding var selectedTabIndex: Int
    let tabViews: [String]
    @State private var textWidths: [CGFloat]
    var indicateX = 0
    let fontSize: CGFloat
    let HSPACING: CGFloat = 30
    let indicatorFitText: Bool
    let paddingHorizontal: CGFloat
    @State private var showIndicator = false
    @State private var offsetX: CGFloat = 0
    
    init(selectedTabIndex: Binding<Int>, tabViews: [String], fontSize: CGFloat = 16, indicatorFitText: Bool,paddingHorizontal: CGFloat = 16) {
        self._selectedTabIndex = selectedTabIndex
        self.tabViews = tabViews
        self._textWidths = State(initialValue: Array(repeating: 0, count: tabViews.count))
        self.fontSize = fontSize
        self.indicatorFitText = indicatorFitText
        self.paddingHorizontal = indicatorFitText ? 0 : paddingHorizontal
        
    }
    
    var body: some View {
        HStack{
            ZStack(alignment: .bottomLeading){
                HStack(spacing: HSPACING){
                    ForEach(tabViews.indices, id: \.self){ index in
                        if indicatorFitText {
                            Button(action: {
                                withAnimation(.spring){
                                    selectedTabIndex =  index
                                }
                            }, label: {
                                Text(tabViews[index])
                                    .foregroundStyle(Color.theme.primaryTextColor)
                                    .font(.system(size: fontSize))
                                
                                    .fontWeight(selectedTabIndex == index ? .semibold : .light)
                                    .background(ViewGeometry())
                                    .onPreferenceChange(ViewSizeKey.self) {
                                        
                                        textWidths[index] = $0.width
                                    }
                            })
                            .padding(.bottom,10)
                            
                            
                        }
                        else{
                            Button(action: {
                                withAnimation(.spring){
                                    selectedTabIndex =  index
                                }
                            }, label: {
                                Text(tabViews[index])
                                    .foregroundStyle(Color.theme.primaryTextColor)
                                    .font(.system(size: fontSize))
                                
                                    .fontWeight(selectedTabIndex == index ? .regular : .light)
                            })
                            .frame(width: ((UIScreen.main.bounds.width - paddingHorizontal*2 - ((CGFloat(textWidths.count) - 1)) * HSPACING) / 4) , alignment: .center)
                            .padding(.bottom, 6)
                            .background(ViewGeometry())
                            .onPreferenceChange(ViewSizeKey.self) {
                                
                                textWidths[index] = $0.width
                            }
                        }
                        
                    }
                    indicatorFitText ?  Spacer() : nil
                    
                }
                
                .onChange(of: selectedTabIndex) { oldValue, newValue in
                    
                    let widths = textWidths.prefix(newValue)
                    let x = widths.reduce(0, +)
                    withAnimation(.spring){
                        offsetX = x == 0 ? 0 : x + (CGFloat(widths.count) * HSPACING)
                    }
                    
                }
                
                if showIndicator {
                    Rectangle()
                        .fill(Color.theme.textDarkGray)
                        .frame(width: textWidths[selectedTabIndex], height: 4)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .offset(x: offsetX)
                    
                }
            }
            .padding(.horizontal, indicatorFitText ? 16 : 0)
            
        }
        .onAppear {
            
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5){
                withAnimation(.easeIn(duration: 0.3)){
                    showIndicator = true
                }
            }
            
        }
        
        
        
    }
}

#Preview {
    HistoryHeaderView(selectedTabIndex: .constant(0), tabViews: ["Giới thiệu", "Đánh giá", "Bình Luận", "D.S Chương"],indicatorFitText:true)
}
