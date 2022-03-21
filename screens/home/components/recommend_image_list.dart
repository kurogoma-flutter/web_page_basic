import '../../../../../utils/import.dart';

class RecommendImageList extends StatelessWidget {
  const RecommendImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          RecommendCard(title: "オーロラ", image: "assets/images/Aurora.png"),
          RecommendCard(title: "ジャングル", image: "assets/images/Jungle.png"),
          RecommendCard(title: "サバンナ", image: "assets/images/Savannah.png"),
          RecommendCard(title: "渦潮", image: "assets/images/Whirlpools.png"),
        ],
      ),
    );
  }
}
