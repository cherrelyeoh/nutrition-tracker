import 'package:flutter/foundation.dart';

class UserModel extends ChangeNotifier {
  num? _userId;
  String? _userName;

  // Getter methods to access the data
  num? get userId => _userId;
  String? get userName => _userName;

  // Method to set user data
  void setUserData({required num userId, required String userName}) {
    _userId = userId;
    _userName = userName;
    notifyListeners(); // Notify listeners when the data changes
  }

  // Method to clear user data
  void clearUserData() {
    _userId = null;
    _userName = null;
    notifyListeners();
  }
}
