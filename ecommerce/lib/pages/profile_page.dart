import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),

      // body
      body: Padding(
        padding: EdgeInsets.all(50),
        child: SingleChildScrollView(
          child: Column(
            children: [

              // Profile Picture
              Center(
                child: CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ),

              // Details
              const Divider(),
              const SizedBox(
                height: 13,
              ),
              const Text('PROFILE   DETAILS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Minimal'),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Username',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('M_I_N_I_M_A_L'),
                ],
              ),

              //  personal information
              const Divider(),
              const SizedBox(
                height: 13,
              ),
              const Text('PERSONAL   INFORMATION',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Text(
                    'User Id',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('987654'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Email Id',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('minimal@gamil.com'),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Phone No.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('738291465'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Date of Birth',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('11/11/11'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
