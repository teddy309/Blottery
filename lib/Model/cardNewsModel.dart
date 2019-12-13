class News{
  final List<Recent> recent;
  final List<Hot> hot;

  News({this.recent, this.hot});

  factory News.fromJson(Map<String, dynamic> parsedJson){
    var listR = parsedJson['recent'] as List;
    var listH = parsedJson['hot'] as List;

    print(listR.runtimeType);
    print(listH.runtimeType);

    List<Recent> recentList = listR.map((i) => Recent.fromJson(i)).toList();
    List<Hot> hotList = listH.map((i) => Hot.fromJson(i)).toList();

    return News(
      recent: recentList,
      hot: hotList
    );
  }
}

class Recent{
  final String recentTitle, recentImg;

  Recent({this.recentTitle, this.recentImg});

  factory Recent.fromJson(Map<String, dynamic> parsedJson){
    return Recent(
      recentTitle: parsedJson['title'],
      recentImg: parsedJson['img']
    );
  }
}

class Hot{
  final String hotTitle, hotImg, hotAuthor;
  final int hotDate, hotRead;

  Hot({this.hotTitle, this.hotImg, this.hotAuthor, this.hotDate, this.hotRead });

  factory Hot.fromJson(Map<String, dynamic> parsedJson){
    return Hot(
      hotTitle: parsedJson['title'],
      hotImg: parsedJson['img'],
      hotAuthor: parsedJson['author'],
      hotDate: parsedJson['date'],
      hotRead: parsedJson['read']
    );
  }
}