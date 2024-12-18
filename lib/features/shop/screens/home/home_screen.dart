import 'package:ecommerce/common/widgets/text/section_headling.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppbar(),
                  SearchContainer(text: 'Search in Store'),
                  HomeCategories(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  HomePromo(),
                  SectionHeadling(title: 'Popular Products')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
