import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        focusColor: Colors.blue,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          currentIndex: 3,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          showSelectedLabels: false,
          selectedIconTheme: IconThemeData(color: Colors.blue),
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.tag,
                  color: Colors.white,
                ),
                label: 'tag'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                label: 'notifications'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.blue,
                ),
                label: 'profile'),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text('My Profile',
                    style: GoogleFonts.josefinSans(
                        fontSize: 30, fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/en/7/70/Shawn_Tok_Profile.jpg'))),
                ),
                SizedBox(
                  height: 25,
                ),
                Text('John Williams',
                    style: GoogleFonts.josefinSans(
                        color: Colors.deepPurple,
                        fontSize: 30,
                        fontWeight: FontWeight.w500)),
                Text('john.williams@gmail.com',
                    style: GoogleFonts.josefinSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey)),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          '250',
                          style: GoogleFonts.josefinSans(
                              color: Colors.blueAccent, fontSize: 25),
                        ),
                        Text(
                          'Reviews',
                          style: GoogleFonts.josefinSans(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Text(
                          '100k',
                          style: GoogleFonts.josefinSans(
                              color: Colors.blueAccent, fontSize: 25),
                        ),
                        Text(
                          'Followers',
                          style: GoogleFonts.josefinSans(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Text(
                          '30',
                          style: GoogleFonts.josefinSans(
                              color: Colors.blueAccent, fontSize: 25),
                        ),
                        Text(
                          'Following',
                          style: GoogleFonts.josefinSans(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Edit Profile',
                          style: GoogleFonts.josefinSans(
                              color: Colors.white, fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.blue),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Settings',
                          style: GoogleFonts.josefinSans(
                              color: Colors.grey, fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            primary: Colors.transparent,
                            side: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Divider(
                  thickness: 10,
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 10,
                              spreadRadius: 5)
                        ],
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://www.expomaquinaria.es/wiki/wp-content/uploads/2016/05/desayuno-americano.jpg'))),
                    width: 350,
                    height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 250, top: 15),
                          child: Container(
                            padding: EdgeInsets.only(right: 10),
                            alignment: Alignment.center,
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4.3',
                                  style: GoogleFonts.josefinSans(
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Gramercy Tavern',
                                      style: GoogleFonts.josefinSans(
                                          color: Colors.black87,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 25,
                                      width: 50,
                                      child: Text('Italian',
                                          style: GoogleFonts.josefinSans(
                                              color: Colors.white)),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.yellow.withOpacity(1),
                                            Colors.pink.withOpacity(0.5)
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white),
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      'https://upload.wikimedia.org/wikipedia/en/7/70/Shawn_Tok_Profile.jpg'))),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Container(
                                            alignment: Alignment.centerRight,
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white),
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        'https://upload.wikimedia.org/wikipedia/en/7/70/Shawn_Tok_Profile.jpg'))),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white),
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        'https://upload.wikimedia.org/wikipedia/en/7/70/Shawn_Tok_Profile.jpg'))),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30),
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white),
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        'https://upload.wikimedia.org/wikipedia/en/7/70/Shawn_Tok_Profile.jpg'))),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Icon(Icons.more_vert)
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  '42 E 20th St New York 23 USA',
                                  style: GoogleFonts.josefinSans(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
