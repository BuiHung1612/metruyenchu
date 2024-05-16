//
//  DashboardHGridView.swift
//  metruyenchu
//
//  Created by Hung Bui on 12/05/2024.
//

import SwiftUI

struct DashboardHGridView: View {
    let rows: [GridItem]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, content: {
                ForEach(STORIES_DATA.prefix(6).indices, id:\.self){ index in
                    VStack(alignment:.leading){
                        RemoteImage(imageUrl: STORIES_DATA[index].imageURL, width: (UIScreen.main.bounds.width - 48)/3,height: 160)
                       
                        
                        .clipShape(.rect(cornerRadius:6))
                        Text(STORIES_DATA[index].storyName)
                            .frame(width: (UIScreen.main.bounds.width - 48)/3,alignment: .leading)
                            .foregroundStyle(Color.theme.textDarkGray)
                            .lineLimit(2)
                            .padding(.bottom,2)
                        
                        Text(STORIES_DATA[index].type[0])
                            .font(.system(size: 14))
                            .foregroundStyle(Color.theme.textGray)
                    }
                    
                }
            })
        }.padding(.horizontal)
    }
}


#Preview {
    DashboardHGridView(rows: [.init(), .init()])
}
