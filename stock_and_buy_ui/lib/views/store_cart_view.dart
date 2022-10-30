import 'package:flutter/material.dart';
import 'package:stock_and_buy_ui/util/image_getter.dart';

import '../widgets/my_app_bar.dart';

class StoreCartView extends StatelessWidget {
  const StoreCartView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Cart",
        actions: [
          IconButton(
              onPressed: () {},
              color: Theme.of(context).primaryColor,
              icon: const Icon(Icons.delete_outline_rounded)),
          IconButton(
              onPressed: () {},
              color: Theme.of(context).primaryColor,
              icon: const Icon(Icons.more_horiz))
        ],
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4.0,
                          // spreadRadius: -3,
                          offset: Offset(0.0, 0.75))
                    ],
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(color: Colors.grey.shade200)),
                child: ListView.separated(
                    shrinkWrap: true,
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 30, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(images(2))),
                                      // color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey.shade200)),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text('Wallnut lamp',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                            const Text('\$33.99',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(
                          thickness: 1,
                          height: 20,
                        ),
                    itemCount: 3),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4.0,
                          // spreadRadius: -3,
                          offset: Offset(0.0, 0.75))
                    ],
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(color: Colors.grey.shade200)),
                child: Row(
                  children: [
                    const Text('Customer',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Kate Ball',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          Text('Kate.Ball@googlemail.com',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16,
                              )),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4.0,
                          // spreadRadius: -3,
                          offset: Offset(0.0, 0.75))
                    ],
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(color: Colors.grey.shade200)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Add discount',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w600)),
                              Icon(
                                Icons.add_circle_outline,
                                color: Theme.of(context).primaryColor,
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Subtotal',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              Text('\$500.00',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Opacity(
                            opacity: .4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Add shipping',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w600)),
                                Icon(
                                  Icons.add_circle_outline,
                                  color: Theme.of(context).primaryColor,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,
                            fixedSize: const Size.fromHeight(60)),
                        child: Row(
                          children: [
                            Container(
                              height: double.infinity,
                              width: 70,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      right: BorderSide(color: Colors.white))),
                              child: const Center(
                                  child: Text('5',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500))),
                            ),
                            const Expanded(
                              child: Center(
                                child: Text('Charge \$500.00',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
