enum CollectionNameEnum {
  food,
  drinks,
  side,
  sauce,
}

extension CollectionName on CollectionNameEnum {
  String get value {
    switch (this) {
      case CollectionNameEnum.food:
        return 'Food';
      case CollectionNameEnum.drinks:
        return 'Drinks';
      case CollectionNameEnum.side:
        return 'Side';
      case CollectionNameEnum.sauce:
        return 'Sauce';
    }
  }
}
