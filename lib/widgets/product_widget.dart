import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hyperhire_assignment/models/product.dart';
import 'package:hyperhire_assignment/theme/theme.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.topProduct});

  final Product topProduct;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 104,
            height: 104,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: const Color(0xFFCECECE),
              ),
            ),
            clipBehavior: Clip.hardEdge,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6, left: 6),
                      child: getGrown(topProduct.productRank),
                    ),
                  ],
                ),
                CachedNetworkImage(
                  imageUrl: topProduct.productImage,
                  fit: BoxFit.contain,
                  height: 78,
                  alignment: Alignment.center,
                  placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(
                    color: Colors.blueGrey,
                  )), // Loading placeholder
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        topProduct.productName,
                        style: fontSemiBold(16),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: topProduct.productDetail
                        .map((e) => Row(
                              children: [
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Text(
                                    e,
                                    style:
                                        fontRegular(14, color: lightBlackColor),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ))
                        .toList(),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    const ImageIcon(
                      AssetImage(
                        'assets/icons/ic_star.png',
                      ),
                      color: goldenYellowColor,
                      size: 14,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "${topProduct.productRating.toString()} ",
                        children: [
                          TextSpan(
                            text: '(${topProduct.productReview})',
                            style: fontBold(
                              12,
                              color: const Color(0xFFC4C4C4),
                            ),
                          )
                        ],
                        style: fontBold(12, color: goldenYellowColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: topProduct.productTags
                      .map(
                        (e) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 6),
                          decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            e,
                            style: fontRegular(
                              12,
                              color: const Color(0xFF868686),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getGrown(int productRank) {
    switch (productRank) {
      case 1:
        return Image.asset(
          'assets/icons/ic_crown_gold.png',
          width: 20,
        );
      case 2:
        return Image.asset(
          'assets/icons/ic_crown_sliver.png',
          width: 20,
        );
      case 3:
        return Image.asset(
          'assets/icons/ic_crown_bronze.png',
          width: 20,
        );
    }
    return Image.asset(
      'assets/icons/ic_crown_gold.png',
      width: 20,
    );
  }
}
