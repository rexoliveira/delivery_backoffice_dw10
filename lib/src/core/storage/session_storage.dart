import 'dart:html';

import 'storage.dart';

class SessionStorage implements Storage {
  @override
  void setdata(String key, String value) => window.sessionStorage[key] = value;
  @override
  String getData(String key) => window.sessionStorage[key] ?? '';

  @override
  void clean() => window.sessionStorage.clear();
}
