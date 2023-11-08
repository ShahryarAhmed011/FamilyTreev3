import 'package:easy_localization/easy_localization.dart';
import 'package:family_tree/presentation/extensions/context_extensions.dart';
import 'package:family_tree/presentation/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import '../../base/screen/stateful_screen.dart';
import 'bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Center(child: Text("FT Splash"),));
  }
}
