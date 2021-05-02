import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'folder_close': Icons.folder_shared,
  'remove_alert': Icons.remove_from_queue,
  'list': Icons.list_alt_outlined,
  'donut_large': Icons.donut_large,
  'input': Icons.input,
};

Icon getIcon(String iconName) {
  return Icon(_icons[iconName], color: Colors.blue);
}
