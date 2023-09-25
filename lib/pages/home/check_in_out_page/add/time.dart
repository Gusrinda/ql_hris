class MyTimer {
  Stream<DateTime> getDateTimeNow() {
    return Stream.periodic(const Duration(seconds: 1), (_){
      return DateTime.now().toLocal();
    });
  }
}
