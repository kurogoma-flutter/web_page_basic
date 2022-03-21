import '../../../../../utils/import.dart';

class TitleAndBtn extends StatelessWidget {
  const TitleAndBtn({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: [
          TitleWithUnderLine(title: title),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text(
              "すべて見る",
              style: TextStyle(color: Colors.pink),
            ),
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
