import 'package:flutter/material.dart';

class SearchBoxSession extends StatelessWidget {
  const SearchBoxSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: 45,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            padding: EdgeInsets.symmetric(horizontal: 16.0,),
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(16.0)
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Type to search",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.cancel_outlined),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0)
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Account",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 7),

            // width: 400,
            decoration: BoxDecoration(
                color: Color(0xFF0079BF)
            ),
            child: Column(
              children: [
                SizedBox(height: 2,),
                ListTile(
                  minVerticalPadding: 0.0,
                  leading: Image.asset(
                    "assets/images/profile.png",
                    width: 24,
                    height: 24,

                  ),
                  // leading: Icon(Icons.person, color: Colors.white70,),
                  title: Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios, color: Colors.white70,),
                ),
                SizedBox(height: 2,),
                ListTile(
                  leading: Image.asset(
                    "assets/images/reset_pin.png",
                    width: 24,
                    height: 24,
                  ),
                  title: Text(
                    "Change/Reset",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),

                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios, color: Colors.white70,),
                ),
                SizedBox(height: 2,),
                ListTile(
                  leading: Image.asset(
                    "assets/images/login.png",
                    width: 24,
                    height: 24,
                  ),
                  title: Text(
                    "Log in Options",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios, color: Colors.white70,),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Device Management",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16,),
            decoration: BoxDecoration(
              color: Color(0xFF0079BF),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset(
                    "assets/images/notification.png",
                    width: 24,
                    height: 24,
                  ),
                  title: Text(
                    "Notifications Preferences",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
                //  SizedBox(height: 1,),
                ListTile(
                  leading: Image.asset(
                    "assets/images/Themes.png",
                    width: 24,
                    height: 24,
                  ),
                  title: Text(
                    "Themes",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
              ],

            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Privacy Settings",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            //  padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: Color(0xFF0079BF)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Image.asset(
                    "assets/images/location.png",
                    width: 24,
                    height: 24,
                  ),
                  title: Text(
                    "Location sharing",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/images/pet.png",
                    width: 24,
                    height: 24,
                  ),
                  title: Text(
                    "Pet Profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Clear Cache",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),

                  ),
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(width: 15,),
              TextButton(onPressed: () {},
                  child: Text(
                    "SignOut",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
              SizedBox(width: 240,),
              IconButton(onPressed: () {},
                  icon: Icon(Icons.logout, color: Colors.red,)
              )
            ],
          ),
          Row(
            children: [
              SizedBox(width: 15,),
              TextButton(onPressed: () {},
                  child: Text(
                    "Delete Account",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
              SizedBox(width: 192,),
              IconButton(onPressed: () {},
                  icon: Icon(Icons.delete_forever_outlined, color: Colors.red,)
              )

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 40,),
                Text(
                  "Legal",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 20,),
                Text(
                  "Term of use",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(width: 20,),
                Text(
                  "Privacy policy",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}