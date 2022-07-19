class CatalogModel {
  static final items = [
    Item(
      10,
      "iphone 11 pro",
      "Apple iphone 11th generation",
      999,
      "#33545a",
      "https://scontent.fktm8-1.fna.fbcdn.net/v/t1.6435-9/107931856_420527058905025_3024796061417821035_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=ecuN4nKNQssAX85VWQE&tn=F8gC6XDDojdZmyVI&_nc_ht=scontent.fktm8-1.fna&oh=00_AT_txZftzHf7lXGILEYshXOsG81_KKirIVzTdPIVssHy9Q&oe=62FB995A",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}
