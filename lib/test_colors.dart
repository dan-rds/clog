import 'package:clog/main.dart';

main() {
  print("====================");
  clog.e("test error");
  clog.e("test error with background", bg: true);
  clog.w("test Warning");
  clog.w("test warning with background", bg: true);
  clog.d("test debug");
  clog.d("test debug with background", bg: true);
  clog.i("test info");
  clog.i("test info with background", bg: true);
  print("====================");
}
