// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TerminalStruct extends BaseStruct {
  TerminalStruct({
    String? llamaJson,
    String? output,
    int? terminalId,
    String? engagement,
    bool? twitter,
    DateTime? createdAt,
  })  : _llamaJson = llamaJson,
        _output = output,
        _terminalId = terminalId,
        _engagement = engagement,
        _twitter = twitter,
        _createdAt = createdAt;

  // "llama_json" field.
  String? _llamaJson;
  String get llamaJson => _llamaJson ?? '';
  set llamaJson(String? val) => _llamaJson = val;

  bool hasLlamaJson() => _llamaJson != null;

  // "output" field.
  String? _output;
  String get output => _output ?? '';
  set output(String? val) => _output = val;

  bool hasOutput() => _output != null;

  // "terminal_id" field.
  int? _terminalId;
  int get terminalId => _terminalId ?? 0;
  set terminalId(int? val) => _terminalId = val;

  void incrementTerminalId(int amount) => terminalId = terminalId + amount;

  bool hasTerminalId() => _terminalId != null;

  // "engagement" field.
  String? _engagement;
  String get engagement => _engagement ?? '';
  set engagement(String? val) => _engagement = val;

  bool hasEngagement() => _engagement != null;

  // "twitter" field.
  bool? _twitter;
  bool get twitter => _twitter ?? false;
  set twitter(bool? val) => _twitter = val;

  bool hasTwitter() => _twitter != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static TerminalStruct fromMap(Map<String, dynamic> data) => TerminalStruct(
        llamaJson: data['llama_json'] as String?,
        output: data['output'] as String?,
        terminalId: castToType<int>(data['terminal_id']),
        engagement: data['engagement'] as String?,
        twitter: data['twitter'] as bool?,
        createdAt: data['created_at'] as DateTime?,
      );

  static TerminalStruct? maybeFromMap(dynamic data) =>
      data is Map ? TerminalStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'llama_json': _llamaJson,
        'output': _output,
        'terminal_id': _terminalId,
        'engagement': _engagement,
        'twitter': _twitter,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'llama_json': serializeParam(
          _llamaJson,
          ParamType.String,
        ),
        'output': serializeParam(
          _output,
          ParamType.String,
        ),
        'terminal_id': serializeParam(
          _terminalId,
          ParamType.int,
        ),
        'engagement': serializeParam(
          _engagement,
          ParamType.String,
        ),
        'twitter': serializeParam(
          _twitter,
          ParamType.bool,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static TerminalStruct fromSerializableMap(Map<String, dynamic> data) =>
      TerminalStruct(
        llamaJson: deserializeParam(
          data['llama_json'],
          ParamType.String,
          false,
        ),
        output: deserializeParam(
          data['output'],
          ParamType.String,
          false,
        ),
        terminalId: deserializeParam(
          data['terminal_id'],
          ParamType.int,
          false,
        ),
        engagement: deserializeParam(
          data['engagement'],
          ParamType.String,
          false,
        ),
        twitter: deserializeParam(
          data['twitter'],
          ParamType.bool,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'TerminalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TerminalStruct &&
        llamaJson == other.llamaJson &&
        output == other.output &&
        terminalId == other.terminalId &&
        engagement == other.engagement &&
        twitter == other.twitter &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([llamaJson, output, terminalId, engagement, twitter, createdAt]);
}

TerminalStruct createTerminalStruct({
  String? llamaJson,
  String? output,
  int? terminalId,
  String? engagement,
  bool? twitter,
  DateTime? createdAt,
}) =>
    TerminalStruct(
      llamaJson: llamaJson,
      output: output,
      terminalId: terminalId,
      engagement: engagement,
      twitter: twitter,
      createdAt: createdAt,
    );
