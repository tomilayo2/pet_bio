import 'package:flutter/material.dart';


class MyPet extends StatefulWidget {
  const MyPet({super.key});

  @override
  State<MyPet> createState() => _MyPetState();
}

class _MyPetState extends State<MyPet> {
  List<String> items = ["Selected here","Bulldog","German Shepherd","Rottweiler","Great Dane","Labrador Retriever","French Bulldog"];
  String? selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = "Selected here";
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:  EdgeInsets.all(18.0),
        child: ListView(
          children: [
            Text(
                "PET BIO",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 40),
            Text(
                "Pet Name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Container(
            //  padding: EdgeInsets.all(16),
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Jack",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  )
                ),
              ),
            ),
            SizedBox(height: 25),
            Text(
                "Breed",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration:  BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black54
                ),
                borderRadius: BorderRadius.circular(8.0)
              ),
              height: 50,
              width: double.infinity,
              child: DropdownButton<String>(
                underline: const SizedBox.shrink(),

                value: selectedItem,
                items: [
                  for (String item in items)
                    DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  if (!items.contains(selectedItem)) // Ensure "Selected here" is unique
                    DropdownMenuItem<String>(
                      value: selectedItem,
                      child: Text(
                        selectedItem!,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                ],
                onChanged: (item) {
                  setState(() {
                    selectedItem = item;
                  });
                },
              ),
            ),

            SizedBox(height: 25),
            Text(
              "Allergies",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Container(
              //  padding: EdgeInsets.all(16),
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    )
                ),
              ),
            ),SizedBox(height: 25),
            Text(
              "Weight",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Container(
              //  padding: EdgeInsets.all(16),
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    )
                ),
              ),
            ),SizedBox(height: 25),
            Text(
              "Last vaccination",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Container(
              //  padding: EdgeInsets.all(16),
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    )
                ),
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Medications",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Container(
              //  padding: EdgeInsets.all(16),
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 50,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade600,
                    foregroundColor: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )
                  ),
                  child: Text(
                      "Save",
                    style: TextStyle(
                        color: Colors.white,
                      fontSize: 16,
                      fontWeight:  FontWeight.bold
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
