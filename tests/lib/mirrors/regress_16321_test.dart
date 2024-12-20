// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Formatting can break multitests, so don't format them.
// dart format off

// Regression test for Issue 16321.
// (Type errors in metadata crashed the VM in checked mode).

import "dart:mirrors";

class TypedBox {
  final List<String> contents;
  const TypedBox(this.contents);
}

@TypedBox('foo') //# 01: compile-time error
@TypedBox(const ['foo'])
class C {}

main() {
  reflectClass(C).metadata;
}
