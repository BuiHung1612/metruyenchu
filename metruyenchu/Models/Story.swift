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
    let storyContent: String
}

let storyContent = """
    Âm lịch mồng 2 tháng 2, nghi xuất hành.

    Mưa vừa rầm rầm rơi xuống, rơi xuống mặt đất, tóe lên bùn đất hương thơm, rơi xuống trên mặt hồ, tạo nên từng vòng từng vòng gợn sóng, rơi xuống người qua đường đỉnh đầu, gây nên thấp giọng quát mắng.

    "Ai nói hôm nay nghi xuất hành, đi ra ngoài liền trời mưa." Lục Dương oán trách một câu, có chút hối hận không có nói trước mang lên áo tơi.

    Hắn là lần đầu tiên đi xa nhà, không có kinh nghiệm gì, mưa rơi đột nhiên, ngâm hắn một thân, giày lầy lội không chịu nổi đi trên đường đều cảm thấy cảm nhận được mà đối diện chính mình ác ý —— hắn cần đem chân từ vũng bùn bên trong rút ra.

    Cộc cộc cộc thanh âm từ phía sau truyền đến, gây nên Lục Dương chú ý.

    Lục Dương quay đầu nhìn lại, phát hiện là một chiếc xe ngựa nhích lại gần mình, trên xe ngựa cũng không mã phu, ngựa già phảng phất biết đường, không cần ai đến khống chế nó.

    "Thật là thần dị ngựa." Lục Dương tán thưởng, ngựa già trên trán có mấy cái lân phiến, tựa như vảy rắn, hiển nhiên là một loại nào đó dị chủng yêu thú.

    Hắn mặc dù không hiểu trong đó giá trị, nhưng cũng biết rõ cái này thớt ngựa già trân quý.

    Tối thiểu nhất lấy hắn tài lực là mua không nổi.

    "Vị huynh đài này trong mưa dạo bước, quả nhiên là thật có nhã hứng, không ngại đến trong xe ngồi xuống?"

    Trong xe ngựa truyền đến nam tử cởi mở tiếng cười, Lục Dương tiếp nhận nam tử hảo ý, đem chân từ vũng bùn bên trong rút ra, vội vàng lên xe.

    "Làm phiền, tại hạ Lục Dương." Lục Dương cẩn thận nghiêm túc ngồi vào trong xe, sợ hãi nước mưa trên người cùng bùn đất làm bẩn lập tức xe.

    "Mạnh Cảnh Chu." Xe ngựa chủ nhân cùng thanh âm của hắn, là cái tùy tiện thanh niên, lạc quan cởi mở, phảng phất cùng ai đều có thể nói lên hai câu.

    "Lục huynh cũng là đến tham gia Vấn Đạo tông tuyển chọn?"

    "Thử thời vận mà thôi."

    Mạnh Cảnh Chu cười ha ha: "Lục huynh, thành thật một chút lại có làm sao, nếu ngươi thật chỉ là muốn chạm tìm vận may, liền sẽ không ở trong mưa dạo bước tiến về Vấn Đạo tông."

    Lục Dương có chút xấu hổ: "Ai không muốn tiến vào Vấn Đạo tông."

    Vấn Đạo tông, đứng hàng Trung Ương đại lục năm đại tiên môn một trong, tu tiên đại năng vô số kể, cường thịnh đến cực điểm, hôm nay Vấn Đạo tông chiêu thu đệ tử, không biết có bao nhiêu người nghĩ đến thử một lần.

    Lục Dương cùng Mạnh Cảnh Chu chính là hai trong đó.

    Lục Dương xuyên qua đến Trung Ương đại lục, phụ mẫu c·hết sớm, là dựa vào lấy phụ mẫu lưu lại một điểm di sản, cùng quê nhà cứu tế mới sống sót.

    Tại tiểu trấn sinh hoạt vài chục năm bên trong, hắn nghe thuyết thư tiên sinh giảng có Tiên nhân kiếm gõ Thiên môn, nghe nói qua năm trăm dặm bên ngoài Hà yêu xoay người, hồng thủy tràn lan, nghe nói qua Tiên Môn đệ tử phi kiếm trảm yêu, trừ ma vệ đạo, gặp qua lôi thôi đạo sĩ hãm hại lừa gạt, lăng không mà lên, trước mặt mọi người vượt ngục, lại bị lăng không mà lên quan gia bắt trở về.

    Kia thời điểm hắn liền biết rõ, nơi này không phải hắn quen thuộc thế giới, không phải hắn quen thuộc bất kỳ một cái triều đại nào, nơi này là cái người vĩ lực tập trung vào một thân tu tiên thế giới.

    Hắn nghĩ cầu tiên vấn đạo, học tập Trường Sinh tiên pháp.

    Vấn Đạo tông chính là hắn lựa chọn trạm thứ nhất.

    Lựa chọn Vấn Đạo tông không có khác nguyên nhân, đơn thuần là nhà hắn chung quanh không có cái khác tông môn, chỉ có Vấn Đạo tông một nhà.

    Vấn Đạo tông ở chỗ này, cái khác tông môn sẽ không tự chuốc nhục nhã, lựa chọn tại phụ cận khai tông lập phái.

    Tại trong lúc nói chuyện với nhau Lục Dương biết được Mạnh Cảnh Chu xuất từ tu tiên thế gia, đối với tu tiên tri thức nắm giữ muốn xa so với Lục Dương muốn bao nhiêu.

    "Vấn Đạo tông chiêu thu đệ tử yêu cầu là mười sáu tuổi trở xuống phàm nhân, không chỉ là Vấn Đạo tông, đại đa số tông môn đều là yêu cầu như thế."

    "Tu tiên một đường nói ngăn lại dài, Luyện Khí, Trúc Cơ, Kim Đan, Nguyên Anh, Hóa Thần, Luyện Hư, Hợp Thể, Độ Kiếp, mỗi cái cảnh giới đều là một đạo đường ranh giới, không biết kẹp lại bao nhiêu người, mười tiến một, hai mươi tiến một, thậm chí một trăm trong đó mới xuất hiện một cái."

    "Quyết định tu tiên thành tựu nhân tố có rất nhiều, tỷ như vận khí, trí tuệ, linh căn. . . Đối Lục huynh, ngươi biết mình là cái gì linh căn sao?"

    "Vấn Đạo tông tuy nói đối linh căn yêu cầu không cao, nhưng quá kém linh căn cũng là không muốn."

    Lục Dương nhíu mày, hắn đối linh căn cái từ này vẫn là từ thuyết thư tiên sinh nơi đó biết đến, cũng không biết mình là cái gì linh căn.

    "Không biết rõ, Mạnh huynh ngươi đây?"

    Mạnh Cảnh Chu sắc mặt biến đến mười phần hoang mang, đồng dạng lắc đầu: "Ta từng ở trong tộc khảo nghiệm qua linh căn, nhưng tộc lão mang bộ mặt sầu thảm, cũng không nói cho ta kết quả, chỉ nói là ta thiên phú kinh động như gặp thiên nhân, bái nhập năm đại tiên môn không thành vấn đề chờ ngày sau bái tại năm đại tiên môn lúc tự sẽ biết rõ, ta trong âm thầm vụng trộm hỏi phụ mẫu, bọn hắn bỉ tộc lão càng thêm ưu sầu, đồng dạng không nói cho ta."

    Lục Dương phỏng đoán nói: "Có thể là ngươi linh căn quá kinh thế hãi tục, dễ dàng cho Mạnh gia mang đến tai hoạ, chỉ có Vấn Đạo tông loại này quái vật khổng lồ mới có thể bảo trụ ngươi."

    "Cùng ta đoán đồng dạng." Mạnh Cảnh Chu vỗ Lục Dương bả vai, một bộ gặp được tri kỷ dáng vẻ, càng xem Lục Dương càng cảm thấy người này cùng mình đồng dạng tài hoa hơn người, là trời sinh tu đạo hạt giống.

    Lục Dương nghe bên ngoài càng lúc càng lớn tiếng mưa rơi, may mắn Mạnh Cảnh Chu để cho mình lên xe.

    "Dừng lại." Mạnh Cảnh Chu đột nhiên hô một cuống họng, ngựa già cộp cộp đi vài bước, chậm rãi dừng lại.

    Xe ngựa xem như một kiện dị bảo, Mạnh Cảnh Chu có thể nhìn thấy ngoài xe ngựa tình huống.

    Mạnh Cảnh Chu nhìn thấy ngoài xe ngựa mặt có một nữ tử đi tại trong mưa, cùng vừa rồi Lục Dương đồng dạng.

    "Vị tỷ tỷ này đi tại cái phương hướng này, chắc hẳn cũng là muốn đi Vấn Đạo tông tham gia khảo nghiệm, mưa rơi lớn như vậy, không Như Lai trên xe nghỉ chân một chút?"

    Nữ tử có chút kinh ngạc Mạnh Cảnh Chu đề nghị, nghĩ nghĩ, cũng liền đồng ý.

    Nữ tử vừa lên xe, Mạnh Cảnh Chu đem trên người áo tơi một phen, giao cho nàng: "Mặc vào đi."

    Lục Dương ngồi vào một góc khác, ngưng thần nhìn nữ tử.

    Nàng dung nhan xinh đẹp, trên đầu mộc mạc tóc đen bị nước mưa ngâm hơi có vẻ buông thõng, đôi mắt xinh đẹp, tròng mắt đen bóng, mặt không chút thay đổi, chỉ là bởi vì mưa rơi chà đạp mà hồng lên đôi môi, mới khiến cho nàng thoạt nhìn có mấy phần nhân khí.

    "Thật là cái thiên tiên tỷ tỷ, không biết là cái kia tông môn nhân vật." Lục Dương âm thầm phỏng đoán.

    "Hứa nhã." Nữ tử nói ra tên của mình, đối Mạnh Cảnh Chu cùng Lục Dương gật gật đầu: "Đa tạ hai vị."

    Lục Dương gãi gãi đầu, xấu hổ cười cười.

    Mạnh Cảnh Chu cười nói: "Không biết Hứa nhã muốn bái nhập Vấn Đạo tông cái nào phong?"

    Vấn Đạo tông chia làm Thái Nhất phong, Minh Kiếm phong, Chu Tước phong, Diệt Trần phong, Vấn Đạo phong, năm phong phân biệt quản lý bất đồng chức vụ.

    Thái Nhất phong là chưởng giáo cư ngụ chi địa, có thể bái nhập Thái Nhất phong là rất ít, có thể nói là năm phong chi thủ, là Vấn Đạo tông bên trong tu sĩ tha thiết ước mơ chi địa.

    Minh Kiếm phong như tên, tu kiếm chi địa, Vấn Đạo tông kiếm tu đại đa số đều là xuất từ Minh Kiếm phong, thực lực cực mạnh, cơ hồ có kiếm tu đều sẽ lựa chọn Minh Kiếm phong.

    Chu Tước phong là đan phong, chấp chưởng tông môn đan dược, Diệt Trần phong là đi ra ngoài vì tông môn làm việc, mà Vấn Đạo phong thì là tổng phong, mỗi cái đệ tử mới nhập môn, đều phải tại Vấn Đạo phong ở mấy năm, học tập các loại tri thức, căn cơ ổn thỏa sau đó, mới sẽ phân phối đi xuống.

    Hứa nhã không nghĩ nhiều, đơn giản nói: "Thái Nhất phong."

    Mạnh Cảnh Chu khẽ cười nói: "Quả nhiên là cùng ta giống nhau, đều là đối Thái Nhất phong cảm thấy hứng thú."

    Lục Dương kinh ngạc, không nghĩ tới cư nhiên có người cùng mình giống nhau nghĩ như vậy nhiều, không biết là Mạnh Cảnh Chu, vẫn là cái này vị tỷ tỷ, bọn hắn đều nghĩ muốn đi Thái Nhất phong.

    Nhưng mà. . .

    "Vấn Đạo tông tuyển chọn đệ tử, yêu cầu đối chiến, chọn được người xuất sắc tiến hành bồi dưỡng, ba người chúng ta nếu là lúc nào đó gặp mặt, không biết sẽ là cái gì cảnh tượng."

    Mạnh Cảnh Chu vui vẻ nói: "Lục huynh, đến lúc đó không thể lưu thủ à."

    "Nên thế." Lục Dương cười nói.

    Hứa nhã không có nói chuyện, chỉ là lẳng lặng nhìn bên ngoài, không biết đang suy nghĩ cái gì.
    """

let STORIES_DATA = [
    
    Story(storyName: "Ai Bảo Hắn Tu Tiên!",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin. Truyện dành cho ae nào quá chán mì ăn liền, ngựa giống, hệ thống,….Nhẩy hố đi đừng quan tâm mấy cái cmt vớ vẩn, tác người mới nhưng viết rất tâm huyết, khá chắc tay. Triển khai 2 thế giới hợp lý (TG main ở hiện đại, tu tiên toàn dân, dễ tra cứu trên mạng những kiến thức phổ cập, nói đến phổ cập thì TG của main nó phổ cập tu tiên như giáo dục bắt buộc vậy, người người tu tiên, hệ thống giáo dục rõ ràng nên ví dụ như TG tu tiên truyền thống ông chế đc 1 loại đan dược hoặc bùa cấp 3 là thành luyện Đan, chế phù sư tâm giải, nhưng TG của main phải tinh thông 10 loại trở lên và phải thi cử mới được cấp giấy phép cấp 3. Đấy nói 1 ví dụ thế cho ae hiểu sự chênh lệch, nhưng TG này tài nguyên thiếu thốn, yêu thú, yêu thực cấp cao thành quốc bảo, phải xin phép mới được lấy tài liệu để luyện Đan chế khí (máu, da lông hay cành lá linh thực)",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/ai-bao-han-tu-tien/300.jpg?1677860647",
          storyContent: storyContent
         ),
    Story(storyName: "Ta có một thế giới Tu Tiên",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin. Truyện dành cho ae nào quá chán mì ăn liền, ngựa giống, hệ thống,….Nhẩy hố đi đừng quan tâm mấy cái cmt vớ vẩn, tác người mới nhưng viết rất tâm huyết, khá chắc tay. Triển khai 2 thế giới hợp lý (TG main ở hiện đại, tu tiên toàn dân, dễ tra cứu trên mạng những kiến thức phổ cập, nói đến phổ cập thì TG của main nó phổ cập tu tiên như giáo dục bắt buộc vậy, người người tu tiên, hệ thống giáo dục rõ ràng nên ví dụ như TG tu tiên truyền thống ông chế đc 1 loại đan dược hoặc bùa cấp 3 là thành luyện Đan, chế phù sư tâm giải, nhưng TG của main phải tinh thông 10 loại trở lên và phải thi cử mới được cấp giấy phép cấp 3. Đấy nói 1 ví dụ thế cho ae hiểu sự chênh lệch, nhưng TG này tài nguyên thiếu thốn, yêu thú, yêu thực cấp cao thành quốc bảo, phải xin phép mới được lấy tài liệu để luyện Đan chế khí (máu, da lông hay cành lá linh thực)",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/ta-co-mot-the-gioi-tu-tien/300.jpg?1661651944",
          storyContent: storyContent
         ),
    Story(storyName: "Thần Thoại Kỷ Nguyên, Ta Tiến Hóa Thành Hằng Tinh Cấp Cự Thú",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin. Truyện dành cho ae nào quá chán mì ăn liền, ngựa giống, hệ thống,….Nhẩy hố đi đừng quan tâm mấy cái cmt vớ vẩn, tác người mới nhưng viết rất tâm huyết, khá chắc tay. Triển khai 2 thế giới hợp lý (TG main ở hiện đại, tu tiên toàn dân, dễ tra cứu trên mạng những kiến thức phổ cập, nói đến phổ cập thì TG của main nó phổ cập tu tiên như giáo dục bắt buộc vậy, người người tu tiên, hệ thống giáo dục rõ ràng nên ví dụ như TG tu tiên truyền thống ông chế đc 1 loại đan dược hoặc bùa cấp 3 là thành luyện Đan, chế phù sư tâm giải, nhưng TG của main phải tinh thông 10 loại trở lên và phải thi cử mới được cấp giấy phép cấp 3. Đấy nói 1 ví dụ thế cho ae hiểu sự chênh lệch, nhưng TG này tài nguyên thiếu thốn, yêu thú, yêu thực cấp cao thành quốc bảo, phải xin phép mới được lấy tài liệu để luyện Đan chế khí (máu, da lông hay cành lá linh thực)",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/than-thoai-ky-nguyen-ta-tien-hoa-thanh-hang-tinh-cap-cu-thu/300.jpg?1705212729",
          storyContent: storyContent
         ),
    Story(storyName: "Toàn Dân Tu Tiên: Nơi Này Tu Tiên Quá Cao Cấp",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin. Truyện dành cho ae nào quá chán mì ăn liền, ngựa giống, hệ thống,….Nhẩy hố đi đừng quan tâm mấy cái cmt vớ vẩn, tác người mới nhưng viết rất tâm huyết, khá chắc tay. Triển khai 2 thế giới hợp lý (TG main ở hiện đại, tu tiên toàn dân, dễ tra cứu trên mạng những kiến thức phổ cập, nói đến phổ cập thì TG của main nó phổ cập tu tiên như giáo dục bắt buộc vậy, người người tu tiên, hệ thống giáo dục rõ ràng nên ví dụ như TG tu tiên truyền thống ông chế đc 1 loại đan dược hoặc bùa cấp 3 là thành luyện Đan, chế phù sư tâm giải, nhưng TG của main phải tinh thông 10 loại trở lên và phải thi cử mới được cấp giấy phép cấp 3. Đấy nói 1 ví dụ thế cho ae hiểu sự chênh lệch, nhưng TG này tài nguyên thiếu thốn, yêu thú, yêu thực cấp cao thành quốc bảo, phải xin phép mới được lấy tài liệu để luyện Đan chế khí (máu, da lông hay cành lá linh thực)",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/toan-dan-tu-tien-noi-nay-tu-tien-qua-cao-cap/300.jpg?1714828514",
          storyContent: storyContent
         ),
    Story(storyName: "Vạn Giới Thủ Môn Nhân",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin. Truyện dành cho ae nào quá chán mì ăn liền, ngựa giống, hệ thống,….Nhẩy hố đi đừng quan tâm mấy cái cmt vớ vẩn, tác người mới nhưng viết rất tâm huyết, khá chắc tay. Triển khai 2 thế giới hợp lý (TG main ở hiện đại, tu tiên toàn dân, dễ tra cứu trên mạng những kiến thức phổ cập, nói đến phổ cập thì TG của main nó phổ cập tu tiên như giáo dục bắt buộc vậy, người người tu tiên, hệ thống giáo dục rõ ràng nên ví dụ như TG tu tiên truyền thống ông chế đc 1 loại đan dược hoặc bùa cấp 3 là thành luyện Đan, chế phù sư tâm giải, nhưng TG của main phải tinh thông 10 loại trở lên và phải thi cử mới được cấp giấy phép cấp 3. Đấy nói 1 ví dụ thế cho ae hiểu sự chênh lệch, nhưng TG này tài nguyên thiếu thốn, yêu thú, yêu thực cấp cao thành quốc bảo, phải xin phép mới được lấy tài liệu để luyện Đan chế khí (máu, da lông hay cành lá linh thực)",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/van-gioi-thu-mon-nhan/300.jpg?1702613796",
          storyContent: storyContent
         ),
    Story(storyName: "Đại Chu Tiên Lại",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin. Truyện dành cho ae nào quá chán mì ăn liền, ngựa giống, hệ thống,….Nhẩy hố đi đừng quan tâm mấy cái cmt vớ vẩn, tác người mới nhưng viết rất tâm huyết, khá chắc tay. Triển khai 2 thế giới hợp lý (TG main ở hiện đại, tu tiên toàn dân, dễ tra cứu trên mạng những kiến thức phổ cập, nói đến phổ cập thì TG của main nó phổ cập tu tiên như giáo dục bắt buộc vậy, người người tu tiên, hệ thống giáo dục rõ ràng nên ví dụ như TG tu tiên truyền thống ông chế đc 1 loại đan dược hoặc bùa cấp 3 là thành luyện Đan, chế phù sư tâm giải, nhưng TG của main phải tinh thông 10 loại trở lên và phải thi cử mới được cấp giấy phép cấp 3. Đấy nói 1 ví dụ thế cho ae hiểu sự chênh lệch, nhưng TG này tài nguyên thiếu thốn, yêu thú, yêu thực cấp cao thành quốc bảo, phải xin phép mới được lấy tài liệu để luyện Đan chế khí (máu, da lông hay cành lá linh thực)",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/dai-chu-tien-lai/300.jpg?1591757003",
          storyContent: storyContent
         ),
    Story(storyName: "Trùng Sinh Phi Dương Niên Đại",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin. Truyện dành cho ae nào quá chán mì ăn liền, ngựa giống, hệ thống,….Nhẩy hố đi đừng quan tâm mấy cái cmt vớ vẩn, tác người mới nhưng viết rất tâm huyết, khá chắc tay. Triển khai 2 thế giới hợp lý (TG main ở hiện đại, tu tiên toàn dân, dễ tra cứu trên mạng những kiến thức phổ cập, nói đến phổ cập thì TG của main nó phổ cập tu tiên như giáo dục bắt buộc vậy, người người tu tiên, hệ thống giáo dục rõ ràng nên ví dụ như TG tu tiên truyền thống ông chế đc 1 loại đan dược hoặc bùa cấp 3 là thành luyện Đan, chế phù sư tâm giải, nhưng TG của main phải tinh thông 10 loại trở lên và phải thi cử mới được cấp giấy phép cấp 3. Đấy nói 1 ví dụ thế cho ae hiểu sự chênh lệch, nhưng TG này tài nguyên thiếu thốn, yêu thú, yêu thực cấp cao thành quốc bảo, phải xin phép mới được lấy tài liệu để luyện Đan chế khí (máu, da lông hay cành lá linh thực)",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/trung-sinh-phi-duong-nien-dai/300.jpg?1653713220",
          storyContent: storyContent
         ),
    Story(storyName: "Ai Bảo Hắn Tu Tiên!",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin. Truyện dành cho ae nào quá chán mì ăn liền, ngựa giống, hệ thống,….Nhẩy hố đi đừng quan tâm mấy cái cmt vớ vẩn, tác người mới nhưng viết rất tâm huyết, khá chắc tay. Triển khai 2 thế giới hợp lý (TG main ở hiện đại, tu tiên toàn dân, dễ tra cứu trên mạng những kiến thức phổ cập, nói đến phổ cập thì TG của main nó phổ cập tu tiên như giáo dục bắt buộc vậy, người người tu tiên, hệ thống giáo dục rõ ràng nên ví dụ như TG tu tiên truyền thống ông chế đc 1 loại đan dược hoặc bùa cấp 3 là thành luyện Đan, chế phù sư tâm giải, nhưng TG của main phải tinh thông 10 loại trở lên và phải thi cử mới được cấp giấy phép cấp 3. Đấy nói 1 ví dụ thế cho ae hiểu sự chênh lệch, nhưng TG này tài nguyên thiếu thốn, yêu thú, yêu thực cấp cao thành quốc bảo, phải xin phép mới được lấy tài liệu để luyện Đan chế khí (máu, da lông hay cành lá linh thực)",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/ai-bao-han-tu-tien/300.jpg?1677860647",
          storyContent: storyContent
         ),
    Story(storyName: "Vừa Thành Tiên Thần, Con Cháu Cầu Ta Xuất Sơn",
          description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin. Truyện dành cho ae nào quá chán mì ăn liền, ngựa giống, hệ thống,….Nhẩy hố đi đừng quan tâm mấy cái cmt vớ vẩn, tác người mới nhưng viết rất tâm huyết, khá chắc tay. Triển khai 2 thế giới hợp lý (TG main ở hiện đại, tu tiên toàn dân, dễ tra cứu trên mạng những kiến thức phổ cập, nói đến phổ cập thì TG của main nó phổ cập tu tiên như giáo dục bắt buộc vậy, người người tu tiên, hệ thống giáo dục rõ ràng nên ví dụ như TG tu tiên truyền thống ông chế đc 1 loại đan dược hoặc bùa cấp 3 là thành luyện Đan, chế phù sư tâm giải, nhưng TG của main phải tinh thông 10 loại trở lên và phải thi cử mới được cấp giấy phép cấp 3. Đấy nói 1 ví dụ thế cho ae hiểu sự chênh lệch, nhưng TG này tài nguyên thiếu thốn, yêu thú, yêu thực cấp cao thành quốc bảo, phải xin phép mới được lấy tài liệu để luyện Đan chế khí (máu, da lông hay cành lá linh thực)",
          rate: 4.5,
          type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
          author: "Tối Bạch Đích Ô Nha",
          totalChapters: 1143,
          readCount: 2216941,
          nominationCount: 8623,
          imageURL: "https://static.cdnno.com/poster/vua-thanh-tien-than-con-chau-cau-ta-dang-co/300.jpg?1665195835",
          storyContent: storyContent
         ),
]

//MAGES_DATA.map { imageURL in
//    return Story(
//
//        storyName: "Ai Bảo Hắn Tu Tiên!",
//        description: "Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục vốn chính là lệch ra, không phải ta mang lệch ra, đều nói sách sử là người thắng viết, vậy tại sao ta chiến thắng còn luôn luôn có người vu hãm ta? Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn nói như thế, biểu thị phi thường phẫn nộ. Ngày thứ hai.Ta lặp đi lặp lại cường điệu, Tu Tiên giới tập tục là ta mang lệch ra. Lục Dương Kiếm Tiên đối mặt phóng viên phỏng vấn lúc nói như thế, biểu thị phi thường phẫn nộ. —— « tu tiên nhật báo » là ngài đưa tin. Truyện dành cho ae nào quá chán mì ăn liền, ngựa giống, hệ thống,….Nhẩy hố đi đừng quan tâm mấy cái cmt vớ vẩn, tác người mới nhưng viết rất tâm huyết, khá chắc tay. Triển khai 2 thế giới hợp lý (TG main ở hiện đại, tu tiên toàn dân, dễ tra cứu trên mạng những kiến thức phổ cập, nói đến phổ cập thì TG của main nó phổ cập tu tiên như giáo dục bắt buộc vậy, người người tu tiên, hệ thống giáo dục rõ ràng nên ví dụ như TG tu tiên truyền thống ông chế đc 1 loại đan dược hoặc bùa cấp 3 là thành luyện Đan, chế phù sư tâm giải, nhưng TG của main phải tinh thông 10 loại trở lên và phải thi cử mới được cấp giấy phép cấp 3. Đấy nói 1 ví dụ thế cho ae hiểu sự chênh lệch, nhưng TG này tài nguyên thiếu thốn, yêu thú, yêu thực cấp cao thành quốc bảo, phải xin phép mới được lấy tài liệu để luyện Đan chế khí (máu, da lông hay cành lá linh thực)",
//        rate: 4.5,
//        type: ["Tiên hiệp", "Vô sỉ", "Cổ điển tiên hiệp"],
//        author: "Tối Bạch Đích Ô Nha",
//        totalChapters: 1143,
//        readCount: 2216941,
//        nominationCount: 8623,
//        imageURL: imageURL
//    )
//}
