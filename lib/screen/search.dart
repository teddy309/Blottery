import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'dart:async';

class Search extends SearchDelegate<String> {
  final disease = [
    "에스트로겐",
    "프로게스테론",
    "안드로겐",
    "황체호르몬",
    "유방 상피내암 (관상피내암)",
    "소엽상피내암",
    "침윤성 유관암",
    "침윤성 소엽암",
    "국소 - 구역 재발 유방암",
    "전이성 유방암",
    "TNM 병기",
    "T 병기 (Tumor size)",
    "N 병기",
    "disease",
  ];

  final recentDisease = [
    "소엽상피내암",
    "침윤성 유관암",
    "침윤성 소엽암",
  ];

  //actions for app bar
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.search),
        color: Color.fromARGB(0x64, 0x9B, 0x9B, 0x9B),
        onPressed: () => showSearch(
          context: context,
          delegate: Search()
        ),
      ),
    ];
  }

  //leading icon on the left of the app bar
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        color: Color.fromARGB(0xFF, 0xFC, 0x75, 0x69),
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  //show some result based on the selection
  @override
  Widget buildResults(BuildContext context) {
    
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        child: Card(
          color: Colors.red,
          child: Center(
            child: Text(query),
          ),
        ),
      ),
    );
  }

  // show when someone searches for something
  @override
  Widget buildSuggestions(BuildContext context) {
    
    final suggestionList = query.isEmpty
        ? recentDisease
        : disease.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ],
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}

class CustomLocalizationDelegate 
    extends LocalizationsDelegate<MaterialLocalizations> {
  
  const CustomLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'en';

  @override
  Future<MaterialLocalizations> load(Locale locale) => 
      SynchronousFuture<MaterialLocalizations>(const CustomLocalization());

  @override
  bool shouldReload(CustomLocalizationDelegate old) => false;

  @override
  String toString() => 'CustomLocalization.delegate(en_US)';
}

class CustomLocalization extends DefaultMaterialLocalizations {
  const CustomLocalization();

  @override
  String get searchFieldLabel => "검색어를 입력하세요";
}
