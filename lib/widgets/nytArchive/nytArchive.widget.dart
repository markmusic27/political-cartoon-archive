import 'package:cartoon_repository/core/core.dart';
import 'package:cartoon_repository/models/article.model.dart';
import 'package:cartoon_repository/widgets/articleDisplay/articleDisplay.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NYTArchive extends StatefulWidget {
  @override
  _NYTArchiveState createState() => _NYTArchiveState();
}

class _NYTArchiveState extends State<NYTArchive> {
  Core core;
  List<Article> articles;

  @override
  void initState() {
    super.initState();

    core = Provider.of<Core>(context, listen: false);
    articles = core.services.archive.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        itemCount: articles.length,
        itemBuilder: (_, i) => SizedBox(height: 20),
        separatorBuilder: (_, i) => ArticleDisplay(articles[i]),
      ),
    );
  }
}
