class ContactListModels {
  String nameReceiver;
  String previewText;
  String profileUrl;
  ContactListModels({
    required this.nameReceiver,
    required this.previewText,
    required this.profileUrl,
  });
}

List<ContactListModels> contactList = [
  ContactListModels(
      nameReceiver: 'Maryland Winkles',
      previewText: '0x9ECB6773702CAD6F3382A3596FFCEA',
      profileUrl: 'assets/image/person1.png'),
  ContactListModels(
      nameReceiver: 'Edgar Torrey',
      previewText: '0x7A473DD2F849234AFDC722CB4B6031',
      profileUrl: 'assets/image/person2.png'),
  ContactListModels(
      nameReceiver: 'Krishna Barbe',
      previewText: '0x5F0CABAA67123D9C48D2C3CC99123D',
      profileUrl: 'assets/image/person3.png'),
  ContactListModels(
      nameReceiver: 'Francene Vandyne',
      previewText: '0x8892C973A480DEF1147CE320E1E0A9F',
      profileUrl: 'assets/image/person4.png'),
  ContactListModels(
      nameReceiver: 'Cyndy Lillibridge',
      previewText: '0x83314E981CD9AFE58AFF807BD4E26EE',
      profileUrl: 'assets/image/person5.png'),
  ContactListModels(
      nameReceiver: 'Alfonzo Schuessler',
      previewText: '0x2DC42791D71563F21FBF1FB3E8201ED49',
      profileUrl: 'assets/image/person6.png'),
  ContactListModels(
      nameReceiver: 'Thad Eddings',
      previewText: '0x3538BA99B1F4729B148E01C13EA0A8F5',
      profileUrl: 'assets/image/person7.png'),
];
