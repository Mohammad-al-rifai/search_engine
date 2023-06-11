import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/models/search_model.dart';
import '../components/pair_widget.dart';
import '../components/text_form_field.dart';
import '../components/values_manager.dart';
import '../home/widgets/search_item_widget.dart';
import '../resourses/color_manager.dart';

class Search2Screen extends StatefulWidget {
  const Search2Screen({super.key});

  @override
  State<Search2Screen> createState() => _Search2ScreenState();
}

class _Search2ScreenState extends State<Search2Screen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search The Web2',
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

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
