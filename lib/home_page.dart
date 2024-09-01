import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Irchad Categories'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality here
            },
          ),
          PopupMenuButton<String>(
            icon: Icon(Icons.menu), // Utility button with 3 stripes
            onSelected: (String value) {
              switch (value) {
                case 'Profile':
                  // Navigate to Profile page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                  break;
                case 'Appointments':
                  // Navigate to Appointments page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppointmentsPage()),
                  );
                  break;
                case 'Meetings':
                  // Navigate to Meetings page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MeetingsPage()),
                  );
                  break;
                case 'Settings':
                  // Navigate to Settings page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsPage()),
                  );
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'Profile',
                  child: Text('Profile'),
                ),
                PopupMenuItem<String>(
                  value: 'Appointments',
                  child: Text('Your Appointments'),
                ),
                PopupMenuItem<String>(
                  value: 'Meetings',
                  child: Text('Your Meetings'),
                ),
                PopupMenuItem<String>(
                  value: 'Settings',
                  child: Text('Settings'),
                ),
              ];
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.red),
            title: Text('Medicine'),
            onTap: () {
              // Implement navigation to Medicine category
            },
          ),
          ListTile(
            leading: Icon(Icons.gavel, color: Colors.red),
            title: Text('Legal'),
            onTap: () {
              // Implement navigation to Legal category
            },
          ),
          ListTile(
            leading: Icon(Icons.computer, color: Colors.red),
            title: Text('IT Consulting'),
            onTap: () {
              // Implement navigation to IT Consulting category
            },
          ),
          // Add more categories as needed
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text('User Profile Information'),
      ),
    );
  }
}

class AppointmentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Appointments'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text('List of your appointments'),
      ),
    );
  }
}

class MeetingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Meetings'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text('List of your meetings'),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text('Settings page'),
      ),
    );
  }
}
