import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/widgets/custom_app_bar.dart';

class DummyScreen extends StatefulWidget {
  const DummyScreen({super.key});

  @override
  State<DummyScreen> createState() => _DummyScreenState();
}

class _DummyScreenState extends State<DummyScreen>
    with AutomaticKeepAliveClientMixin<DummyScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: CustomAppBar(isBackButtonExist: false),
    );
  }
}
