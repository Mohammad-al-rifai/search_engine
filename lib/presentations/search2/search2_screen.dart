import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/text_form_field.dart';
import '../components/values_manager.dart';

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
