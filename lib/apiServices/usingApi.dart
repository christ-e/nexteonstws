// import 'package:nexteon_test/apiServices/apiServices.dart';
// import 'package:nexteon_test/apiServices/emergencyKit.dart';
// import 'package:nexteon_test/apiServices/model.dart';

// void main() async {
//   final apiService = ApiService();

//   // Login
//   final user = User(email: 'fayiz1727@gmail.com', password: '1234');
//   final loginResponse = await apiService.login(user.email, user.password);
//   print('Login response: ${loginResponse.data}');

//   //Create Emergency Kit
//   final newKit = EmergencyKit(
//     userId: 'userId123',
//     details: 'Emergency Kit Details',
//     localType: 0,
//     contact: 'Contact Info',
//     name: 'Kit Name',
//   );
//   final createResponse = await apiService.createEmergencyKit(newKit);
//   print('Create Emergency Kit response: ${createResponse.data}');

//   //Update Emergency Kit
//   final updatedKit = EmergencyKit(
//     userId: 'userId123',
//     emergencyKitId: 'kitId123',
//     details: 'Updated Details',
//     localType: 1,
//     contact: 'Updated Contact Info',
//     name: 'Updated Kit Name',
//   );
//   final updateResponse = await apiService.updateEmergencyKit(updatedKit);
//   print('Update Emergency Kit response: ${updateResponse.data}');

//   // List Emergency Kits
//   final listRequest = EmergencyKitListRequest(
//     sortType: 0,
//     sortOrder: 0,
//     statusArray: [0],
//     screenType: [0],
//     emergencyKitIds: ['kitId123'],
//     userIds: ['userId123'],
//     limit: 10,
//     skip: 0,
//     searchingText: 'searchText',
//   );
//   final listResponse = await apiService.listEmergencyKits(listRequest);
//   print('List Emergency Kits response: ${listResponse.data}');
// }

// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:nexteon_test/apiServices/apiServices.dart';
import 'package:nexteon_test/apiServices/emergencyKit.dart';
import 'package:nexteon_test/apiServices/model.dart';

void main() async {
  final apiService = ApiService();

  // Login
  final user = User(email: 'fayiz1727@gmail.com', password: '1234');
  final loginResponse = await apiService.login(user.email, user.password);
  print('Login response: ${loginResponse}');

  // Create Emergency Kit
  final newKit = EmergencyKit(
    userId: 'userId123',
    details: 'Emergency Kit Details',
    localType: 0,
    contact: 'Contact Info',
    name: 'Kit Name',
  );
  final createResponse = await apiService.createEmergencyKit(newKit);
  print('Create Emergency Kit response: ${createResponse.data}');

  // Update Emergency Kit
  final updatedKit = EmergencyKit(
    userId: 'userId123',
    emergencyKitId: 'kitId123',
    details: 'Updated Details',
    localType: 1,
    contact: 'Updated Contact Info',
    name: 'Updated Kit Name',
  );
  final updateResponse = await apiService.updateEmergencyKit(updatedKit);
  print('Update Emergency Kit response: ${updateResponse.data}');

  // List Emergency Kits
  final listRequest = EmergencyKitListRequest(
    sortType: 0,
    sortOrder: 0,
    statusArray: [0],
    screenType: [0],
    emergencyKitIds: ['kitId123'],
    userIds: ['userId123'],
    limit: 10,
    skip: 0,
    searchingText: 'searchText',
  );
  final listResponse = await apiService.listEmergencyKits(listRequest);
  print('List Emergency Kits response: ${listResponse.data}');
}
