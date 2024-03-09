import 'package:budget_app/pages/show_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252730),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 65, 20, 18),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Row(
              children: [
                Icon(
                  Icons.chevron_left,
                  color: Color(0xFF7082E1),
                ),
                Text(
                  'Back',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Color(0xFF7082E1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Settings',
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            margin: const EdgeInsets.only(bottom: 8),
            width: double.infinity,
            padding: const EdgeInsets.all(17),
            decoration: BoxDecoration(
                color: const Color(0xFF2E313C),
                borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/Paper.png'),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      'Share with friends',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const Icon(
                  Icons.chevron_right,
                  color: Color(0xFF7082E1),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const ReadTermsOrPrivacyScreenView(
                          link: 'google.com',
                        )),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 8),
              width: double.infinity,
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                  color: const Color(0xFF2E313C),
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Privacy.png'),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        'Privacy Policy',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Color(0xFF7082E1),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const ReadTermsOrPrivacyScreenView(
                          link: 'google.com',
                        )),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 8),
              width: double.infinity,
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                  color: const Color(0xFF2E313C),
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Notes.png'),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        'Terms of Use',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Color(0xFF7082E1),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
