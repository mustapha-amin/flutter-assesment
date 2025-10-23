// ignore_for_file: public_member_api_docs, sort_constructors_first
class Doctor {
  final String name;
  final String specialization;
  final String image;
  final int years;
  final double rating;
  final int reviews;
  final bool liked;
  Doctor({
    required this.name,
    required this.specialization,
    required this.image,
    required this.years,
    required this.rating,
    required this.reviews,
    required this.liked,
  });

  Doctor copyWith({
    String? name,
    String? specialization,
    String? image,
    int? years,
    double? rating,
    int? reviews,
    bool? liked,
  }) {
    return Doctor(
      name: name ?? this.name,
      specialization: specialization ?? this.specialization,
      image: image ?? this.image,
      years: years ?? this.years,
      rating: rating ?? this.rating,
      reviews: reviews ?? this.reviews,
      liked: liked ?? this.liked,
    );
  }
}
