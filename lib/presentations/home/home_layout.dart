import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_engine_app/presentations/components/styles_manager.dart';
import 'package:search_engine_app/presentations/components/values_manager.dart';
import 'package:search_engine_app/presentations/resourses/color_manager.dart';
import 'package:search_engine_app/presentations/search1/search1_screen.dart';

import '../search2/search2_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search Engine',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p8, vertical: AppPadding.p8),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Search1Screen(),
                      ),
                    );
                  },
                  child: Container(
                    height: AppSize.s200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadiusDirectional.circular(AppSize.s16),
                      color: ColorManager.white,
                      boxShadow: const [
                        BoxShadow(
                          color: ColorManager.primary,
                          spreadRadius: 3.0,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Search In Data Set One',
                        style: getMediumStyle(
                          color: ColorManager.primary,
                          fontSize: AppSize.s25,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: AppSize.s18),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Search2Screen(),
                      ),
                    );
                  },
                  child: Container(
                    height: AppSize.s200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadiusDirectional.circular(AppSize.s16),
                      color: ColorManager.white,
                      boxShadow: const [
                        BoxShadow(
                          color: ColorManager.primary,
                          spreadRadius: 3.0,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Search In Data Set Two',
                        style: getMediumStyle(
                          color: ColorManager.primary,
                          fontSize: AppSize.s25,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
