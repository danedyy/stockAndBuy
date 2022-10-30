import 'package:flutter/material.dart';
import 'package:stock_and_buy_ui/util/image_getter.dart';

import '../widgets/my_app_bar.dart';
import '../widgets/store_item_card.dart';

class StoreItemsView extends StatelessWidget {
  const StoreItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        // title: "All Collection",
        titleWidget: DropdownButton(
          underline: Container(),
          iconEnabledColor: Theme.of(context).primaryColor,
          items: const [
            DropdownMenuItem(
                child: Text(
              'All collections',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ))
          ],
          onChanged: (value) {},
        ),
        actions: [
          IconButton(
              onPressed: () {},
              color: Theme.of(context).primaryColor,
              icon: const Icon(Icons.search))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Card(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'Quick Sale',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Flexible(
              child: GridView.builder(
                itemCount: 20,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 160,
                    // childAspectRatio: 3 / 2,
                    // mainAxisExtent: 100,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (BuildContext context, int index) {
                  return StoreItemCard(
                      headerImage: images(index),
                      itemName: "Store item ${index + 1}",
                      stockCount: index);
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Page 1 of 3",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.caption!.copyWith(
                  fontSize: 12,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
