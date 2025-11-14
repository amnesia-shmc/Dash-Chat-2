part of '../../dash_chat_2.dart';

/// {@category Models}
class ChatUser {
  ChatUser({
    required this.id,
    this.profileImage,
    this.customProperties,
    this.fullName,
  });

  /// Create a ChatUser instance from json data
  factory ChatUser.fromJson(Map<String, dynamic> jsonData) {
    return ChatUser(
      id: jsonData['id'].toString(),
      profileImage: jsonData['profileImage']?.toString(),
      fullName: jsonData['fullName']?.toString(),
      customProperties: jsonData['customProperties'] as Map<String, dynamic>?,
    );
  }

  /// Id of the user
  String id;

  /// Profile image of the user
  String? profileImage;

  /// A list of custom properties to extend the existing ones
  /// in case you need to store more things.
  /// Can be useful to extend existing features
  Map<String, dynamic>? customProperties;

  /// Full Name of the user,
  /// if you only have the name as one string
  /// you can put the entire value in the [firstName] field
  String get getFullName => fullName ?? 'User';

  /// Convert a ChatUser into a json
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'profileImage': profileImage,
      'fullName': fullName,
      'customProperties': customProperties,
    };
  }
}
