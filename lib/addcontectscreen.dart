import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddContactScreen extends StatefulWidget {
  const AddContactScreen({super.key});

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'Add New Contact',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: FittedBox(
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                  CupertinoIcons.back,
                  color: Colors.purple,
                ),
                onPressed: () => Navigator.pop(context),
              ),
              const Text(
                "Back",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check, color: Colors.purple),
            onPressed: () {
              // Add your save logic here
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Profile Section
          Container(
            color: Colors.grey[400],
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Column(
              children: const [
                Icon(Icons.person, size: 70, color: Colors.black45),

              ],
            ),
          ),

          // Form Section
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  // First Name (with icon)
                  _buildTextFieldWithIcon(
                    icon: Icons.person,
                    labelText: "First Name",
                    initialValue: "Anthony",
                  ),
                  const SizedBox(height: 16),

                  // Last Name (without icon but aligned)
                  _buildTextFieldWithoutIconAligned(
                    labelText: "Last Name",
                    initialValue: "Sam",
                  ),
                  const SizedBox(height: 16),

                  // Phone (with icon)
                  _buildTextFieldWithIcon(
                    icon: Icons.phone,
                    labelText: "Phone",
                    initialValue: "+1 (771) 891-2281",
                  ),
                  const SizedBox(height: 16),

                  // Email (with icon)
                  _buildTextFieldWithIcon(
                    icon: Icons.email,
                    labelText: "Email",
                    initialValue: "tonysam@example.com",
                  ),
                  const SizedBox(height: 16),
                  _buildTextFieldWithIcon(
                    icon: Icons.business,
                    labelText: "Company",
                    initialValue: "COmpany name",
                  ),
                  const SizedBox(height: 16),
                  _buildTextFieldWithIcon(
                    icon: Icons.location_city,
                    labelText: "state",
                    initialValue: "state",
                  ),
                  const SizedBox(height: 16),

                  // Last Name (without icon but aligned)
                  _buildTextFieldWithoutIconAligned(
                    labelText: "City",
                    initialValue: "city",
                  ),const SizedBox(height: 16),

                  // Last Name (without icon but aligned)
                  _buildTextFieldWithoutIconAligned(
                    labelText: "Street",
                    initialValue: "street",
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 20,
            width: double.infinity,
            color: Colors.grey[400],
          )
        ],
      ),

    );
  }

  // TextField with Icon
  Widget _buildTextFieldWithIcon({
    required IconData icon,
    required String labelText,
    required String initialValue,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 24,
          height: 56,
          alignment: Alignment.center,
          child: Icon(
            icon,
            color: Colors.purple,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: TextFormField(
            initialValue: initialValue,
            decoration: InputDecoration(
              labelText: labelText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  // Clear field logic
                },
              ),
            ),
          ),
        ),
      ],
    );

  }

  // TextField without Icon but aligned
  Widget _buildTextFieldWithoutIconAligned({
    required String labelText,
    required String initialValue,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Placeholder for the icon to align with fields that have icons
        const SizedBox(
          width: 24,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: TextFormField(
            initialValue: initialValue,
            decoration: InputDecoration(
              labelText: labelText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  // Clear field logic
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
