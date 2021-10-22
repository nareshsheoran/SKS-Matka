class UserProfileService {
  static late final UserProfileService _instance;

  UserProfileService._internal() {}

  static UserProfileService getInstance() {
    if (_instance == null) {
      _instance = UserProfileService._internal();
    }
    return _instance;
  }

  String? name;
  int? phoneNumber;
}
