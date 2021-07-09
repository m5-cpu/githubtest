import 'dart:convert';

import 'package:flutter/foundation.dart';

class Car {
  String? name;
  String? plate;
  String? location;
  String? owner;
  String? contact;
  List<String>? images;
  Car({
    this.name,
    this.plate,
    this.location,
    this.owner,
    this.contact,
    this.images,
  });

  Car copyWith({
    String? name,
    String? plate,
    String? location,
    String? owner,
    String? contact,
    List<String>? images,
  }) {
    return Car(
      name: name ?? this.name,
      plate: plate ?? this.plate,
      location: location ?? this.location,
      owner: owner ?? this.owner,
      contact: contact ?? this.contact,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'plate': plate,
      'location': location,
      'owner': owner,
      'contact': contact,
      'images': images,
    };
  }

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
      name: map['name'],
      plate: map['plate'],
      location: map['location'],
      owner: map['owner'],
      contact: map['contact'],
      images: List<String>.from(map['images']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Car.fromJson(String source) => Car.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Car(name: $name, plate: $plate, location: $location, owner: $owner, contact: $contact, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Car &&
        other.name == name &&
        other.plate == plate &&
        other.location == location &&
        other.owner == owner &&
        other.contact == contact &&
        listEquals(other.images, images);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        plate.hashCode ^
        location.hashCode ^
        owner.hashCode ^
        contact.hashCode ^
        images.hashCode;
  }
}
