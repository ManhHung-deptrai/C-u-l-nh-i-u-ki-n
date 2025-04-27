//CÂU LỆNH ĐIỀU KIỆN --> BOOLEAN
//CÚ PHÁP
//var score = 10
////-->true/false
//if (score > 11) {
//    print ("You passed")
//}else if (score > 12){
//    print ("Lon hon 12")
//}else if (score == 10){
//    print ("Điểm bạn bằng 10")
//}
//else{
//    print ("Điểm bạn nhỏ hơn 10")
//    
//}
//VD
var diemTB = 8
if (diemTB > 8 ) {
    print ("Hs giỏi")
}
else if (diemTB < 8 ) {
    print ("Hs yếu")
}
else if (diemTB == 8 ) {
    print ("Hs khá")
}

//BÀI TẬP
//1
let number1 = 0

if number1 > 0 {
    print("Số dương")
} else if number1 < 0 {
    print("Số âm")
} else {
    print("Số 0")
}

//2
let number2 = 7
if number2 % 2 == 0 {
    print("Chẵn")
}else{
    print("Số lẻ")
}

//3
let age = 5
if age < 6 || age > 60{
    print("Giảm giá 50%")
}else{
    print("Không giảm giá")
}

//4
let month = 3

if month >= 3 && month <= 5 {
    print("Mùa Xuân")
} else if month >= 6 && month <= 8 {
    print("Mùa Hạ")
} else if month >= 9 && month <= 11 {
    print("Mùa Thu")
} else if month == 12 || month == 1 || month == 2 {
    print("Mùa Đông")
}

//5
let dienTieuThu = 450

var tongTien:Double

if dienTieuThu <= 50 {
    tongTien = Double(dienTieuThu) * 1500
} else if dienTieuThu <= 100 {
    tongTien = (50 * 1500) + (Double(dienTieuThu - 50) * 2000)
} else {
    tongTien = (50 * 1500) + (50 * 2000) + (Double(dienTieuThu - 100) * 2500)
}

print("Tổng tiền phải trả: \(tongTien)đ")

//6

let username = "admin"
let pass = 123456

if username == "admin" && pass == 123456{
    print("Đăng nhập thành công")
}else{
    print("Đăng nhập thất bại")
}
