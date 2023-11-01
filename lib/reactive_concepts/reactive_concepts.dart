import 'dart:convert';

import 'package:dummy/reactive_concepts/getx/getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

part 'components/numerical.dart';
part 'components/StringUpdates.dart';
part 'components/listwithmodelconcept.dart';
part 'components/simple_concept.dart';
part 'components/custom_type.dart';

part 'model/modellist.dart';

class ReactiveConcepts extends StatelessWidget {
  //fetch controller

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Numerical(),
        StringUpdates(),
        ListWithModels(),
        CustoType(),
        SimpleConcept()
      ],
    );
  }
}
