class Doctor {
  final String id;
  final String name;
  final String specialty;

  Doctor({
    required this.id,
    required this.name,
    required this.specialty,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      id: json['id'],
      name: json['name'],
      specialty: json['specialty'],
    );
  }
}
