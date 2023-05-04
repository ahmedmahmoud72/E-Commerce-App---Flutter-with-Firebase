import 'package:flutter/material.dart';

class HomePageHeaderOfLists extends StatelessWidget {
  final String title;
  final String subTitle;
  Color? color = Colors.black;
  VoidCallback? onViewAllTap;

  HomePageHeaderOfLists({
    Key? key,
    required this.title,
    required this.subTitle,
    this.color,
    this.onViewAllTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            TextButton(
                onPressed: onViewAllTap,
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(color),
                ),
                child: const Text('View all')),
          ],
        ),
        Text(subTitle,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: Colors.grey.shade600)
        ),
      ],
    );
  }
}
