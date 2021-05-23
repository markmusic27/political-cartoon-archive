import 'package:cartoon_repository/models/article.model.dart';
import 'package:cartoon_repository/utils/constants.util.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleDisplay extends StatelessWidget {
  final Article article;
  ArticleDisplay(this.article);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launch(article.url);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 300),
        height: 150,
        child: Row(
          children: [
            Image.network(article.img),
            SizedBox(width: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 1100,
                  child: Text(
                    article.headline,
                    overflow: TextOverflow.ellipsis,
                    style: kHeader1.copyWith(fontSize: 30),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  formatDate(article.date, [MM, " ", d, ", ", yyyy]),
                  style: kHeader2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
