import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
