import 'package:flutter/material.dart';

import '../../utils/Constants.dart';
import '../exhibitor_registration/ExhibitorRegistrationScreen.dart';
import '../widgets/CustomIcon.dart';

class TableForEventDetails extends StatelessWidget {
  const TableForEventDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Table(
          border: TableBorder.all(
              width: 0.5,
          color: kSecondaryColor),
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                        //child: CustomIcon(iconPath: 'assets/images/indian_dairy.jpg'),
                      child: Image.asset(
                        'assets/images/indian_dairy.jpg',
                        width: 100.0,
                        height: 50.0,
                      ),

                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          'Seminar on Technological interventions in indian dairy',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),),
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Read More',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                                decoration: TextDecoration.underline
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>
                                const ExhibitorRegistrationScreen(
                                    url: 'https://interfoodtech.com/ida-seminar')));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Center(
                        child: Text(
                          'June 6, 2024',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),)
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                        //child: CustomIcon(iconPath: 'assets/images/aftapi.jpg')
                      child: Image.asset(
                        'assets/images/aftapi.jpg',
                        width: 100.0,
                        height: 50.0,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          "Seminar on AFTPAI's Food Technology Forum",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),),
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Read More',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12,
                                  decoration: TextDecoration.underline
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>
                                const ExhibitorRegistrationScreen(
                                    url: 'https://interfoodtech.com/aftpai-seminar')));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Center(
                        child: Text(
                          'June 6, 2024',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),)
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                        //child: CustomIcon(iconPath: 'assets/images/annapoorna.png')
                      child: Image.asset(
                        'assets/images/annapoorna.png',
                        width: 100.0,
                        height: 50.0,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          'Seminar on international food & beverage trade expo',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),),
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Read More',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12,
                                  decoration: TextDecoration.underline
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>
                                const ExhibitorRegistrationScreen(
                                    url: 'https://annapoornainterfood.com/')));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Center(
                        child: Text(
                          'June 5, 2024',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),)
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      //child: CustomIcon(iconPath: 'assets/images/annapoorna.png')
                      child: Image.asset(
                        'assets/images/ficci.png',
                        width: 100.0,
                        height: 50.0,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          'Seminar on June 5, 2024',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),),
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Read More',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12,
                                  decoration: TextDecoration.underline
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>
                                const ExhibitorRegistrationScreen(
                                    url: 'https://www.ficcifoodworld.com/')));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Center(
                        child: Text(
                          'June 6, 2024',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),)
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
