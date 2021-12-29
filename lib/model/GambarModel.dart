class GambarModel {
  int id;
  String url;

  GambarModel({
    this.id,
    this.url,
  });

  GambarModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
    };
  }
}