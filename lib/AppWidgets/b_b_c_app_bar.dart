import 'package:flutter/material.dart';

class BBCAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title = 'BBC News';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.red,
        child: SizedBox(
          height: 100,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  'MENU',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(Icons.search,
                color: Colors.white,),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
