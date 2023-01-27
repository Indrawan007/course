import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/intoduction_controller.dart';

class IntoductionView extends GetView<IntoductionController> {
  const IntoductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IntoductionView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            'IntoductionView is working',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(),
        ],
      ),
    );
  }
}
