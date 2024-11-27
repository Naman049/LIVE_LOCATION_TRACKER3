import 'package:flutter/material.dart';
import 'attendance_screen.dart'; // Import AttendanceScreen

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // Custom widget for the Profile Dashboard
  Widget _buildProfileDashboard(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85, // 85% of screen width
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Large Avatar Placeholder with Initials
            const CircleAvatar(
              radius: 70, // Bigger size
              backgroundColor: Colors.blueAccent,
              child: Text(
                'JD', // Placeholder initials
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Icon(Icons.person, color: Colors.blueAccent, size: 24),
                SizedBox(width: 8),
                Text(
                  'John Doe', // Example Name
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.email, color: Colors.orange, size: 24),
                SizedBox(width: 8),
                Text(
                  'johndoe@example.com', // Example Email
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ],
            ),
            const SizedBox(height: 30),
            // Logout Button
            GestureDetector(
              onTap: () {
                // Add logout functionality here
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Logged out successfully!')),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.logout, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'Logout',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F3AE1), // Blue background
        elevation: 0,
        title: Row(
          children: const [
            Icon(Icons.work_outline, color: Colors.white), // Icon for "Workstatus"
            SizedBox(width: 8),
            Text(
              'Workstatus',
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onSelected: (value) {
              if (value == 'Attendance') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AttendanceScreen()),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$value selected')),
                );
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'Attendance',
                child: Row(
                  children: const [
                    Icon(Icons.people, color: Colors.blueAccent),
                    SizedBox(width: 8),
                    Text('Attendance'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'Activity',
                child: Row(
                  children: const [
                    Icon(Icons.directions_run, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('Activity'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'Timesheet',
                child: Row(
                  children: const [
                    Icon(Icons.schedule, color: Colors.green),
                    SizedBox(width: 8),
                    Text('Timesheet'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'Report',
                child: Row(
                  children: const [
                    Icon(Icons.bar_chart, color: Colors.orange),
                    SizedBox(width: 8),
                    Text('Report'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'JobSite',
                child: Row(
                  children: const [
                    Icon(Icons.work_outline, color: Colors.purple),
                    SizedBox(width: 8),
                    Text('JobSite'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'Team',
                child: Row(
                  children: const [
                    Icon(Icons.group, color: Colors.red),
                    SizedBox(width: 8),
                    Text('Team'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'Schedules',
                child: Row(
                  children: const [
                    Icon(Icons.calendar_today, color: Colors.teal),
                    SizedBox(width: 8),
                    Text('Schedules'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'Change Password',
                child: Row(
                  children: const [
                    Icon(Icons.lock, color: Colors.deepOrange),
                    SizedBox(width: 8),
                    Text('Change Password'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0ED2F7), Color(0xFF0F3AE1)], // Light blue to aqua gradient
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildProfileDashboard(context), // Centered Profile Dashboard
            ],
          ),
        ),
      ),
    );
  }
}
