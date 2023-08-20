class Contact {
  String name;
  String phoneNumber;
  String? imageUrl;
  Contact({
    required this.name,
    required this.phoneNumber,
    this.imageUrl,
});
}

Contact contact1 = Contact(name: "Mohamed Mahmoud", phoneNumber: "01001412578", imageUrl: "assets/mohamed_mahmoud.jpg");
Contact contact2 = Contact(name: "3li 3looka", phoneNumber: "01010101010");
Contact contact3 = Contact(name: "Omar Gym", phoneNumber: "01010109999",);
Contact contact4 = Contact(name: "Ahmed Section", phoneNumber: "0110454378",);
Contact contact5 = Contact(name: "Philo UI/UX", phoneNumber: "0124231334", );
Contact contact6 = Contact(name: "Bosbos the cat", phoneNumber: "0101100123", );
