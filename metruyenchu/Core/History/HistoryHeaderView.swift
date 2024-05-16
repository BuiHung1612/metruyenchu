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
                                        
                                        textWidths[index] = $0
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
                                
                                textWidths[index] = $0
                            }
                        }
                        
                    }
                    
                    
                    indicatorFitText ?  Spacer() : nil
                    
                }
             
                .onChange(of: selectedTabIndex) { oldValue, newValue in
                    
                    let widths = textWidths.prefix(newValue)
                    let x = widths.reduce(0, +)
                    print(textWidths,widths,x)
                    withAnimation(.spring){
                        offsetX = x == 0 ? 0 : x + (CGFloat(widths.count) * HSPACING)
                    }
                    
                }
                
                Rectangle()
                    .fill(Color.theme.textDarkGray)
                    .frame(width: textWidths[selectedTabIndex], height: 4)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .offset(x: offsetX )
                    .animation(.easeInOut(duration: 0.1), value: selectedTabIndex)
                    .animation(.spring, value: textWidths[selectedTabIndex])
            }
            .padding(.horizontal, indicatorFitText ? 16 : 0)
            
        }
        
    }
}

#Preview {
    HistoryHeaderView(selectedTabIndex: .constant(0), tabViews: ["Giới thiệu", "Đánh giá", "Bình Luận", "D.S Chương"],indicatorFitText:true)
}
