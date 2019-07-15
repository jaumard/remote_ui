import 'package:flutter/material.dart';
import 'package:remote_ui/remote_ui.dart';
import 'package:remote_ui/src/parsers/default_parser.dart';
import 'package:remote_ui/src/widgets/remote_switch.dart';

class SwitchParser extends WidgetParser with ColorHexParser {
  Widget parse(BuildContext context, Map<String, dynamic> definition, Map<String, dynamic> data, RemoteWidgetFactory factory) {
    return RemoteSwitch(
      id: definition['id'],
      value: definition['value'] ?? false,
      activeColor: definition.containsKey('activeColor') ? Color(parseHex(definition['activeColor'])) : null,
      activeTrackColor: definition.containsKey('activeTrackColor') ? Color(parseHex(definition['activeTrackColor'])) : null,
      inactiveThumbColor: definition.containsKey('inactiveThumbColor') ? Color(parseHex(definition['inactiveThumbColor'])) : null,
      inactiveTrackColor: definition.containsKey('inactiveTrackColor') ? Color(parseHex(definition['inactiveTrackColor'])) : null,
    );
  }
}
