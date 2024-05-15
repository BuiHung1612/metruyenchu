//
//  DashboardGenderSheetView.swift
//  metruyenchu
//
//  Created by Hung Bui on 12/05/2024.
//

import SwiftUI

struct DashboardGenderSheetView: View {
    @StateObject var viewModel = DashboardViewViewModel()
    @State private var sheetHeight: CGFloat = .zero
    var body: some View {
       
            
            
            VStack(alignment:.leading){
                Text("Tuỳ chọn chế độ đọc")
                    .font(.system(size: 18,weight: .semibold))
                   
                ForEach(Gender.allCases){ type in
                    Button(action: {
                        viewModel.isSelectedGenderType = type
                    }, label: {
                        GenderRowView(title: type.getGenderType,genderType: type,isSelected: viewModel.isSelectedGenderType == type )
                    })
                    
                      
                }

                
            }
            .padding(.horizontal)
            .presentationDetents([.height(200)])
 
    }
}

#Preview {
    DashboardGenderSheetView()
}
