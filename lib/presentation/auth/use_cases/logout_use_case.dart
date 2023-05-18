class LogoutUseCase {
  Future<String?> call() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    return null;
  }
}
