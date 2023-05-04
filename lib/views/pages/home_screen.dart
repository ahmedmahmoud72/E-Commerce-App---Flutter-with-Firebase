import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/product_model.dart';
import 'package:flutter_ecommerce/utilities/assets.dart';
import 'package:flutter_ecommerce/views/widgets/product_builder.dart';

import '../widgets/home_page_header_of_lists.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white60,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              fit: StackFit.loose,
              children: [
                Image.asset(
                  AppAssists.homePageBanner,
                  fit: BoxFit.cover,
                  height: size.height * 0.3,
                  width: double.infinity,
                  alignment: Alignment.topCenter,
                ),
                Container(
                  height: size.height * 0.3,
                  width: double.infinity,
                  color: Colors.black38,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Street Clothes',
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                HomePageHeaderOfLists(
                  title: 'Sales',
                  subTitle: 'Super Summer Sales',
                  onViewAllTap: () {},
                  color: Colors.grey.shade600,
                ),
                SizedBox(height: size.height * 0.03),
                SizedBox(
                  height: 350,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: dummyProducts
                        .map((e) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: ProductBuilder(product: e),
                            ))
                        .toList(),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                HomePageHeaderOfLists(
                  title: 'New',
                  subTitle: 'You’ve never seen it before!',
                  onViewAllTap: () {},
                  color: Colors.grey.shade600,
                ),
                SizedBox(height: size.height * 0.03),
                SizedBox(
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: dummyProducts
                        .map((e) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: ProductBuilder(product: e,isSales: false),
                            ))
                        .toList(),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
