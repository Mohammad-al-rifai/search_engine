import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_engine_app/data/models/search_model.dart';
import 'package:search_engine_app/presentations/components/pair_widget.dart';
import 'package:search_engine_app/presentations/resourses/color_manager.dart';

import '../components/text_form_field.dart';
import '../components/values_manager.dart';

class Search1Screen extends StatefulWidget {
  const Search1Screen({super.key});

  @override
  State<Search1Screen> createState() => _Search1ScreenState();
}

class _Search1ScreenState extends State<Search1Screen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search The Web1',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: AppPadding.p8),
              child: TFF(
                controller: searchController,
                label: 'Search The Web',
                prefixIcon: CupertinoIcons.doc_text_search,
                validator: (String value) {},
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: AppPadding.p8, bottom: AppPadding.p8),
              child: Container(
                margin: const EdgeInsetsDirectional.all(AppMargin.m8),
                padding: const EdgeInsetsDirectional.all(AppPadding.p8),
                decoration: BoxDecoration(
                  // color: ColorManager.white,
                  borderRadius: BorderRadiusDirectional.circular(AppSize.s8),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      ColorManager.primary.withOpacity(.05),
                      ColorManager.primary.withOpacity(.1),
                      ColorManager.primary.withOpacity(.15),
                      ColorManager.primary.withOpacity(.2),
                      ColorManager.primary.withOpacity(.4),
                      ColorManager.primary.withOpacity(.6),
                      ColorManager.primary,
                    ],
                  ),
                ),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PairWidget(label: 'Count Result', value: '2545564'),
                    PairWidget(label: 'Evaluation', value: '00000'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return buildSearchItem(
                    data: SearchData(title: 'title', abstract: 'abstract'),
                  );
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

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

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
