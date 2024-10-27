import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true, // Đặt phần thân kéo dài ra phía sau AppBar
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // AppBar trong suốt
        elevation: 0, // Loại bỏ bóng của AppBar
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Ảnh nền cho toàn bộ màn hình
          Positioned.fill(
            child: Image.asset(
              'assets/hustc1.jpg', // Thay 'hustc1.jpg' bằng đường dẫn tới ảnh của bạn
              fit: BoxFit.cover, // Điều chỉnh để ảnh bao phủ toàn bộ màn hình
            ),
          ),
          // Khung trong suốt mở rộng gần hết màn hình
          Center(
            child: Stack(
              clipBehavior: Clip.none, // Cho phép logo vượt ra khỏi Container
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.fromLTRB(20, 60, 20, 20), // Thêm khoảng trống trên cho logo
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5), // Màu đen trong suốt
                    borderRadius: BorderRadius.circular(15), // Bo góc khung
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 40), // Khoảng trống dưới logo
                      const Text(
                        "Đăng nhập",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      const SizedBox(height: 20),
                      // Các trường nhập liệu
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white54),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Mật khẩu",
                          hintStyle: TextStyle(color: Colors.white54),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                // Logo đè lên viền của Container
                Positioned(
                  top: -40, // Vị trí trên Container (âm để nó nhô ra khỏi viền)
                  left: (MediaQuery.of(context).size.width * 0.9) / 2 - 60,
                  child: Container(
                    width: 120, // Kích thước logo nhỏ hơn
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    padding: const EdgeInsets.all(5), // Đệm logo vào bên trong
                    child: Image.asset(
                      "assets/logohust.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
