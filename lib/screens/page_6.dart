// ignore_for_file: prefer_final_fields, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PageContent6 extends StatefulWidget {
  @override
  State<PageContent6> createState() => _PageContent6State();
}

class _PageContent6State extends State<PageContent6> {
  List<Widget> _defaultButtons = [
    Opacity(
      opacity: 0,
      child: ElevatedButton(
        onPressed: () {
          // Handle button press
        },
        child: Text(''),
      ),
    ),
  ];

  List<Widget> _button1Pressed = [
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Sales INvoice'),
    ),
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Delivery chellan'),
    ),
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Credit Note(Sales Return)'),
    ),
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Purchase Invoice'),
    ),
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Debit Note(Purchase Return)'),
    ),
  ];

  List<Widget> _button2Pressed = [
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Pro-forma'),
    ),
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Estimates'),
    ),
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Purchase Order'),
    ),
  ];

  List<Widget> _button3Pressed = [
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Income'),
    ),
  ];

  List<Widget> _button4Pressed = [
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Payment'),
    ),
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Receipt'),
    ),
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Journal (Expanse)'),
    ),
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Contra'),
    ),
  ];

  List<Widget> _button5Pressed = [
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Cash'),
    ),
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Bank'),
    ),
  ];

  List<Widget> _button6Pressed = [
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Employee'),
    ),
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Attendance'),
    ),
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('Salary'),
    ),
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('PF'),
    ),
    ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      child: Text('ESI'),
    ),
  ];

  List<Widget> _currentButtons = [];

  @override
  void initState() {
    super.initState();
    _currentButtons = _defaultButtons;
  }

  void _handleButtonPress(int buttonNumber) {
    setState(() {
      switch (buttonNumber) {
        case 1:
          _currentButtons = _button1Pressed;
          break;
        case 2:
          _currentButtons = _button2Pressed;
          break;
        case 3:
          _currentButtons = _button3Pressed;
          break;
        case 4:
          _currentButtons = _button4Pressed;
          break;
        case 5:
          _currentButtons = _button5Pressed;
          break;
        case 6:
          _currentButtons = _button6Pressed;
          break;
        default:
          _currentButtons = _defaultButtons;
          break;
      }
    });
  }

  var _customerType = "-1";
  // var _currency = "-1";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            //===========================TOP BUTTONS======================================//
            Container(
              color: Colors.grey.shade200,
              height: size.height * 0.45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Wrap(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    alignment: WrapAlignment.center,
                    spacing: 20,
                    runSpacing: 0,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    // clipBehavior: Clip.antiAliasWithSaveLayer,
                    children: [
                      TextButton(
                        onPressed: () => _handleButtonPress(1),
                        child: Text('INVOICES'),
                      ),
                      TextButton(
                        onPressed: () => _handleButtonPress(2),
                        child: Text('ESTIMATES'),
                      ),
                      TextButton(
                        onPressed: () => _handleButtonPress(3),
                        child: Text('INCOME'),
                      ),
                      TextButton(
                        onPressed: () => _handleButtonPress(4),
                        child: Text('VOUCHERS'),
                      ),
                      TextButton(
                        onPressed: () => _handleButtonPress(5),
                        child: Text('CASH/BANK'),
                      ),
                      TextButton(
                        onPressed: () => _handleButtonPress(6),
                        child: Text('PAYROLL'),
                      ),
                    ],
                  ),
                  //===================================================//

                  Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    runAlignment: WrapAlignment.center,
                    // clipBehavior: Clip.antiAliasWithSaveLayer,
                    spacing: 50,
                    runSpacing: 3,
                    children: _currentButtons.map((button) {
                      return button;
                    }).toList(),
                  ),
                ],
              ),
            ),

            //===========================CARD======================================//
            Card(
              // color: Colors.grey,
              child: Container(
                color: Colors.grey.shade100,
                // height: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        IconButton(
                          visualDensity: VisualDensity.compact,
                          icon: Icon(
                            Icons.arrow_back,
                            shadows: <Shadow>[
                              Shadow(color: Colors.black, blurRadius: 1.0)
                            ],
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          visualDensity: VisualDensity.compact,
                          icon: Icon(
                            Icons.arrow_forward,
                            shadows: <Shadow>[
                              Shadow(color: Colors.black, blurRadius: 1.0)
                            ],
                          ),
                          onPressed: () {
                            // nextPage;
                            print("Helooo");
                          },
                        ),
                        SizedBox(
                          width: size.width * 0.2,
                        ),
                        Text(
                          "Credit Note",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.16,
                        ),
                        IconButton(
                          visualDensity: VisualDensity.compact,
                          icon: Icon(
                            Icons.fullscreen,
                            shadows: <Shadow>[
                              Shadow(color: Colors.black, blurRadius: 1.0)
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    //=================================================================\\

                    DropdownButtonFormField(
                      value: _customerType,
                      decoration: InputDecoration(
                          labelText: 'Receipt Type',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      items: [
                        DropdownMenuItem(
                          child: Text("Select"),
                          value: '-1',
                        ),
                        DropdownMenuItem(
                          child: Text("All"),
                          value: '1',
                        ),
                        DropdownMenuItem(
                          child: Text("Cash"),
                          value: '2',
                        ),
                        DropdownMenuItem(
                          child: Text("Cheque"),
                          value: '3',
                        ),
                        DropdownMenuItem(
                          child: Text("Online"),
                          value: '4',
                        ),
                        DropdownMenuItem(
                          child: Text("Credit"),
                          value: '5',
                        ),
                      ],
                      onChanged: (v) {},
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextField(
                      // obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Credit Note No',
                        hintText: 'Credit Note No',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextField(
                      // obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'From',
                        hintText: 'From',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextField(
                      // obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'To',
                        hintText: 'To',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          visualDensity: VisualDensity.compact,
                          icon: Icon(
                            Icons.search,
                            shadows: <Shadow>[
                              Shadow(color: Colors.black, blurRadius: 5.0)
                            ],
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          visualDensity: VisualDensity.compact,
                          icon: Icon(
                            Icons.restart_alt,
                            shadows: <Shadow>[
                              Shadow(color: Colors.black, blurRadius: 5.0)
                            ],
                          ),
                          onPressed: () {
                            // nextPage;
                            print("Helooo");
                          },
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Handle button press
                          },
                          icon: Icon(Icons.download),
                          label: Text('Export'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.2,
            ),
          ],
        ),
      ),
    );
  }
}
