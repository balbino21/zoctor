// lib/pages/doctor_detail_page.dart

import 'package:flutter/material.dart';
import 'package:zoctor/models/doctor.dart';
import 'package:zoctor/services/api.dart';

class DoctorDetailPage extends StatelessWidget {
  final String doctorId;

  DoctorDetailPage({required this.doctorId});

  final ApiService _apiService = ApiService();

  Future<Doctor> _fetchDoctorDetails() async {
    return await _apiService.fetchDoctorData(doctorId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Details'),
        backgroundColor: Colors.tealAccent,
      ),
      body: FutureBuilder<Doctor>(
        future: _fetchDoctorDetails(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error loading doctor details'));
          } else if (snapshot.hasData) {
            final doctor = snapshot.data!;
            return _buildDoctorDetail(doctor);
          } else {
            return const Center(child: Text('No details available'));
          }
        },
      ),
    );
  }

  Widget _buildDoctorDetail(Doctor doctor) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doctor.name,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            doctor.specialty,
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
          const SizedBox(height: 20),
          const Text(
            'About the Doctor',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Dr. Alexio Sharma is an experienced cardiologist with over 15 years of practice. He specializes in heart disease treatment and prevention. Dr. Sharma is known for his compassionate care and commitment to his patients.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          const Text(
            'Contact Information',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Icon(Icons.phone, color: Colors.teal),
              SizedBox(width: 10),
              Text('+1 234 567 8900', style: TextStyle(fontSize: 16)),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Icon(Icons.email, color: Colors.teal),
              SizedBox(width: 10),
              Text('dr.sharma@example.com', style: TextStyle(fontSize: 16)),
            ],
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Implement booking functionality
              },
              child: const Text('Book an Appointment'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.tealAccent),
            ),
          ),
        ],
      ),
    );
  }
}
