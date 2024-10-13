void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  //const order = ['margherita', 'pepperoni'];
  const order = ['margherita', 'pepperoni', 'pineapple'];

  double total = 0.0;

  bool invalidPizza = false;

  for (var pizza in order) {
    if (pizzaPrices.containsKey(pizza)) {
      total += pizzaPrices[pizza] ?? 0.0;
    } else {
      print('$pizza pizza is not on the menu');

      invalidPizza = true;
    }
  }

  if (!invalidPizza) {
    print('Total: \$${total}');
  }
}
