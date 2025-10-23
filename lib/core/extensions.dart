import 'package:flutter/widgets.dart';

extension WidgetStatePropertyExts<T> on T {
  WidgetStatePropertyAll<T> get wsp => WidgetStatePropertyAll<T>(this); 
}