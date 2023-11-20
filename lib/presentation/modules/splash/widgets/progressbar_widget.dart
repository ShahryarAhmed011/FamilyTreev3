

import 'package:family_tree/presentation/base/widget/widget_component.dart';
import 'package:family_tree/presentation/modules/splash/bloc/splash_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressbarWidget extends WidgetComponent<SplashBloc,SplashState,ProgressbarState>{

  @override
  Widget buildComponent(BuildContext context, ProgressbarState state) {
    return Positioned(
      left: 95,
      top: 90,
      child: SizedBox(
          width: (state.isInProgress)?20:100,
          height: 35,
          child: LinearPercentIndicator(
            curve: Curves.bounceIn,
            barRadius: const Radius.circular(25),
            animation: true,
            animationDuration: 10000,
            lineHeight: 40,
            percent: 0.8,
            animateFromLastPercent: true,
            progressColor: const Color(0xFF6FC276),
            backgroundColor: Colors.green.shade200,
          )),
    );
  }

  @override
  Widget buildEmpty(BuildContext context) {
    return
    LinearPercentIndicator(
    barRadius: const Radius.circular(25),
    animation: true,
    animationDuration: 10000,
    lineHeight: 40,
    percent: 0.8,
    progressColor: const Color(0xFF6FC276),
    backgroundColor: Colors.green.shade200,
    );
  }


}