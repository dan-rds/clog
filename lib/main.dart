import 'dart:core';

import 'dart:io';

clog() {
  var s = "___string instance";
  print(s);
  print(s.runtimeType);
  Process.run('ls', ['-l']).then((ProcessResult results) {
    print(results.stdout);
  });
}
