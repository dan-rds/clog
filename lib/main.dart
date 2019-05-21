import 'dart:core';
import 'dart:collection';

import 'dart:io';

String _start = "\x1B[";
String black_code = "30";
String red_code = "31";
String green_code = "32";
String yellow_code = "33";
String blue_code = "34";
String magenta_code = "35";
String cyan_code = "36";
String white_code = "37";
String reset_code = "0";
String _end = "m";

String red_bg = "41;30";
String yellow_bg = "43;30";
String blue_bg = "44;30";
String green_bg = "42;30";
String esc_sequence(color) => _start + color + "m";

String build_string(s, color_code) => esc_sequence(color_code) + s + esc_sequence('0');

class clog {
  static void all() {
    List log_types = ["ERROR", "DEBUG", "WARNING", "INFO"];
    List color_log_type = [red_code, blue_code, yellow_code, green_code];
    for (var i = 0; i < log_types.length; i++) {
      //print(log_types[i] + color_log_type[1]);
      print(build_string(log_types[i], color_log_type[i]));
    }
  }

  static void e(String s, {bool bg: false}) {
    print(build_string(s, bg ? red_bg : red_code));
  }

  static void w(String s, {bool bg: false}) {
    print(build_string(s, bg ? yellow_bg : yellow_code));
  }

  static void i(String s, {bool bg: false}) {
    print(build_string(s, bg ? blue_bg : blue_code));
  }

  static void d(String s, {bool bg: false}) {
    print(build_string(s, bg ? green_bg : green_code));
  }
}
