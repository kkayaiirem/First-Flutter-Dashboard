import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Row(
            children: [
              // Left Icon Menu Bar
              Container(
                width: 70,
                color:
                    Color(0xFF262626), // Updated color to match the screenshot
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 20),
                        // Cool Company Logo Icon Placeholder
                        IconButton(
                          icon: Icon(Icons.flash_on,
                              color: Colors.white, size: 30),
                          onPressed: () {},
                        ),
                        SizedBox(height: 20),
                        // Icon Menu Items
                        IconButton(
                          icon: Icon(Icons.grid_view, color: Colors.white),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.directions_car, color: Colors.white),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.credit_card, color: Colors.white),
                          onPressed: () {},
                        ),
                        // Active Menu Item
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.purple[800],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.group, color: Colors.white),
                            onPressed: () {},
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.refresh, color: Colors.white),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.directions_car, color: Colors.white),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.show_chart, color: Colors.white),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/avatar.png'),
                      ),
                    ),
                  ],
                ),
              ),
              // Company Details and Customers
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.black87,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Company Details',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[800],
                          child: Icon(Icons.sync, color: Colors.white),
                        ),
                        title: Text(
                          'Abstergo Ltd.',
                          style: TextStyle(
                            color:
                                Colors.grey[350], // Changed color to light grey
                            fontSize: 14, // Changed font size to 14
                          ),
                        ),
                        subtitle: Text(
                          'Registration №: 120837-6718',
                          style: TextStyle(
                              color: Colors.grey[350],
                              fontSize:
                                  14), // Changed color to light grey and font size to 14
                        ),
                      ),
                      Divider(color: Colors.grey[800]),
                      ListTile(
                        leading: Icon(Icons.flag, color: Colors.white),
                        title: Text(
                          'USA, New Jersey',
                          style: TextStyle(
                              color: Colors.grey[350],
                              fontSize:
                                  14), // Changed color to light grey and font size to 14
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on, color: Colors.white),
                        title: Text(
                          '2464 Royal Ln. Mesa, 45463',
                          style: TextStyle(
                              color: Colors.grey[350],
                              fontSize:
                                  14), // Changed color to light grey and font size to 14
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone, color: Colors.white),
                        title: Text(
                          '+38 (068) 777 18 80',
                          style: TextStyle(
                              color: Colors.grey[350],
                              fontSize:
                                  14), // Changed color to light grey and font size to 14
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.email, color: Colors.white),
                        title: Text(
                          'abstergo@example.com',
                          style: TextStyle(
                              color: Colors.grey[350],
                              fontSize:
                                  14), // Changed color to light grey and font size to 14
                        ),
                      ),
                      ListTile(
                        leading:
                            Icon(Icons.directions_car, color: Colors.white),
                        title: Text(
                          '11 cars',
                          style: TextStyle(
                              color: Colors.grey[350],
                              fontSize:
                                  14), // Changed color to light grey and font size to 14
                        ),
                      ),
                      SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.pink[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Fleet Discounts',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFF262626),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: const Color.fromARGB(149, 72, 72, 72),
                                width: 1.0), // Added border
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Customers',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Icon(Icons.add, color: Colors.grey),
                                ],
                              ),
                              CustomerList(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Right Section (Rest of the Screen)
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/avatar.png'),
                        ),
                        title: Text(
                          'Esther Howard',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.phone, color: Colors.grey[400]),
                                SizedBox(width: 8.0),
                                Text('(603) 555-0123'),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left:
                                      40.0), // Set the left margin to 40 pixels
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.email, color: Colors.grey[400]),
                                  SizedBox(width: 8.0),
                                  Text('Me.howard@example.com'),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left:
                                      40.0), // Set the left margin to 40 pixels
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.home, color: Colors.grey[400]),
                                  SizedBox(width: 8.0),
                                  Text('0 775 Rolling Green Rd.'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.purple[
                                100], // Set the background color to a light purple
                          ),
                          onPressed: () {}, // Add an empty onPressed handler
                          child: Text('Member for: 5 months'),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: Card(
                              color: Colors.white,
                              child: Container(
                                height:
                                    270, // Set a fixed height for both cards
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween, // Align rows
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Offer #0178348',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(width: 8),
                                                Icon(
                                                  Icons.content_paste,
                                                  size: 18,
                                                ),
                                              ],
                                            ),
                                            Chip(
                                              label: Text(
                                                'Pending',
                                                style: TextStyle(
                                                  color: Color(0xFFFFBB55),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              backgroundColor:
                                                  Color(0xFFFFFBD9),
                                              side: BorderSide.none,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top:
                                                  6.0), // Move the divider 5 pixels down
                                          child: Divider(),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 21.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Monthly payment'),
                                              Text(
                                                '€250.00',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Discount'),
                                            Text(
                                              '€3 550.00',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 21.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Vehicle price'),
                                              Text(
                                                '€29 900.00',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                foregroundColor: Colors.black,
                                                backgroundColor:
                                                    Colors.grey[300],
                                              ),
                                              child: Text('View Offer'),
                                            ),
                                          ),
                                          SizedBox(width: 20.0),
                                          Expanded(
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                backgroundColor:
                                                    Colors.grey[900],
                                              ),
                                              child: Text(
                                                'Edit Offer',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Card(
                              color: Colors.white,
                              child: Container(
                                height:
                                    270, // Set a fixed height for both cards
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.directions_car),
                                            SizedBox(width: 8),
                                            Text(
                                              'Mini Cooper S Clubman 2023',
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.more_vert),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                    Container(
                                      height: 150,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Image.asset(
                                              'assets/mini_cooper.png',
                                              width: 100,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 70.0),
                                              child: GridView.count(
                                                crossAxisCount: 2,
                                                childAspectRatio: 3,
                                                crossAxisSpacing: 4,
                                                shrinkWrap: true,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons
                                                          .local_gas_station),
                                                      SizedBox(width: 8),
                                                      Text('Gas'),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.settings),
                                                      SizedBox(width: 8),
                                                      Text('Automatic'),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.speed),
                                                      SizedBox(width: 8),
                                                      Text('2.0L 4'),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.color_lens),
                                                      SizedBox(width: 8),
                                                      Text('Grey'),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.grey[200],
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      onPressed: () {
                                        // Handle button press
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'XYZ98765432109876',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 8.0),
                                          Icon(
                                            Icons.copy,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Container(
                        height: MediaQuery.of(context).size.height -
                            20 -
                            389.0 -
                            24.0, // Subtract the height of the app bar and the status bar

                        margin: EdgeInsets.only(
                            bottom: 20.0), // Add 20 pixels outside the bottom
                        child: Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      child: TextButton(
                                        child: Text('Add Notes',
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        child: Text('Follow Up',
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        child: Text('Mail',
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        child: Text('New Offer',
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        child: Text('SMS',
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        child: Text('Activity History',
                                            style: TextStyle(
                                                color: Colors.purple)),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        child: Text('Files (0)',
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                _buildActivityRow(
                                    Icons.check_box,
                                    'Checked customer satisfaction with purchase',
                                    'Just now'),
                                _buildActivityRow(
                                    Icons.update,
                                    'Offer #0178348 status changed to Processing, Mini Cooper S not yet picked up',
                                    'Apr 10, 2024 at 09:30'),
                                _buildActivityRow(
                                    Icons.attach_money,
                                    'Finalized financing details',
                                    'Apr 5, 2024 at 13:45'),
                                _buildActivityRow(
                                    Icons.email,
                                    'Follow-up email regarding pending offer',
                                    'Mar 28, 2024 at 15:00'),
                                _buildActivityRow(
                                    Icons.swap_horiz,
                                    'Discussed trade-in options',
                                    'Mar 25, 2024 at 12:45'),
                                _buildActivityRow(
                                    Icons.send,
                                    'Sent offer details for review',
                                    'Mar 20, 2024 at 09:15'),
                                _buildActivityRow(
                                    Icons.update,
                                    'Offer #0178348 status changed to Pending, presented Mini Cooper offer',
                                    'Mar 18, 2024 at 11:00'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildActivityRow(IconData icon, String title, String date) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Expanded(
              flex: 3, // Give the left column three quarters of the space
              child: Row(
                children: [
                  Icon(icon,
                      color: const Color.fromARGB(
                          255, 92, 92, 92)), // Set the color to a lighter grey
                  SizedBox(
                      width: 8.0), // Added space between the icon and the title
                  Expanded(
                    child: Text(title),
                  ), // Added Expanded to make the text take up all available space
                ],
              ),
            ),
            Expanded(
              flex: 1, // Give the right column one quarter of the space
              child: Row(
                children: [
                  Icon(Icons.calendar_today,
                      size: 16.0,
                      color: const Color.fromARGB(
                          255, 92, 92, 92)), // Set the color to a lighter grey
                  SizedBox(
                      width: 8.0), // Added space between the icon and the date
                  Text(date),
                ],
              ),
            ),
          ],
        ),
      ),
      Divider(
          color: const Color.fromARGB(255, 236, 236, 236)), // Added a divider
    ],
  );
}

class CustomerList extends StatefulWidget {
  @override
  _CustomerListState createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  int _selectedCustomer = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCustomerTile('Jane Cooper', 'J', Colors.grey[800]!, 0),
        _buildCustomerTile('Esther Howard', 'E', Colors.purple, 1),
        _buildCustomerTile('Leslie Alexander', 'L', Colors.green[400]!, 2),
        _buildCustomerTile('Cameron Williamson', 'C', Colors.orange[400]!, 3),
        _buildCustomerTile('Jenny Wilson', 'J', Colors.blue[400]!, 4),
      ],
    );
  }

  Widget _buildCustomerTile(
      String name, String initial, Color color, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedCustomer = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4.0),
        decoration: BoxDecoration(
          color: _selectedCustomer == index
              ? const Color.fromARGB(60, 248, 187, 208)
              : null,
          border: _selectedCustomer == index
              ? Border.all(
                  color: const Color.fromARGB(150, 255, 214, 228), width: 1.0)
              : null, // Reduced border width to 1.0
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: color,
            child: Text(initial, style: TextStyle(color: Colors.white)),
          ),
          title: Text(name,
              style: TextStyle(color: Colors.grey[350], fontSize: 14)),
        ),
      ),
    );
  }
}
