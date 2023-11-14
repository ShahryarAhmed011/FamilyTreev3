

import 'package:family_tree/presentation/base/widget/widget_component.dart';
import 'package:family_tree/presentation/modules/splash/bloc/splash_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProgressbarWidget extends WidgetComponent<SplashBloc,SplashState,ProgressbarState>{

  @override
  Widget buildComponent(BuildContext context, ProgressbarState state) {
    return Positioned(
      left: 95,
      top: 90,
      child: SizedBox(
          width: (state.isInProgress)?20:100,
          height: 35,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff12594d),
              borderRadius: BorderRadius.circular(18),
            ),
            padding: EdgeInsets.zero,
          )),
    );
  }

  @override
  Widget buildEmpty(BuildContext context) {
    return Positioned(
      left: 95,
      top: 90,
      child: SizedBox(
          width: 99,
          height: 35,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff12594d),
              borderRadius: BorderRadius.circular(18),
            ),
            padding: EdgeInsets.zero,
          )),
    );
  }


}