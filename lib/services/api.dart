import 'package:http/http.dart' as http;
import 'package:zoctor/models/doctor.dart';
import 'dart:convert';


class ApiService {
  final String baseUrl = 'https://your-api-url.com';

  Future<Doctor> fetchDoctorData(String doctorId) async {
    final response = await http.get(Uri.parse('$baseUrl/doctors/$doctorId'));

    if (response.statusCode == 200) {
      return Doctor.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load doctor data');
    }
  }
}
