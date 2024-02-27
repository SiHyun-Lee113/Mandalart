import 'package:flutter/material.dart';
import 'package:mandalart/provider/LoginProvider.dart';
import 'package:provider/provider.dart';

class RenderAppbar extends StatelessWidget implements PreferredSizeWidget {
  const RenderAppbar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
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
              Scaffold.of(context).openEndDrawer();
            },
            icon: const Icon(Icons.menu)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class RenderSignInDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginVM = Provider.of<LoginViewModel>(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("${loginVM.getUserName()}님"),
            accountEmail: Text(loginVM.getUserEmail()),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: Image.network(loginVM.getUserPhotoUrl()).image,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 0, color: Colors.transparent),
              color: Colors.blueGrey,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
              ),
            ),
          ),
          ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: Text('Home'),
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/mdList', (route) => false)),
          ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.grey,
              ),
              title: Text('Sign Out'),
              onTap: () => loginVM.loginOrLogout()),
        ],
      ),
    );
  }
}

class RenderSignOutDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginVM = Provider.of<LoginViewModel>(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: double.infinity),
              child: const Text(
                "원활한 애플리케이션 사용을 위해 \n로그인 해주세요!",
                softWrap: true,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 0, color: Colors.transparent),
              color: Colors.blueGrey,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
              ),
            ),
            accountEmail: null,
          ),
          ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: Text('Home'),
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/mdList', (route) => false)),
          ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.grey,
              ),
              title: Text('Sing In'),
              onTap: () => loginVM.loginOrLogout()),
        ],
      ),
    );
  }
}
