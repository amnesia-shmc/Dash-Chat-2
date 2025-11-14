part of '../../dash_chat_2.dart';

/// {@category Models}
class ChatUser {
  ChatUser({
    required this.id,
    this.profileImage,
    this.customProperties,
    this.fullName,  // ← Add only this line
  });

  /// Id of the user
  String id;  // ← Should exist only once

  /// Profile image of the user  
  String? profileImage;  // ← Should exist only once

  /// Custom properties
  Map<String, dynamic>? customProperties;  // ← Should exist only once

  /// Full Name of the user - ADD THIS FIELD
  String? fullName;  // ← This is the only new field you should add

  String getFullName() {  // ← Should exist only once
    return fullName ?? 'User';
  }
  
  /// Create a ChatUser instance from json data
  factory ChatUser.fromJson(Map<String, dynamic> jsonData) {
    return ChatUser(
      id: jsonData['id'].toString(),
      profileImage: jsonData['profileImage']?.toString(),
      fullName: jsonData['fullName']?.toString(),
      customProperties: jsonData['customProperties'] as Map<String, dynamic>?,
    );
  }

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
