//
//  HistoryView.swift
//  metruyenchu
//
//  Created by HungBui on 10/05/2024.
//

import SwiftUI

struct HistoryView: View {
    @State private var selectedTabIndex = 0
    @State private var textWidths: [CGFloat] = [0,0]
    var body: some View {
        VStack{
            HStack{
                Text("Tủ truyện")
                    .font(.system(size: 26,weight: .medium))
                Spacer()
                Image(systemName: "gearshape.fill")
            }
            .padding()
            HStack{
                ZStack(alignment: .bottomLeading){
                    HStack(spacing:30){
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
                        .fill(.white)
                        .frame(width: textWidths[selectedTabIndex], height: 4)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .offset(x: selectedTabIndex == 0 ? 0 : textWidths[selectedTabIndex-1]+30 )
                        .animation(.easeInOut(duration: 0.5), value: selectedTabIndex)
                }
                Spacer()
                
            }
            .padding()
            TabView(selection: $selectedTabIndex)
            {
                Text("Lịch sử").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(0)
                Text("Đánh dấu").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(1)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
        .background(Color.theme.backgroundColor)
    }
}

#Preview {
    HistoryView()
}


struct ViewSizeKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

struct ViewGeometry: View {
    var body: some View {
        GeometryReader { geometry in
            Color.clear
                .preference(key: ViewSizeKey.self, value: geometry.size.width)
        }
    }
}
