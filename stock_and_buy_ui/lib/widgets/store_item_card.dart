import 'package:flutter/material.dart';

class StoreItemCard extends StatelessWidget {
  final String headerImage;
  final String itemName;
  final int stockCount;
  const StoreItemCard(
      {super.key,
      required this.headerImage,
      required this.itemName,
      required this.stockCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              // spreadRadius: -3,
              offset: Offset(0.0, 0.75))
        ],
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(2), topRight: Radius.circular(2)),
              child: Stack(
                children: [
                  Image.network(
                    headerImage,
                    fit: BoxFit.cover,
                    height: (160 / 2),
                    width: double.infinity,
                  ),
                  if (stockCount.isEven)
                    Positioned(
                      right: 5,
                      top: 10,
                      child: Container(
                        height: 25,
                        width: 25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.cyan, width: 2)),
                        child: const Center(
                          child: Icon(
                            Icons.remove,
                            size: 20,
                            color: Colors.cyan,
                          ),
                        ),
                      ),
                    )
                ],
              )),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(2),
                  bottomRight: Radius.circular(2)),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Divider(
                  height: 1,
                  thickness: 1,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        itemName,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        stockCount < 1
                            ? "Out of stock"
                            : "$stockCount in stock",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 12,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
