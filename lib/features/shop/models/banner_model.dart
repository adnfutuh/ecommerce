import 'package:cloud_firestore/cloud_firestore.dart';

class BannerModel {
  String imageUrl;
  final bool active;
  final String targetScreen;
  BannerModel({
    required this.active,
    required this.targetScreen,
    required this.imageUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      "Active": active,
      "TargetScreen": targetScreen,
      "ImageUrl": imageUrl,
    };
  }

  factory BannerModel.formSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data() as Map<String, dynamic>;
    return BannerModel(
      active: data['Active'] ?? false,
      targetScreen: data['TargetScreen'] ?? '',
      imageUrl: data['ImageUrl'] ?? '',
    );
  }
}
