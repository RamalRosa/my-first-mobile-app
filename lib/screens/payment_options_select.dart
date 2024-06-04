import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_first_app/widgets/buttons/primary_button.dart';

class SelectPaymentOptionsScreen extends StatefulWidget {
  const SelectPaymentOptionsScreen({
    super.key,
  });

  @override
  State<SelectPaymentOptionsScreen> createState() =>
      _SelectPaymentOptionsScreenState();
}

class _SelectPaymentOptionsScreenState
    extends State<SelectPaymentOptionsScreen> {
  //API url
  String testApi = "https://swapi.dev/api/people/1";

  //variables
  bool isLoading = false;
  bool disableButton = false;
  String buttonText = "Bank Transfer";

  //functions
  Future<dynamic> sayHello() async {
    setState(() {
      isLoading = true;
      disableButton = true;
      buttonText = isLoading ? "Fetching..." : "Bank Transfer";
    });
    print('start isLoading => $isLoading');

    print('fetching start..');

    var url = Uri.parse(testApi);
    var response = await http.get(url);

    print('fetching done..');
    print('response code=> ${response.statusCode}');
    print('response body=> ${response.body}');

    setState(() {
      isLoading = false;
      disableButton = false;
      buttonText = isLoading ? "Fetching..." : "Bank Transfer";
    });

    print('start isLoading => $isLoading');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select payment method"),
      ),
      body: Column(
        children: <Widget>[
          PrimaryButton(
            text: buttonText,
            backgroundColor: Colors.amber,
            isLoading: isLoading,
            // onPressed: disableButton ? sayHello : null,
            onPressed: sayHello,
          )
        ],
      ),
    );
  }
}
