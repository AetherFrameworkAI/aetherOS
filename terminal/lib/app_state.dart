import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  TerminalStruct _Terminal = TerminalStruct();
  TerminalStruct get Terminal => _Terminal;
  set Terminal(TerminalStruct value) {
    _Terminal = value;
  }

  void updateTerminalStruct(Function(TerminalStruct) updateFn) {
    updateFn(_Terminal);
  }
}
