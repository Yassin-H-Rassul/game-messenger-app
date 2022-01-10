import 'dart:convert';

class GeneralUser {
  final String? uid;
  final String? username;
  final String phoneNumber;
  final String imageUrl;
  final bool? isOnline;
  final String? lastSeenOnline;

  GeneralUser({
    this.uid,
    this.username,
    required this.phoneNumber,
    required this.imageUrl,
    this.isOnline,
    this.lastSeenOnline,
  });

  GeneralUser copyWith({
    String? uid,
    String? username,
    String? phoneNumber,
    String? imageUrl,
    bool? isOnline,
    String? lastSeenOnline,
  }) {
    return GeneralUser(
      uid: uid ?? this.uid,
      username: username ?? this.username,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      imageUrl: imageUrl ?? this.imageUrl,
      isOnline: isOnline ?? this.isOnline,
      lastSeenOnline: lastSeenOnline ?? this.lastSeenOnline,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'username': username,
      'phoneNumber': phoneNumber,
      'imageUrl': imageUrl,
      'isOnline': isOnline,
      'lastSeenOnline': lastSeenOnline,
    };
  }

  factory GeneralUser.fromMap(Map<String, dynamic> map) {
    return GeneralUser(
      uid: map['uid'],
      username: map['username'],
      phoneNumber: map['phoneNumber'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      isOnline: map['isOnline'],
      lastSeenOnline: map['lastSeenOnline'],
    );
  }

  String toJson() => json.encode(toMap());

  factory GeneralUser.fromJson(String source) =>
      GeneralUser.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GeneralUser(uid: $uid, username: $username, phoneNumber: $phoneNumber, imageUrl: $imageUrl, isOnline: $isOnline, lastSeenOnline: $lastSeenOnline)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GeneralUser &&
        other.uid == uid &&
        other.username == username &&
        other.phoneNumber == phoneNumber &&
        other.imageUrl == imageUrl &&
        other.isOnline == isOnline &&
        other.lastSeenOnline == lastSeenOnline;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        username.hashCode ^
        phoneNumber.hashCode ^
        imageUrl.hashCode ^
        isOnline.hashCode ^
        lastSeenOnline.hashCode;
  }
}
