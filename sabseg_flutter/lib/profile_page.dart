import 'package:flutter/material.dart';

int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item ${(index + 1)}'),
            leading: const Icon(Icons.security_update_good_outlined),
            trailing: const Icon(Icons.video_settings_outlined),
            onTap: () {
              debugPrint('Item ${(index + 1)}');
            },
          );
        });
  }
}
