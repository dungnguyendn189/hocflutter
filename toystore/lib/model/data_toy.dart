class DataToy {
  String? name;
  int? id;
  String? pic;
  String? title;
  int? rate;
  DataToy({this.id, this.name, this.pic, this.rate, this.title});
}

List<DataToy> dataToy = [
  DataToy(
      id: 1,
      name: 'Ninja GaiDen Collection',
      pic: 'assets/ninjagaiden.jpg',
      rate: 90,
      title:
          'THIS GAME MAY CONTAIN CONTENT NOT APPROPRIATE FOR ALL AGES OR MAY NOT BE APPROPRIATE FOR VIEWING AT WORK.'),
  DataToy(
      id: 2,
      name: 'Good Of War 4',
      pic: 'assets/gow.jpg',
      rate: 90,
      title:
          '“Gameplay consists of frequent combat scenarios with characters punching and kicking or using their axe to slash/stab/impale enemies. Some larger enemies are opened up to intense finishing moves showing enemies being ripped apart, dismembered, or decapitated. Strong Language is used in the dialogue.'),
  DataToy(
      id: 3,
      name: 'Devil May Cry 5',
      pic: 'assets/dmc5.jpg',
      rate: 90,
      title:
          '“WARNING: This game contains strong language, violence and nudity.”'),
  DataToy(
      id: 4,
      name: 'DarkSider',
      pic: 'assets/dsd.jpg',
      rate: 90,
      title:
          '“WARNING: This game contains strong language, violence and nudity.”'),
];
