import '../../../../../utils/import.dart';

class SampleBody extends StatelessWidget {
  const SampleBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          const TitleAndBtn(title: 'おすすめ'),
          const RecommendImageList(),
          const TitleAndBtn(title: '今日のイチオシ'),
          const FeatureCard(image: "assets/images/Whirlpools.png"),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
