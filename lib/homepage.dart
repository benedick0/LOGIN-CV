import 'package:flutter/material.dart';
import 'personal_info_screen.dart';
import 'educational_background.dart';
import 'skills.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Curriculum Vitae",
    home: Firstpage(),
  ));
}

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 250, 237),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Curriculum Vitae',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 33, 33, 34),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/Sean.jpg',
                ),
                radius: 60.0,
              ),
            ),
            Divider(
                height: 90, color: const Color.fromARGB(255, 255, 255, 254)),
            Text(
              "Name:",
              style: TextStyle(
                color: Color.fromRGBO(255, 0, 0, 0),
              ),
            ),
            Text(
              "kersten calimlim",
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text(
              "Position:",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Text(
              "IT Specialist",
              style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.mail, color: Colors.white),
                SizedBox(width: 8.0),
                Text(
                  "seancalimlim26@gmail.com",
                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.call, color: Colors.white),
                SizedBox(width: 8.0),
                Text(
                  "09923040062",
                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PersonalInfoScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.info, color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EducationalBackgroundScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.school, color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SkillsScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.settings, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
