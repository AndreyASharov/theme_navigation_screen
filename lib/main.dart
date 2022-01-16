import 'package:flutter/material.dart';
import 'package:theme_navigation_screen/utils/global_theme.dart';

void main() {
  runApp(const NavigationScreen());
}

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globalTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/contacts': (context) => const ContactScreen(),
        '/settings': (context) => const SettingScreen(),
      },
    );
  }
}

Widget navDrawer(context) => Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
      DrawerHeader(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 100,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Image.network(
                    "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png")),
            const Text("Навигация во Flutter"),
          ],
        ),
      ),
      ListTile(
        leading: const Icon(Icons.article_outlined),
        title: const Text('Главная'),
        onTap: () {
          Navigator.pushNamed(context, '/');
        },
      ),
      const Divider(
        color: Colors.black12,
        height: 10,
        thickness: 2,
        indent: 10,
        endIndent: 10,
      ),
      ListTile(
        leading: const Icon(Icons.contact_page),
        title: const Text('Контакты'),
        onTap: () {
          Navigator.pushNamed(context, '/contacts');
        },
      ),
      const Divider(
        color: Colors.black12,
        height: 10,
        thickness: 2,
        indent: 10,
        endIndent: 10,
      ),
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text('Настройки'),
        onTap: () {
          Navigator.pushNamed(context, '/settings');
        },
      )
    ]));

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey[500],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Домой'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page), label: 'Контакты'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Настройки'),
        ],
      ),
      appBar: AppBar(
        title: const Text('Главная'),
        actions: <Widget>[
          IconButton(
              tooltip: 'Фото',
              onPressed: () {},
              icon: const Icon(Icons.add_a_photo)),
          IconButton(
              tooltip: 'Корзина',
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined)),
          TextButton(
              onPressed: () {},
              child: const Text('Профиль'),
              style: TextButton.styleFrom(
                  primary: Theme.of(context).colorScheme.background)),
        ],
      ),
      drawer: navDrawer(context),
      body: const Center(
        child: Text('Главная страница'),
      ),
    );
  }
}

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Контакты')),
      drawer: navDrawer(context),
      body: const Center(
        child: Text('Контакты'),
      ),
    );
  }
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Настройки')),
        drawer: navDrawer(context),
        body: const Center(child: Text('Настройки')));
  }
}
