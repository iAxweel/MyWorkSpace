import 'dart:ui';

import 'package:myworkspace/models/categoryworker.dart';

import 'category.dart';


class SubCategory extends Category{

  List<CategoryWorker> workers;

  SubCategory({
    required this.workers,
    required String name,
    required String icon,
    required Color color,
    required String imgName,

  }): super(
    name: name,
    color: color,
    icon: icon,
    imgName: imgName,
  );
}

