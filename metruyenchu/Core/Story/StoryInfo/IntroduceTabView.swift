//
//  IntroduceTabView.swift
//  metruyenchu
//
//  Created by HungBui on 17/05/2024.
//

import SwiftUI

struct IntroduceTabView: View {
    let storyInfo: Story
    var body: some View {
        VStack{
            HStack(spacing: 40){
                VStack{
                    Text("15")
                        .font(.system(size: 20,weight: .semibold))
                        .foregroundStyle(.primaryText)
                    Text("Chương/Tuần")
                        .font(.system(size: 12))
                        .foregroundStyle(.textGray)
                }
                VStack{
                    Text("\(storyInfo.totalChapters)")
                        .font(.system(size: 20,weight: .semibold))
                        .foregroundStyle(.primaryText)
                    Text("Chương - Đang ra")
                        .font(.system(size: 12))
                        .foregroundStyle(.textGray)
                }
                VStack{
                    Text("\(storyInfo.readCount)")
                        .font(.system(size: 20,weight: .semibold))
                        .foregroundStyle(.primaryText)
                    Text("Lượt đọc")
                        .font(.system(size: 12))
                        .foregroundStyle(.textGray)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical)
            .background(.gray.opacity(0.1))
            Text(storyInfo.description)
                .foregroundStyle(Color.theme.primaryTextColor)
                .lineSpacing(10)
                .padding()
            Spacer()
            
        }
        
    }
}

#Preview {
    IntroduceTabView(storyInfo: .init(storyName: "Ta có một thế giới Tu Tiên",
                                      description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin. Truyện dành cho ae nào quá chán mì ăn liền, ngựa giống, hệ thống,….Nhẩy hố đi đừng quan tâm mấy cái cmt vớ vẩn, tác người mới nhưng viết rất tâm huyết, khá chắc tay. Triển khai 2 thế giới hợp lý (TG main ở hiện đại, tu tiên toàn dân, dễ tra cứu trên mạng những kiến thức phổ cập, nói đến phổ cập thì TG của main nó phổ cập tu tiên như giáo dục bắt buộc vậy, người người tu tiên, hệ thống giáo dục rõ ràng nên ví dụ như TG tu tiên truyền thống ông chế đc 1 loại đan dược hoặc bùa cấp 3 là thành luyện Đan, chế phù sư tâm giải, nhưng TG của main phải tinh thông 10 loại trở lên và phải thi cử mới được cấp giấy phép cấp 3. Đấy nói 1 ví dụ thế cho ae hiểu sự chênh lệch, nhưng TG này tài nguyên thiếu thốn, yêu thú, yêu thực cấp cao thành quốc bảo, phải xin phép mới được lấy tài liệu để luyện Đan chế khí (máu, da lông hay cành lá linh thực)",
                                      rate: 4.5,
                                      type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
                                      author: "Tối Bạch Đích Ô Nha",
                                      totalChapters: 1143,
                                      readCount: 2216941,
                                      nominationCount: 8623,
                                      imageURL: "https://static.cdnno.com/poster/ta-co-mot-the-gioi-tu-tien/300.jpg?1661651944"
                                     ))
}
