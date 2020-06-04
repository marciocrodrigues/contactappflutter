import 'dart:io' show Platform;
import 'package:contatoapp/android/android.app.dart';
import 'package:contatoapp/ios/ios.app.dart';
import 'package:flutter/material.dart';

void main() {
  Platform.isIOS ? runApp(IOSApp()) : runApp(IOSApp());
}

