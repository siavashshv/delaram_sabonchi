class Category {
  String title;
  bool isSelected;
  String categoryImage;
  List<Portfo> portfoList;
  Category({
    required this.title,
    required this.categoryImage,
    this.isSelected = false,
    required this.portfoList,
  });
}

class Portfo {
  String imagePath;
  String title;
  Portfo({
    required this.imagePath,
    required this.title,
  });
}

class PortfoCategories {
  List<Category> list;
  PortfoCategories({
    required this.list,
  });

  selectAnItem(int index) {
    for (Category cat in list) {
      cat.isSelected = false;
    }
    list[index].isSelected = true;
  }
}
