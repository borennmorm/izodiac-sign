import 'package:flutter/material.dart';
import 'package:zodiac_sign_guesser/model/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController _nameController;
  late DateTime _selectedDate;
  String _zodiacSignName = "";
  String _zodiacSignEmoji = "";
  String _zodiacSignAbout = "";

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _selectedDate = DateTime.now();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _updateZodiacSign();
      });
    }
  }

  void _updateZodiacSign() {
    final int month = _selectedDate.month;
    final int day = _selectedDate.day;

    for (final person in persons) {
      // Assuming `persons` is your list of persons from your model
      if ((month == person.birthdate.month && day >= person.birthdate.day) ||
          (month == person.birthdate.month + 1 &&
              day <= person.birthdate.day)) {
        setState(() {
          _zodiacSignName = person.zodiacSignName;
          _zodiacSignEmoji = person.zodiacSign;
          _zodiacSignAbout = person.zodiacSignAbout;
        });
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Zodiac Sign Guesser'),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: "Name",
                        prefixIcon: Icon(
                          Icons.person,
                        ),
                        hintText: "Enter your name",
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => _selectDate(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.grey[100], // Fix deprecated property
                        foregroundColor:
                            Colors.black, // Fix deprecated property
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 80),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text("When You Born"),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "📅  ${_selectedDate.day} . ${_selectedDate.month} . ${_selectedDate.year}",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Text(
                      _zodiacSignEmoji.isEmpty ? "❔" : _zodiacSignEmoji,
                      style: const TextStyle(fontSize: 40),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _zodiacSignName.isEmpty
                                ? "Zodiac Name"
                                : _zodiacSignName,
                            style: const TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            _zodiacSignAbout.isEmpty
                                ? "About Zodiac"
                                : _zodiacSignAbout,
                            style: const TextStyle(fontSize: 14),
                            textAlign: TextAlign.justify,
                            maxLines: 50, // Adjust max lines as needed
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
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
}
