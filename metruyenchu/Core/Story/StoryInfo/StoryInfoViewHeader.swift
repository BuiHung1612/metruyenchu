//
//  StoryInfoViewHeader.swift
//  metruyenchu
//
//  Created by HungBui on 16/05/2024.
//

import SwiftUI

let HEADER_MAX_HEIGHT = UIScreen.main.bounds.height*0.34

struct StoryInfoViewHeader: View {
    @State private var expandableContent: Bool = true
    let storyInfo: Story
    @State private var headerHeight = HEADER_MAX_HEIGHT
    @Binding var offset: CGFloat {
        didSet {
            if (self.expandableContent){
                headerHeight = HEADER_MAX_HEIGHT +  self.offset
            }
            
        }
    }
    var body: some View {
        ZStack(alignment:.topLeading){
            RemoteImage(imageUrl: storyInfo.imageURL,width: UIScreen.main.bounds.width, height: (HEADER_MAX_HEIGHT+offset) > 0 ? headerHeight: 0  ,blurRadius: 30)
          
                
            
            VStack(alignment:.leading){
                BackBtnView()
                    .padding(.bottom, 20)
                HStack(alignment:.top, spacing: 16){
                    
                    RemoteImage(imageUrl: storyInfo.imageURL, width: 120, height: 160, borderRadius: 12)
                    
                    VStack(alignment:.leading){
                        
                        Text(storyInfo.type[0])
                            .font(.system(size: 10,weight: .medium))
                            .padding(.vertical,2)
                            .padding(.horizontal,10)
                            .background(Color.theme.darkBlueColor)
                            .foregroundStyle(.white)
                            .clipShape(.rect(cornerRadius: 20))
                        
                        Text(storyInfo.storyName)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                        Text("bởi \(storyInfo.author)")
                            .font(.system(size: 14))
                            .foregroundStyle(.white)
                        StarRateView(iconSize: 14,textSize: 14, textColor: .white)
                     Spacer()
                        HStack{
                            Button(action: {
                                //TODO READ STORY
                            }, label: {
                                Text("Đọc truyện")
                                    .font(.system(size: 12,weight: .medium))
                                    .padding(.vertical,6)
                                    .padding(.horizontal,14)
                                    .background(Color.theme.darkBlueColor)
                                    .foregroundStyle(.white)
                                    .clipShape(.rect(cornerRadius: 20))
                            })
                            HStack(spacing:8){
                                Button {
                                    //TODO ADD STORY
                                } label: {
                                    Image(systemName: "plus")
                                        .imageScale(.small)
                                        .padding(6)
                                        .foregroundStyle(Color.theme.darkBlueColor)
                                    
                                        .background(.white)
                                        .clipShape(.circle)
                                    
                                }
                                Text("Thêm vào tủ truyện")
                                
                                    .font(.system(size: 10))
                                    .foregroundStyle(.white)
                                    .frame(width: 80,alignment: .leading)
                            }
                            
                        }
                    }
                    
                }
                .frame(height: 160)
                .scaleEffect(normalizeValue(a: offset*1.4, b: HEADER_MAX_HEIGHT), anchor: .topLeading)
            }
            .offset(y: 60)
            .padding(.horizontal)
            .ignoresSafeArea()
            
        }
        .onChange(of: offset, { oldValue, newValue in
            let value = normalizeValue(a: offset*1.4, b: HEADER_MAX_HEIGHT)
            if (value == 0.6){
                expandableContent = false
            }
            else if(!expandableContent){
                expandableContent = true
                
            }
        })
        .frame(width: UIScreen.main.bounds.width,height: (HEADER_MAX_HEIGHT + offset/2) > 0 ? (HEADER_MAX_HEIGHT + offset/2) : 0 ,alignment: .top)
    }
}

#Preview {
    StoryInfoViewHeader(storyInfo: .init(storyName: "Toàn Dân Tu Tiên: Nơi Này Tu Tiên Quá Cao Cấp",
                                         description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin. Truyện dành cho ae nào quá chán mì ăn liền, ngựa giống, hệ thống,….Nhẩy hố đi đừng quan tâm mấy cái cmt vớ vẩn, tác người mới nhưng viết rất tâm huyết, khá chắc tay. Triển khai 2 thế giới hợp lý (TG main ở hiện đại, tu tiên toàn dân, dễ tra cứu trên mạng những kiến thức phổ cập, nói đến phổ cập thì TG của main nó phổ cập tu tiên như giáo dục bắt buộc vậy, người người tu tiên, hệ thống giáo dục rõ ràng nên ví dụ như TG tu tiên truyền thống ông chế đc 1 loại đan dược hoặc bùa cấp 3 là thành luyện Đan, chế phù sư tâm giải, nhưng TG của main phải tinh thông 10 loại trở lên và phải thi cử mới được cấp giấy phép cấp 3. Đấy nói 1 ví dụ thế cho ae hiểu sự chênh lệch, nhưng TG này tài nguyên thiếu thốn, yêu thú, yêu thực cấp cao thành quốc bảo, phải xin phép mới được lấy tài liệu để luyện Đan chế khí (máu, da lông hay cành lá linh thực)",
                                         rate: 4.5,
                                         type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
                                         author: "Tối Bạch Đích Ô Nha",
                                         totalChapters: 1143,
                                         readCount: 2216941,
                                         nominationCount: 8623,
                                         imageURL: "https://static.cdnno.com/poster/toan-dan-tu-tien-noi-nay-tu-tien-qua-cao-cap/300.jpg?1714828514"
                                        ), offset: .constant(0))
    
}


func normalizeValue(a: Double, b: Double) -> Double {
    guard b != 0 else {
        fatalError("Divisor cannot be zero")
    }
    if a == 0 {
        return 1
    }
    
    let dividedValue = a / b
    let value = 1 + dividedValue
    let finalValue = value > 1 ? 1 : value < 0.6 ? 0.6 : value
    return finalValue
}
