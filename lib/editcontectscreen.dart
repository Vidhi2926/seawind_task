import 'package:flutter/material.dart';

class ContactDetailsScreen extends StatelessWidget {
  const ContactDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: TextButton(
          onPressed: () {
            // Handle back or edit contact action
          },
          child: FittedBox(
            child: Text(
              "Edit contact",
              style: TextStyle(color: Colors.purple, fontSize: 150),
            ),
          ),
        ),
        title: Text(
          "Edit contact",
          style: TextStyle(color: Colors.purple),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // Edit contact action
            },
            icon: Icon(Icons.edit, color: Colors.purple),
          ),
          IconButton(
            onPressed: () {
              // Delete contact action
            },
            icon: Icon(Icons.delete, color: Colors.purple),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Section
            SizedBox(height: 16),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/profile_picture.png'), // Replace with actual image
            ),
            SizedBox(height: 16),
            Text(
              "Leticia Ford",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContactActionButton(icon: Icons.message, label: "Message"),
                ContactActionButton(icon: Icons.phone, label: "Call"),
                ContactActionButton(icon: Icons.mail, label: "Mail"),
              ],
            ),
            SizedBox(height: 16),
            // Contact Details Section
            ContactDetailTile(
              icon: Icons.phone,
              label: "Phone",
              value: "(228)320-8320",
              onCopy: () {
                // Copy phone number action
              },
            ),
            ContactDetailTile(
              icon: Icons.email,
              label: "Email",
              value: "leticia.ford@fordconsulting.com",
              onCopy: () {
                // Copy email action
              },
            ),
            ContactDetailTile(
              label: "Company",
              value: "Ford Consulting",
            ),
            ContactDetailTile(
              label: "City",
              value: "Lansing",
            ),
            ContactDetailTile(
              label: "Address",
              value: "2900 Ford Drive",
            ),
            ContactDetailTile(
              label: "Zip",
              value: "23920",
            ),
          ],
        ),
      ),
    );
  }
}

class ContactActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const ContactActionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.purple.withOpacity(0.1),
          child: Icon(icon, color: Colors.purple),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
      ],
    );
  }
}

class ContactDetailTile extends StatelessWidget {
  final IconData? icon;
  final String label;
  final String value;
  final VoidCallback? onCopy;

  const ContactDetailTile({
    this.icon,
    required this.label,
    required this.value,
    this.onCopy,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          if (icon != null) Icon(icon, color: Colors.purple),
          if (icon != null) SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 4),
                Text(
                  value,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          if (onCopy != null)
            IconButton(
              onPressed: onCopy,
              icon: Icon(Icons.copy, color: Colors.grey),
            ),
        ],
      ),
    );
  }
}
