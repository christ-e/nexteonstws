import 'package:dio/dio.dart';
import 'package:nexteon_test/apiServices/emergencyKit.dart';
import 'package:nexteon_test/constant/baseurl.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(
      baseUrl: 'https://migrainetracker.api.salonsyncs.com/api/user'));
  // baseUrl: "${Baseurl().baseurl}api/user/login"));

  Future<String?> login(String email, String password) async {
    try {
      final response = await _dio.post('/login', data: {
        'email': email,
        'password': password,
      });
      return response.data['accessToken'];
    } catch (e) {
      print('Login error: $e');
      return null;
    }
  }

  Future<Response> createEmergencyKit(EmergencyKit emergencyKit) async {
    return await _dio.post('/emergency-kit', data: emergencyKit.toJson());
  }

  Future<Response> updateEmergencyKit(EmergencyKit emergencyKit) async {
    return await _dio.put('/emergency-kit/${emergencyKit.emergencyKitId}',
        data: emergencyKit.toJson());
  }

  Future<Response> listEmergencyKits(EmergencyKitListRequest request) async {
    return await _dio.post('/emergency-kit/list', data: request.toJson());
  }
}
