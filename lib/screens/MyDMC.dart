import 'package:flutter/material.dart';
class MyDMC extends StatefulWidget {
  const MyDMC({Key? key}) : super(key: key);

  @override
  State<MyDMC> createState() => _MyDMCState();
}

class _MyDMCState extends State<MyDMC> {
  var formKey = GlobalKey<FormState>();
  late int oop, dsa, coal, devops, dpc;

  var obtMarks = '';
  var percentage = '';
  var grade = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DMC"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
    child: Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'OOP',
                  labelText: 'OOP Marks',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  )
              ),
              validator: (text){
                if(text == null || text.isEmpty)
                {
                    return "Enter marks of OOP.";
                }
                else {
                  oop = int.parse(text);
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'DSA',
                  labelText: 'DSA Marks',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  )
              ),
              validator: (text){
                if(text == null || text.isEmpty)
                {
                  return "Enter marks of DSA.";
                }
                else {
                  dsa = int.parse(text);
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'COAL',
                  labelText: 'COAL Marks',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  )
              ),
              validator: (text){
                if(text == null || text.isEmpty)
                {
                  return "Enter marks of COAL.";
                }
                else {
                  coal = int.parse(text);
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'DevOps',
                  labelText: 'DevOps Marks',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  )
              ),
              validator: (text){
                if(text == null || text.isEmpty)
                {
                  return "Enter marks of DevOps.";
                }
                else {
                  devops = int.parse(text);
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'DPC',
                  labelText: 'DPC Marks',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  )
              ),
              validator: (text){
                if(text == null || text.isEmpty)
                {
                  return "Enter marks of DPC.";
                }
                else {
                  dpc = int.parse(text);
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),

            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                      child: Text("Clear"),
                      onPressed: () {
                        formKey.currentState!.reset();

                        obtMarks = '';
                        percentage = '';
                        grade = '';

                        setState(() {
                        });
                      },
                    ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: ElevatedButton(
                    child: const Text("Calculate"),
                    onPressed: () {
                      if(formKey.currentState!.validate())
                      {
                        int obtain_marks = oop+dsa+coal+devops+dpc;
                        double perc = obtain_marks * 100 / 500;

                        if (perc >= 80) {
                          grade = 'A+';
                        } else if (perc >= 70) {
                          grade = 'A';
                        } else if (perc >= 60) {
                          grade = 'B';
                        } else if (perc >= 40) {
                          grade = 'C';
                        } else {
                          grade = 'Fail';
                        }
                        obtMarks = obtain_marks.toString();
                        percentage = perc.toString();

                        setState(() {
                        });

                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text('Obtained Marks: $obtMarks'),
            const SizedBox(
              height: 16,
            ),
            Text('Percentage: $percentage'),
            const SizedBox(
              height: 16,
            ),
            Text('Grade: $grade')
          ]
        ),
    ),
      ),
    )
    );
  }
}
