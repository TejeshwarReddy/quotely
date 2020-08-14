class QuoteData {
  Success _success;
  Contents _contents;
  String _baseurl;
  Copyright _copyright;

  QuoteData(
      {Success success,
      Contents contents,
      String baseurl,
      Copyright copyright}) {
    this._success = success;
    this._contents = contents;
    this._baseurl = baseurl;
    this._copyright = copyright;
  }

  Success get success => _success;
  set success(Success success) => _success = success;
  Contents get contents => _contents;
  set contents(Contents contents) => _contents = contents;
  String get baseurl => _baseurl;
  set baseurl(String baseurl) => _baseurl = baseurl;
  Copyright get copyright => _copyright;
  set copyright(Copyright copyright) => _copyright = copyright;

  QuoteData.fromJson(Map<String, dynamic> json) {
    _success =
        json['success'] != null ? new Success.fromJson(json['success']) : null;
    _contents = json['contents'] != null
        ? new Contents.fromJson(json['contents'])
        : null;
    _baseurl = json['baseurl'];
    _copyright = json['copyright'] != null
        ? new Copyright.fromJson(json['copyright'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._success != null) {
      data['success'] = this._success.toJson();
    }
    if (this._contents != null) {
      data['contents'] = this._contents.toJson();
    }
    data['baseurl'] = this._baseurl;
    if (this._copyright != null) {
      data['copyright'] = this._copyright.toJson();
    }
    return data;
  }
}

class Success {
  int _total;

  Success({int total}) {
    this._total = total;
  }

  int get total => _total;
  set total(int total) => _total = total;

  Success.fromJson(Map<String, dynamic> json) {
    _total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this._total;
    return data;
  }
}

class Contents {
  List<Quotes> _quotes;

  Contents({List<Quotes> quotes}) {
    this._quotes = quotes;
  }

  List<Quotes> get quotes => _quotes;
  set quotes(List<Quotes> quotes) => _quotes = quotes;

  Contents.fromJson(Map<String, dynamic> json) {
    if (json['quotes'] != null) {
      _quotes = new List<Quotes>();
      json['quotes'].forEach((v) {
        _quotes.add(new Quotes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._quotes != null) {
      data['quotes'] = this._quotes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Quotes {
  String _quote;
  String _length;
  String _author;
  List<String> _tags;
  String _category;
  String _language;
  String _date;
  String _permalink;
  String _id;
  String _background;
  String _title;

  Quotes(
      {String quote,
      String length,
      String author,
      List<String> tags,
      String category,
      String language,
      String date,
      String permalink,
      String id,
      String background,
      String title}) {
    this._quote = quote;
    this._length = length;
    this._author = author;
    this._tags = tags;
    this._category = category;
    this._language = language;
    this._date = date;
    this._permalink = permalink;
    this._id = id;
    this._background = background;
    this._title = title;
  }

  String get quote => _quote;
  set quote(String quote) => _quote = quote;
  String get length => _length;
  set length(String length) => _length = length;
  String get author => _author;
  set author(String author) => _author = author;
  List<String> get tags => _tags;
  set tags(List<String> tags) => _tags = tags;
  String get category => _category;
  set category(String category) => _category = category;
  String get language => _language;
  set language(String language) => _language = language;
  String get date => _date;
  set date(String date) => _date = date;
  String get permalink => _permalink;
  set permalink(String permalink) => _permalink = permalink;
  String get id => _id;
  set id(String id) => _id = id;
  String get background => _background;
  set background(String background) => _background = background;
  String get title => _title;
  set title(String title) => _title = title;

  Quotes.fromJson(Map<String, dynamic> json) {
    _quote = json['quote'];
    _length = json['length'];
    _author = json['author'];
    _tags = json['tags'].cast<String>();
    _category = json['category'];
    _language = json['language'];
    _date = json['date'];
    _permalink = json['permalink'];
    _id = json['id'];
    _background = json['background'];
    _title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['quote'] = this._quote;
    data['length'] = this._length;
    data['author'] = this._author;
    data['tags'] = this._tags;
    data['category'] = this._category;
    data['language'] = this._language;
    data['date'] = this._date;
    data['permalink'] = this._permalink;
    data['id'] = this._id;
    data['background'] = this._background;
    data['title'] = this._title;
    return data;
  }
}

class Copyright {
  int _year;
  String _url;

  Copyright({int year, String url}) {
    this._year = year;
    this._url = url;
  }

  int get year => _year;
  set year(int year) => _year = year;
  String get url => _url;
  set url(String url) => _url = url;

  Copyright.fromJson(Map<String, dynamic> json) {
    _year = json['year'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['year'] = this._year;
    data['url'] = this._url;
    return data;
  }
}
