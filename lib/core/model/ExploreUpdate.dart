class ExploreUpdate {
  String logoUrl;
  String image;
  String storeName;
  String caption;
  ExploreUpdate({
    required this.logoUrl,
    required this.image,
    required this.storeName,
    required this.caption,
  });

  factory ExploreUpdate.fromJson(Map<String, dynamic> json) {
    return ExploreUpdate(
      logoUrl: json['logo_url'],
      image: json['image'],
      storeName: json['store_name'],
      caption: json['caption'],
    );
  }
}
