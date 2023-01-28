import 'package:flutter/material.dart';
import 'package:shop_app/feature/UI/widgets/navigationbar_model.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<NavigationBarModel> navigationbarModel = [
    NavigationBarModel(icon: const Icon(Icons.home), onPressed: () {}),
    NavigationBarModel(icon: const Icon(Icons.favorite), onPressed: () {}),
    NavigationBarModel(icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {}),
    NavigationBarModel(icon: const Icon(Icons.article_rounded), onPressed: () {}),
    NavigationBarModel(icon: const Icon(Icons.person), onPressed: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _body(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: navigationbarModel
                .map(
                  (e) => IconButton(
                    onPressed: e.onPressed,
                    icon: e.icon,
                  ),
                )
                .toList()),
      ),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            children: [const Text('Our Product'), TextButton(onPressed: () {}, child: const Text('Short by'))],
          )
        ],
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      title: Text(
        'XS',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
