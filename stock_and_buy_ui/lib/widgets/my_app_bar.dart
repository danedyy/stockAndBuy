import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? titleWidget;
  final List<Widget>? actions;
  const MyAppBar({
    Key? key,
    this.title,
    this.titleWidget,
    this.actions,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: titleWidget ??
          Text(
            title ?? " ",
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),
          ),
      elevation: 0,
      centerTitle: true,
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Divider(
          height: 0,
          thickness: 2,
        ),
      ),
      backgroundColor: Colors.white,
      actions: actions,
    );
  }
}
