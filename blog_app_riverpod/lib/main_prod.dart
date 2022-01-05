import 'package:blog_app_riverpod/app.dart';
import 'package:blog_app_riverpod/config.dart';
import 'package:blog_app_riverpod/global_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  final config = Config(
    envName: 'prod',
    baseUrl: 'https://bettercoding.dev/api/',
    debug: false,
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
