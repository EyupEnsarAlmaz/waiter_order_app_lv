enum CategoryNameEnum {
  starter,
  main,
  lunch,
  kids,
  dessert,
}

extension CollectionName on CategoryNameEnum {
  String get value {
    switch (this) {
      case CategoryNameEnum.starter:
        return 'Starter';
      case CategoryNameEnum.main:
        return 'Main';
      case CategoryNameEnum.dessert:
        return 'Dessert';
      case CategoryNameEnum.lunch:
        return 'Lunch';
      case CategoryNameEnum.kids:
        return 'Kids';
    }
  }
}
