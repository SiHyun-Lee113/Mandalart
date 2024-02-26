import 'package:flutter/material.dart';
import 'package:mandalart/provider/LoginProvider.dart';
import 'package:provider/provider.dart';

class RenderAppbar extends StatefulWidget implements PreferredSizeWidget{
  const RenderAppbar({super.key, required this.title});

  final String title;

  @override
  State<RenderAppbar> createState() => _RenderAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _RenderAppbarState extends State<RenderAppbar> {
  late final String title = widget.title;
  late final loginVM = Provider.of<LoginViewModel>(context);

  @override
  AppBar build(BuildContext context) {
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
                : const Icon(Icons.manage_accounts))
      ],
    );
  }
}
