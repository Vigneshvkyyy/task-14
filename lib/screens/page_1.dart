// ignore_for_file: prefer_final_fields, prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';


class PageContent1 extends StatefulWidget {
  @override
  State<PageContent1> createState() => _PageContent1State();
}

class _PageContent1State extends State<PageContent1> {
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
  var _currency = "-1";

  //==============================================CONTROLLER

  TextEditingController _gstNoController = TextEditingController();
  TextEditingController _clientnameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  List<Map<String, String>> _userList = [];
  String _errorMessage = '';

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

            //===========================TOP BUTTONS======================================//
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
                          "Customer",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.18,
                        ),
                        IconButton(
                          visualDensity: VisualDensity.compact,
                          icon: Icon(
                            Icons.fullscreen,
                            shadows: <Shadow>[
                              Shadow(color: Colors.black, blurRadius: 1.0)
                            ],
                          ),
                          onPressed: () {
                            
                          },
                        ),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    //=================================================================\\

                    TextField(
                      controller: _gstNoController,
                      // obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        errorText:
                            _errorMessage.isNotEmpty ? _errorMessage : null,
                        border: OutlineInputBorder(),
                        labelText: 'GST No. :*',
                        hintText: 'GST No. :*',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextField(
                      controller: _clientnameController,
                      // obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        errorText:
                            _errorMessage.isNotEmpty ? _errorMessage : null,
                        border: OutlineInputBorder(),
                        labelText: 'Company / Client Name *',
                        hintText: 'Company / Client Name *',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    DropdownButtonFormField(
                      value: _customerType,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      items: [
                        DropdownMenuItem(
                          child: Text("Exempted"),
                          value: '-1',
                        ),
                        DropdownMenuItem(
                          child: Text("UIN"),
                          value: '1',
                        ),
                        DropdownMenuItem(
                          child: Text("Compensation"),
                          value: '2',
                        )
                      ],
                      onChanged: (v) {},
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextField(
                      controller: _emailController,
                      // obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        errorText:
                            _errorMessage.isNotEmpty ? _errorMessage : null,
                        border: OutlineInputBorder(),
                        labelText: 'Email :',
                        hintText: 'Email :',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextField(
                      controller: _phoneController,
                      // obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        errorText:
                            _errorMessage.isNotEmpty ? _errorMessage : null,
                        border: OutlineInputBorder(),
                        labelText: 'Phone :*',
                        hintText: 'Phone :*',
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
                        labelText: 'Opening Balence :',
                        hintText: 'Opening Balence :',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextField(
                      // obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        errorText:
                            _errorMessage.isNotEmpty ? _errorMessage : null,
                        border: OutlineInputBorder(),
                        labelText: 'Address :*',
                        hintText: 'Address :*',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextField(
                      // obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        errorText:
                            _errorMessage.isNotEmpty ? _errorMessage : null,
                        border: OutlineInputBorder(),
                        labelText: 'City : *',
                        hintText: 'City :*',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextField(
                      // obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        errorText:
                            _errorMessage.isNotEmpty ? _errorMessage : null,
                        border: OutlineInputBorder(),
                        labelText: 'State : *',
                        hintText: 'State :*',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextField(
                      // obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        errorText:
                            _errorMessage.isNotEmpty ? _errorMessage : null,
                        border: OutlineInputBorder(),
                        labelText: 'Country : *',
                        hintText: 'Country :*',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextField(
                      // obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        errorText:
                            _errorMessage.isNotEmpty ? _errorMessage : null,
                        border: OutlineInputBorder(),
                        labelText: 'Zip/Postal : *',
                        hintText: 'Zip/Postal : *',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    DropdownButtonFormField(
                      value: _currency,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      items: [
                        DropdownMenuItem(
                          child: Text("INR"),
                          value: '-1',
                        ),
                        DropdownMenuItem(
                          child: Text("USD"),
                          value: '1',
                        ),
                      ],
                      onChanged: (v) {},
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (_gstNoController.text.isEmpty ||
                              _clientnameController.text.isEmpty ||
                              _emailController.text.isEmpty ||
                              _phoneController.text.isEmpty) {
                            _errorMessage = 'Please enter all fields';
                          } else {
                            _userList.add({
                              'GSTNo': _gstNoController.text,
                              'Username': _clientnameController.text,
                              'Email': _emailController.text,
                              'Phone': _phoneController.text,
                            });
                            _gstNoController.clear();
                            _clientnameController.clear();
                            _emailController.clear();
                            _phoneController.clear();
                          }
                        });
                      },
                      child: Text('Submit'),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextField(
                      // obscureText: true,
                      textInputAction: TextInputAction.done,

                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () => setState(() {
                            // hidden = !hidden;
                          }),
                          icon: const Icon(Icons.search),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Search',
                        hintText: 'Search',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                          // Datatable widget that have the property columns and rows.
                          columns: [
                            // Set the name of the column
                            DataColumn(label: Icon(Icons.edit)),
                            DataColumn(label: Text('Customer Name')),
                            DataColumn(label: Text('Customer Business Type')),
                            DataColumn(label: Text('Email')),
                            DataColumn(label: Text('Phone')),
                            DataColumn(label: Text('GST NO.')),
                            DataColumn(label: Text('Status')),
                            DataColumn(label: Text('View'))
                          ],
                          rows:
                              // Set the values to the columns
                              _userList
                                  .map(
                                    (user) => DataRow(cells: [
                                      DataCell(Icon(Icons.edit)),
                                      DataCell(Text(user['Username'] ?? '')),
                                      DataCell(Text('customer Business Name')),
                                      DataCell(Text(user['Email'] ?? '')),
                                      DataCell(Text(user['Phone'] ?? '')),
                                      DataCell(Text(user['GSTNo'] ?? '')),
                                      DataCell(Text('status')),
                                      DataCell(
                                          Icon(Icons.remove_red_eye_outlined))
                                    ]),
                                  )
                                  .toList()),
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
