//Định nghĩa lớp Campus để lưu trữ thông tin các cơ sở HUTECH
class Campus {
  final String name; // Tên campus
  final String address; // Địa chỉ campus
  final String image; // Hình ảnh campus
  final String color; // Màu sắc đại diện (hex)

  Campus({
    required this.name,
    required this.address,
    required this.image,
    required this.color,
  });
}
