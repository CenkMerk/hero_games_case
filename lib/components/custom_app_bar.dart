import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    Key? key,
    VoidCallback? onBackButtonPressed,
  }) : super(
          key: key,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.orange,
            ),
            onPressed: onBackButtonPressed,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: Icon(
                  Icons.notifications_none,
                  size: 30,
                  color: Colors.grey[800],
                ),
                tooltip: 'Show Snackbar',
                onPressed: () {},
              ),
            ),
          ],
        );
}
