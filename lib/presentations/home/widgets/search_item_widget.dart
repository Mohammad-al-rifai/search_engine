import 'package:flutter/material.dart';

import '../../../data/models/search_model.dart';
import '../../components/pair_widget.dart';
import '../../components/values_manager.dart';
import '../../resourses/color_manager.dart';

Widget buildSearchItem({required SearchData data}) {
  return Container(
    margin: const EdgeInsetsDirectional.all(AppMargin.m8),
    padding: const EdgeInsetsDirectional.all(AppPadding.p8),
    decoration: BoxDecoration(
      color: ColorManager.white,
      borderRadius: BorderRadiusDirectional.circular(AppSize.s8),
      boxShadow: const [
        BoxShadow(
          color: ColorManager.grey,
          blurRadius: 2.0,
        ),
      ],
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        PairWidget(label: 'Title', value: data.title),
        PairWidget(label: 'Abstract', value: data.abstract),
      ],
    ),
  );
}
