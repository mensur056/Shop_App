import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop_app/feature/UI/widgets/navigationbar_model.dart';
import 'package:shop_app/feature/view_model/mobx_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NavigationBarModel> navigationbarModel = [
    NavigationBarModel(icon: const Icon(Icons.home), onPressed: () {}),
    NavigationBarModel(icon: const Icon(Icons.favorite), onPressed: () {}),
    NavigationBarModel(icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {}),
    NavigationBarModel(icon: const Icon(Icons.article_rounded), onPressed: () {}),
    NavigationBarModel(icon: const Icon(Icons.person), onPressed: () {}),
  ];
  final viewModel = MobxViewModel();

  @override
  void initState() {
    super.initState();
    viewModel.fetchComputerItemFromApi();
  }

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
    return Observer(builder: (_) {
      return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: viewModel.isLoading
              ? const CircularProgressIndicator()
              : ListView.builder(
                  itemCount: viewModel.items?.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Card(
                        child: SizedBox(
                          height: 200,
                          width: 300,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 150,
                                width: 250,
                                child: Image.network(
                                    fit: BoxFit.fill,
                                    viewModel.items?[index].image ??
                                        'https://www.shutterstock.com/shutterstock/photos/1652062426/display_1500/stock-photo-jakarta-indonesia-saturday-july-laptop-dell-1652062426.jpg'),
                              ),
                              Text(viewModel.items?[index].compName ?? 'SDFSDF')
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ));
    });
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
