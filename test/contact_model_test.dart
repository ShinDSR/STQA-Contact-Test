import 'package:firebase_project/model/contact_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  group("ContactModel", () {
    test("Convert a contact model to map", (){
      // Arrange
      final contact = ContactModel(
        id: "1",
        name: "Yusuf",
        phone: "081234567890",
        email: "yusuf@gmail.com",
        address: "Malang",
      );
      // Act
      final result = contact.toMap();
      // Assert
      expect(result, isA<Map<String, dynamic>>());
      expect(result['id'], contact.id);
      expect(result['name'], contact.name);
      expect(result['phone'], contact.phone);
      expect(result['email'], contact.email);
      expect(result['address'], contact.address);
    });
    
    test("Covert to contact model from map", (){
      // Arrange
      final contact = {
        'id': '1',
        'name': 'Yusuf',
        'phone': '081234567890',
        'email': 'yusuf@gmail.com',
        'address': 'Malang'
      };
      // Act
      final result = ContactModel.fromMap(contact);
      // Assert
      expect(result, isA<ContactModel>());
      expect(result.id, contact['id']);
      expect(result.name, contact['name']);
      expect(result.phone, contact['phone']);
      expect(result.email, contact['email']);
      expect(result.address, contact['address']);
    });

    test("Convert a contact model to json", (){
      // Arrange
      final contact = ContactModel(
        id: "1",
        name: "Yusuf",
        phone: "081234567890",
        email: "yusuf@gmail.com",
        address: "Malang",
      );
      // Act
      final result = contact.toJson();
      // Assert
      expect(result, isA<String>());
      expect(result, '{"id":"1","name":"Yusuf","phone":"081234567890","email":"yusuf@gmail.com","address":"Malang"}');
    });

    test("Convert from json to contact model", () {
      // Arrange
      final contact = '{"id":"1","name":"Yusuf","phone":"081234567890","email":"yusuf@gmail.com","address":"Malang"}';
      // Act
      final result = ContactModel.fromJson(contact);
      // Assert
      expect(result, isA<ContactModel>());
      expect(result.id, "1");
      expect(result.name, "Yusuf");
      expect(result.phone, "081234567890");
      expect(result.email, "yusuf@gmail.com");
      expect(result.address, "Malang");
    });
  });
}