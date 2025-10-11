import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Durasi Puasa", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: "16:8",
              items: const [
                DropdownMenuItem(value: "16:8", child: Text("16 Jam Puasa / 8 Jam Makan")),
                DropdownMenuItem(value: "18:6", child: Text("18 Jam Puasa / 6 Jam Makan")),
                DropdownMenuItem(value: "20:4", child: Text("20 Jam Puasa / 4 Jam Makan")),
              ],
              onChanged: (value) {},
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 30),
            const Text("Notifikasi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            SwitchListTile(
              value: true,
              onChanged: (val) {},
              title: const Text("Aktifkan pengingat waktu buka"),
            ),
          ],
        ),
      ),
    );
  }
}
