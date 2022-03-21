import '../../../../utils/import.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(context),
      body: const SampleBody(),
    );
  }

  // Widgetとして切り抜き
  AppBar simpleAppBar(context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.pink,
      title: const Text('Webページ制作'),
      leading: IconButton(
        onPressed: () {
          GoRouter.of(context).go('/');
        },
        icon: const Icon(Icons.menu),
      ),
    );
  }
}
