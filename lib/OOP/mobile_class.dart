void main() {
  Mobile mobile = Mobile();

  mobile.brand = 'iphone';
  mobile.price = 140000;

  mobile.showprice();
}

class Mobile {
  String? brand;
  int? price;

  void showprice() {
    print('object brand is ${brand}');
    print('object price is ${price}');
  }
}
