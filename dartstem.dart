import 'dart:async';
import 'dart:math';

// /// Function that generates a stream of real-time stock prices
// Stream<double> stockPriceStream(String stockSymbol) async* {
//   Random random = Random();
//   double currentPrice = 100.0; // Initial stock price

//   while (true) {
//     await Future.delayed(Duration(seconds: 2)); // Simulate real-time update delay
//     double change = random.nextDouble() * 4 - 2; // Random price change (-2 to +2)
//     currentPrice = (currentPrice + change).clamp(90.0, 110.0); // Keep price within range
//     yield currentPrice; // Emit new stock price
//   }
// }


Stream<double> weatherStream(String Location) async* {
  Random random = Random();
  double currentTemp = 25.0; // Initial temperature
  double currentHumidity = 50.0; // Initial humidity
  

  while (true) {
    await Future.delayed(Duration(seconds: 2)); // Simulate real-time update delay
    double tempChange = random.nextDouble() * 4 - 2; // Random temperature change (-2 to +2)
    double humidityChange = random.nextDouble() * 10 - 5; // Random humidity change (-5 to +5)
    currentTemp = (currentTemp + tempChange).clamp(20.0, 30.0); // Keep temperature within range
    currentHumidity = (currentHumidity + humidityChange).clamp(40.0, 60.0); // Keep humidity within range
    yield currentTemp; // Emit new temperature
    yield currentHumidity; // Emit new humidity
  }

}

void main() {
  // String stockSymbol = "VivaSoft"; // Simulated stock symbol

  // print("Fetching live stock prices for $stockSymbol...\n");

  // StreamSubscription<double> subscription = stockPriceStream(stockSymbol).listen(
  //   (price) {
  //     print("Current price of $stockSymbol: \$${price.toStringAsFixed(2)}");
  //   },
  //   onError: (error) {
  //     print("Error: $error");
  //   },
  //   onDone: () {
  //     print("Stock price stream closed.");
  //   },
  // );

  String Location = "Nairobi"; // Simulated stock symbol
  print("Fetching live weather updates for $Location...\n");

  StreamSubscription<double> subscription = weatherStream(Location).listen(
    (temp) {
      print("Current temperature in $Location: ${temp.toStringAsFixed(2)}°C");
      print("Current humidity in $Location: ${temp.toStringAsFixed(2)}%");  
    },
    onError: (error) {
      print("Error: $error");
    },
    onDone: () {
      print("Weather stream closed.");
    },
  );

  // Automatically cancel the stream after 10 seconds
  Future.delayed(Duration(seconds: 15), () {
    subscription.cancel();
    print("\nStream closed after 15 seconds.");
  });


}
