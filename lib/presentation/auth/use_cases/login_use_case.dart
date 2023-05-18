class LoginUseCase {
  Future<String> call(String username) async {
    await Future.delayed(const Duration(seconds: 1));
    return username;
  }
}
