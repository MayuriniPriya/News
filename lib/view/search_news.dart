import 'package:flutter/material.dart';
import 'package:flutter_news_app/helper/news.dart';
import 'package:flutter_news_app/models/article_model.dart';

import 'article_view.dart';

class SearchNews extends StatefulWidget {
  final String search;
  SearchNews({required this.search});

  @override
  _SearchNewsState createState() => _SearchNewsState();
}

class _SearchNewsState extends State<SearchNews> {
  List<ArticleModel> articles = <ArticleModel>[];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    getSearchNews();
  }

  getSearchNews() async {
    SearchNewsClass newsClass = SearchNewsClass();
    await newsClass.getNews(widget.search);
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'MAD',
              style: TextStyle( color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 5,),
            Text(
              'News',
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
        actions: <Widget>[
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                Icons.share,
              ))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: _loading
          ? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      )
          : SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            //Blogs
            Container(
              padding: EdgeInsets.only(top: 16),
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return BlogTile(
                    imageUrl: articles[index].urlToImage??"",
                    title: articles[index].title??"",
                    desc: articles[index].description??"",
                    url: articles[index].url??"",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imageUrl, title, desc, url;
  BlogTile({
    required this.imageUrl,
    required this.title,
    required this.desc,
    required this.url,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleView(
              blogUrl: url,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(imageUrl),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            Text(
              desc,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

