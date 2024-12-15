class MyPricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    double tax = calculateTax(productPrice, location);

    double shippingCast = getShippingCast(location);

    double totalPrice = productPrice + tax + shippingCast;
    return totalPrice;
  }

  static double calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount;
  }

  static double getShippingCast(String location) {
    return 5.00;
  }

  static double getTaxRateForLocation(String location) {
    return 0.10;
  }

  // static double calculateCartTotal(CartModel cart) {
  //   return cart.items
  //       .map((e) => e.price)
  //       .fold(0, (prev, current) => prev + (current ?? 0));
  // }
}
