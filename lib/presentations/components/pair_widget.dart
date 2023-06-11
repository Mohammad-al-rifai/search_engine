import 'package:flutter/material.dart';
import 'package:search_engine_app/presentations/components/styles_manager.dart';
import 'package:search_engine_app/presentations/components/values_manager.dart';

import '../resourses/color_manager.dart';

class PairWidget extends StatelessWidget {
  const PairWidget({
    Key? key,
    required this.label,
    required this.value,
    this.withDivider = true,
  }) : super(key: key);
  final String? label;
  final String? value;
  final bool withDivider;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
          horizontal: AppPadding.p8, vertical: AppPadding.p4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label ?? '',
              maxLines: 2,
              textAlign: TextAlign.justify,
              style: getMediumStyle(
                color: ColorManager.black,
              ),
            ),
          ),
          (withDivider)
              ? Container(
                  margin: const EdgeInsetsDirectional.only(
                    start: AppMargin.m4,
                    end: AppMargin.m8,
                  ),
                  width: 2.0,
                  height: 14.0,
                  decoration: BoxDecoration(
                    color: ColorManager.primary,
                    borderRadius: BorderRadiusDirectional.circular(AppSize.s4),
                  ),
                )
              : const SizedBox(),
          Expanded(
            flex: 3,
            child: Text(
              value ?? '',
              maxLines: 5,
              textAlign: TextAlign.justify,
              style: getRegularStyle(color: ColorManager.black),
            ),
          ),
        ],
      ),
    );
  }
}
