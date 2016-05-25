// Copyright 2016 Google Inc. Use of this source code is governed by an
// MIT-style license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'value/boolean.dart';
import 'value/string.dart';

export 'value/boolean.dart';
export 'value/identifier.dart';
export 'value/list.dart';
export 'value/string.dart';

abstract class Value {
  const Value();

  // TODO: call the proper stringifying method
  Value unaryPlus() => new SassString("+$this");

  Value unaryMinus() => new SassString("-$this");

  Value unaryDivide() => new SassString("/$this");

  Value unaryNot() => Boolean.sassFalse;
}