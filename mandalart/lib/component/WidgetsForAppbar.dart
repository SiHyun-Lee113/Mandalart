import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mandalart/provider/MandalartProvider2.dart';
import 'package:mandalart/provider/UserProvider.dart';
import 'package:provider/provider.dart';

class RenderInputPageAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const RenderInputPageAppbar({super.key, this.mdTitle});

  final String? mdTitle;

  @override
  Widget build(BuildContext context) {
    final MandalartProvider2 mdProvider =
        Provider.of<MandalartProvider2>(context);

    final TextEditingController controller =
        TextEditingController(text: mdTitle ?? '');

    return AppBar(
      title: TextField(
        controller: controller,
        decoration: const InputDecoration(labelText: '만다라트 제목을 입력해 주세요!'),
        onChanged: (value) {
          mdProvider.setMdTitle(value);
        },
      ),
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

class RenderAppbarMain extends StatelessWidget implements PreferredSizeWidget {
  const RenderAppbarMain({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
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

class RenderDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // 인증 상태 확인 중일 때 로딩 표시
        } else {
          print(snapshot);
          if (snapshot.hasData) {
            return SignInDrawer();
          } else {
            return SignOutDrawer();
          }
        }
      },
    );
  }
}

class SignInDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginVM = Provider.of<UserProvider>(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("${loginVM.getUserName()}님"),
            accountEmail: Text(loginVM.getUserEmail()),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(loginVM.getUserPhotoUrl()),
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
                context, '/mdList', (route) => false),
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.grey,
            ),
            title: Text('Sign Out'),
            onTap: () => loginVM.handleAuth(),
          ),
        ],
      ),
    );
  }
}

class SignOutDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginVM = Provider.of<UserProvider>(context);

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
                context, '/mdList', (route) => false),
          ),
          ListTile(
            leading: const Icon(
              Icons.login,
              color: Colors.grey,
            ),
            title: Text('Sign In'),
            onTap: () => loginVM.handleAuth(),
          ),
        ],
      ),
    );
  }
}
