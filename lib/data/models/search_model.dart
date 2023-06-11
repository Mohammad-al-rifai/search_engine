class SearchModel {
  List<SearchData>? data;
  int? countResult;
  List<double>? evaluation;

  SearchModel({this.data, this.countResult, this.evaluation});

  SearchModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <SearchData>[];
      json['data'].forEach((v) {
        data!.add(SearchData.fromJson(v));
      });
    }
    countResult = json['count_result'];
    evaluation = json['evaluation'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['count_result'] = countResult;
    data['evaluation'] = evaluation;
    return data;
  }
}

class SearchData {
  String? title;
  String? abstract;

  SearchData({this.title, this.abstract});

  SearchData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    abstract = json['abstract'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['abstract'] = abstract;
    return data;
  }
}
