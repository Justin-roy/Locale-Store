class Category {
  String iconUrl;
  String name;
  bool featured;
  Category({
    required this.iconUrl,
    required this.name,
    required this.featured,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      featured: json['featured'],
      iconUrl: json['icon_url'],
      name: json['name'],
    );
  }
}
