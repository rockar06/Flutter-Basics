import 'package:flutter/material.dart';

enum MenuOptions { favorites, settings, about }

class SampleAppBarMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Menu'),
        actions: [
          PopupMenuButton<MenuOptions>(
            onSelected: (result) {
              print(result.toString());
            },
            itemBuilder: (context) => <PopupMenuEntry<MenuOptions>>[
              const PopupMenuItem(
                child: Text('Favorites'),
                value: MenuOptions.favorites,
              ),
              const PopupMenuItem(
                child: Text('Settings'),
                value: MenuOptions.settings,
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(
                child: Text('About'),
                value: MenuOptions.about,
              ),
            ],
          )
        ],
      ),
    );
  }
}
