import 'package:blog_app_riverpod/app.dart';
import 'package:blog_app_riverpod/config.dart';
import 'package:blog_app_riverpod/global_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  final config = Config(
    envName: 'dev',
    baseUrl: 'http://192.168.0.206:3000',
    debug: true,
  );

  runApp(
    ProviderScope(
      overrides: [
        configProvider.overrideWithValue(config),
      ],
      child: const App(),
    ),
  );
}
