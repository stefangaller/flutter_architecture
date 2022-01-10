import 'package:blog_app_riverpod_controller/app.dart';
import 'package:blog_app_riverpod_controller/config.dart';
import 'package:blog_app_riverpod_controller/global_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  final config = Config(
    envName: 'prod',
    // for demonstration purposes, this url does not exist
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
