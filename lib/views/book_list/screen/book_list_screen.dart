import 'package:flutter/material.dart';
import 'package:jpi_app/constants/constants.dart';
import 'package:jpi_app/constants/widgets/custom_appbar.dart';

class BookList extends StatelessWidget {
  static const String routeName = '/book-list';

  const BookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List bookList = [
      "✅Engineering Drawing 2-1011",
      "✅Bangla-I -25711",
      "✅English-I -25712",
      "✅Social Science -25811",
      "✅Mathematics -I -25911",
      "✅Physics -I 25912",
      "✅Computer Office Application -26611",
      "✅Basic Electricity -26711",
    ];
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        appbarTitle: 'Booklist',
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                '📖DIPLOMA IN ENGINEERING📖.',
                style: textStyle.copyWith(
                  color: kPrimaryColor,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "📕Book list according to Probidhan -2022📘",
                style: textStyle.copyWith(
                  color: kPrimaryColor,
                ),
              ),
            ),
            SizedBox(height: 10),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            ExpansionTile(
              title: Text("Computer"),
              expandedAlignment: Alignment.topLeft,
              childrenPadding: EdgeInsets.all(20),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("1st Semester"),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  endIndent: 20,
                  indent: 20,
                ),
               ...bookList.map((book) => Text(book)).toList(),
               SizedBox(height: 10),
               Center(child: Text("Total Number of Books: ${bookList.length}")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
