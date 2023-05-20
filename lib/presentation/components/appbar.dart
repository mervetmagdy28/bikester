import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  MyAppbar({super.key, this.showMenuIcon = true});
  bool showMenuIcon = true;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showMenuIcon
          ? IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            )
          : null,
      title: const Text(
        'Bikester',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          letterSpacing: 1.5,
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Color.fromRGBO(233, 233, 235, 1),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
