import '../../../../../utils/import.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
        height: 54,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 50.0,
              color: Colors.pink.withOpacity(0.23),
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(
              color: Colors.pink.withOpacity(0.5),
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            suffixIcon: const Icon(Icons.search, color: Colors.pink),
          ),
        ),
      ),
    );
  }
}
