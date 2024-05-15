//
//  Story.swift
//  metruyenchu
//
//  Created by HungBui on 10/05/2024.
//

import Foundation

struct Story: Identifiable{
    var id: String { return UUID().uuidString}
    
    let storyName: String
    let description: String
    let rate: Float
    let type: [String]
    let author: String
    let totalChapters: Int
    let readCount: Int
    let nominationCount:Int
    let imageURL: String
}


let STORIES_DATA = [
    
    Story(storyName: "Ai Bảo Hắn Tu Tiên!",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin.",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/ai-bao-han-tu-tien/300.jpg?1677860647"
         ),
    Story(storyName: "Ta có một thế giới Tu Tiên",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin.",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/ta-co-mot-the-gioi-tu-tien/300.jpg?1661651944"
         ),
    Story(storyName: "Thần Thoại Kỷ Nguyên, Ta Tiến Hóa Thành Hằng Tinh Cấp Cự Thú",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin.",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/than-thoai-ky-nguyen-ta-tien-hoa-thanh-hang-tinh-cap-cu-thu/300.jpg?1705212729"
         ),
    Story(storyName: "Toàn Dân Tu Tiên: Nơi Này Tu Tiên Quá Cao Cấp",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin.",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/toan-dan-tu-tien-noi-nay-tu-tien-qua-cao-cap/300.jpg?1714828514"
         ),
    Story(storyName: "Vạn Giới Thủ Môn Nhân",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin.",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/van-gioi-thu-mon-nhan/300.jpg?1702613796"
         ),
    Story(storyName: "Đại Chu Tiên Lại",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin.",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/dai-chu-tien-lai/300.jpg?1591757003"
         ),
    Story(storyName: "Trùng Sinh Phi Dương Niên Đại",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin.",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/trung-sinh-phi-duong-nien-dai/300.jpg?1653713220"
         ),
    Story(storyName: "Ai Bảo Hắn Tu Tiên!",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin.",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/ai-bao-han-tu-tien/300.jpg?1677860647"
         ),
    Story(storyName: "Vừa Thành Tiên Thần, Con Cháu Cầu Ta Xuất Sơn",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin.",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/vua-thanh-tien-than-con-chau-cau-ta-dang-co/300.jpg?1665195835"
         ),
]

//MAGES_DATA.map { imageURL in
//    return Story(
//
//        storyName: "Ai Bảo Hắn Tu Tiên!",
//        description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin.",
//        rate: 4.5,
//        type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
//        author: "Tối Bạch Đích Ô Nha",
//        totalChapters: 1143,
//        readCount: 2216941,
//        nominationCount: 8623,
//        imageURL: imageURL
//    )
//}
