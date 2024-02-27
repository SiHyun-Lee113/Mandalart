import 'package:flutter/material.dart';
import 'package:mandalart/provider/LoginProvider.dart';
import 'package:provider/provider.dart';

class RenderAppbar extends StatelessWidget implements PreferredSizeWidget {
  const RenderAppbar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final loginVM = Provider.of<LoginViewModel>(context);

    return AppBar(
      title: Text(title),
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          onPressed: () {
            loginVM.loginOrLogout();
          },
          icon: loginVM.checkLogin()
              ? const Icon(Icons.logout)
              : const Icon(Icons.manage_accounts),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
