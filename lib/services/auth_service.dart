import '../models/user_model.dart';

class AuthService {
  // Simulasi database pengguna
  final List<User> _users = [];

  AuthService() {
    // Tambahkan pengguna default
    _users.add(User(phoneNumber: '082179855636', password: '12345678'));
  }

  // Fungsi untuk mendaftarkan pengguna baru
  bool register(User user) {
    // Periksa apakah nomor telepon sudah terdaftar
    for (var existingUser in _users) {
      if (existingUser.phoneNumber == user.phoneNumber) {
        return false; // Pengguna sudah terdaftar
      }
    }
    _users.add(user);
    return true;
  }

  // Fungsi untuk login pengguna
  bool login(String phoneNumber, String password) {
    for (var user in _users) {
      if (user.phoneNumber == phoneNumber && user.password == password) {
        return true; // Login berhasil
      }
    }
    return false; // Login gagal
  }
}