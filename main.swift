
import Foundation

struct Student {
    let name: String
    let id: String
    let score: Double
}

var students: [Student] = []

func addStudent() {
    print("Nhập tên học sinh:")
    guard let name = readLine() else { return }
    
    print("Nhập ID học sinh:")
    guard let id = readLine() else { return }
    
    print("Nhập điểm học sinh:")
    guard let scoreString = readLine(), let score = Double(scoreString) else { return }
    
    let student = Student(name: name, id: id, score: score)
    students.append(student)
    print("Học sinh đã được thêm vào.")
}

func displayStudents() {
    if students.isEmpty {
        print("Danh sách học sinh trống.")
        return
    }
    
    print("Danh sách học sinh:")
    for student in students {
        print("Tên: \(student.name), ID: \(student.id), Điểm: \(student.score)")
    }
}

func searchStudent() {
    print("Nhập ID học sinh cần tìm:")
    guard let id = readLine() else { return }
    
    if let student = students.first(where: { $0.id == id }) {
        print("Học sinh tìm thấy: Tên: \(student.name), ID: \(student.id), Điểm: \(student.score)")
    } else {
        print("Không tìm thấy học sinh với ID \(id).")
    }
}

func mainMenu() {
    while true {
        print("\nDANH SÁCH QUẢN LÝ HỌC SINH")
        print("1. Thêm học sinh")
        print("2. Hiển thị danh sách học sinh")
        print("3. Tìm kiếm học sinh")
        print("4. Thoát chương trình")
        
        if let choice = readLine() {
            switch choice {
            case "1":
                addStudent()
            case "2":
                displayStudents()
            case "3":
                searchStudent()
            case "4":
                print("Đã thoát chương trình.")
                exit(0)
            default:
                print("Lựa chọn không hợp lệ. Vui lòng thử lại.")
            }
        }
    }
}

mainMenu()
