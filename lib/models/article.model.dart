class Article {
  final String img;
  final DateTime date;
  final String headline;
  final String url;

  Article({
    this.date,
    this.img,
    this.headline,
    this.url,
  });

  factory Article.fromJSON(Map<String, dynamic> json) {
    return Article(
      date: DateTime.parse(json["pub_date"]),
      img: json["uri"],
      url: json["web_url"],
      headline: json["headline"]["main"],
    );
  }
}
