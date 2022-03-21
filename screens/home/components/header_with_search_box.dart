import '../../../../../utils/import.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: defaultPadding * 2.5),
      // Containerの仮のパラメータ
      // 画面の全体の20%を占める
      height: size.height * 0.2,
      //Stack
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: defaultPadding,
              right: defaultPadding,
            ),
            //高さ
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: const HeaderTextAndIcon(),
          ),
          // 検索ボックス
          const SearchBox(),
        ],
      ),
    );
  }
}

class HeaderTextAndIcon extends StatelessWidget {
  const HeaderTextAndIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Web Site!",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
        ),
      ],
    );
  }
}
