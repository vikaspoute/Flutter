class PriceCalculator {
  static Map<String, double> taxRates = {
    'USA': 0.10,
    'India': 0.18,
  };

  static Map<String, double> shippingCosts = {
    'USA': 15.00,
    'India': 20.00,
  };

  static double calculateTotalPrice(double price, String country) {
    double? taxRate = getTaxRateForCountry(country);
    double taxAmount = price * taxRate!;

    double? shippingCost = getShippingCost(country);

    return price + taxAmount + shippingCost!;
  }

  static String? calculateShippingCost(double price, String country) {
    double? shippingCost = getShippingCost(country);
    return shippingCost?.toStringAsFixed(2);
  }

  static String calculateTax(double price, String country) {
    double? taxRate = getTaxRateForCountry(country);
    double taxAmount = price * taxRate!;
    return taxAmount.toStringAsFixed(2);
  }

  static double? getTaxRateForCountry(String country) {
    return taxRates.containsKey(country) ? taxRates[country] : 0.0;
  }

  static double? getShippingCost(String country) {
    return shippingCosts.containsKey(country) ? shippingCosts[country] : 0.0;
  }
}
