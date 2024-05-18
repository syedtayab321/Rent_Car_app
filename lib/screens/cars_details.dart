import 'package:flutter/material.dart';

class ReviewSummaryScreen extends StatelessWidget {
  final GlobalKey<FormState> locationKey = GlobalKey<FormState>();
  final GlobalKey<FormState> paymentKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Review Summary',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade300, Colors.blue.shade600],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Card(
              margin: EdgeInsets.all(16.0),
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(26.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Car Image
                        Container(
                          width: 180.0, // Decreased width
                          height: 240.0, // Increased height
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[200],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'resources/logos/ANY.png',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        SizedBox(width: 16.0),

                        // Rest of Content
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Car Name
                              Text(
                                'Car Name',
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              // Model and Description
                              Text(
                                'Model: XYZ-123',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vehicula metus ac felis facilisis, non rhoncus leo dictum.',
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Amount, Shipping, Tax, Total Amount
                    ListTile(
                      title: Text(
                        'Amount: \$1000',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Shipping: \$50',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Tax: \$75',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Total Amount: \$1125',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // Location and Edit
                    ListTile(
                      leading: Icon(
                        Icons.location_on,
                        size: 32.0,
                        color: Colors.blue,
                      ),
                      title: Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.edit,
                          size: 24.0,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          // Add edit location functionality using `locationKey` here
                        },
                      ),
                    ),

                    // Payment Method and Edit
                    ListTile(
                      leading: Icon(
                        Icons.payment,
                        size: 32.0,
                        color: Colors.green,
                      ),
                      title: Text(
                        'Payment Method',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.edit,
                          size: 24.0,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          // Add edit payment method functionality using `paymentKey` here
                        },
                      ),
                    ),

                    // Confirm Payment Button
                    SizedBox(height: 32.0),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add logic to confirm payment here
                        },
                        child: Text(
                          'Confirm Payment',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 32.0,
                          ),
                          elevation: 8.0,
                          primary: Colors.blue,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}