//
//  HistoryHeaderView.swift
//  metruyenchu
//
//  Created by HungBui on 15/05/2024.
//

import SwiftUI

struct HistoryHeaderView: View {
    @Binding var selectedTabIndex: Int
    @Binding var textWidths: [CGFloat]
    let HSPACING: CGFloat = 30
    var body: some View {
        HStack{
            ZStack(alignment: .bottomLeading){
                HStack(spacing: HSPACING){
                    Button(action: {
                        withAnimation(.spring){
                            selectedTabIndex =  0
                        }
                    }, label: {
                        Text("Lịch sử")
                            .foregroundStyle(Color.theme.primaryTextColor)
                            .background(ViewGeometry())
                            .onPreferenceChange(ViewSizeKey.self) {
                                print("Check text width 1 \($0)")
                                textWidths = [$0,textWidths[1]]
                            }
                            .fontWeight(selectedTabIndex == 0 ? .bold : .regular)
                    })
                    
                    Button(action: {
                        withAnimation(.spring){
                            selectedTabIndex =  1                        }
                    }, label: {
                        Text("Đánh dấu")
                            .foregroundStyle(Color.theme.primaryTextColor)
                            .background(ViewGeometry())
                            .onPreferenceChange(ViewSizeKey.self) {
                                textWidths = [textWidths[0],$0]
                            }
                            .fontWeight(selectedTabIndex == 1 ? .bold : .regular)
                        
                    })
                    
                }
                .padding(.bottom,10)
                
                Rectangle()
                    .fill(Color.theme.textDarkGray)
                    .frame(width: textWidths[selectedTabIndex], height: 4)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .offset(x: selectedTabIndex == 0 ? 0 : textWidths[selectedTabIndex-1] + HSPACING )
                    .animation(.easeInOut(duration: 0.1), value: selectedTabIndex)
                    .animation(.spring, value: textWidths[selectedTabIndex])
            }
            Spacer()
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    HistoryHeaderView(selectedTabIndex: .constant(0), textWidths: .constant([54,74]))
}
