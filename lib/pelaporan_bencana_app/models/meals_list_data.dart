class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int kacl;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/pelaporan_app/volcano.png',
      titleTxt: 'Gempa',
      meals: <String>['Gempa bumi ','dan lain lain'],
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    MealsListData(
      imagePath: 'assets/pelaporan_app/cyclone.png',
      titleTxt: 'Angin',
      meals: <String>['Puting beliung'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    MealsListData(
      imagePath: 'assets/pelaporan_app/volcano.png',
      titleTxt: 'Gunung',
      meals: <String>['Gunung erupsi'],
      startColor: '#FE95B6',
      endColor: '#FF5287',
    ),
    MealsListData(
      imagePath: 'assets/pelaporan_app/dinner.png',
      titleTxt: 'Dinner',
      meals: <String>['Recommend:', '703 kcal'],
      startColor: '#6F72CA',
      endColor: '#1E1466',
    ),
  ];
}
