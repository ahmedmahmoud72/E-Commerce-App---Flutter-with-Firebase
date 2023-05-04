import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/product_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductBuilder extends StatelessWidget {
  final Product product;
  final bool isSales;

  const ProductBuilder({
    Key? key,
    required this.product,
    this.isSales = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                product.imgURl,
                height: 190,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 25,
                width: 45,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color:
                            isSales ? const Color(0xffDB3022) : Colors.black),
                    child: Center(
                        child: isSales
                            ? Text('-${product.discountValue}%',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(color: Colors.white),
                                textAlign: TextAlign.center)
                            : Text('new',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(color: Colors.white),
                                textAlign: TextAlign.center))),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          itemSize: 17,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.only(right: 5.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '${product.brandName}',
          style:
              Theme.of(context).textTheme.caption?.copyWith(color: Colors.grey),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          product.title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: '${product.price}\$',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey, decoration: TextDecoration.lineThrough),
            ),
            TextSpan(
              text: ' ${product.price * (product.discountValue / 100)}\$',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: const Color(0xffDB3022)),
            ),
          ]),
        )
      ],
    );
  }
}
