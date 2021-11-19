import 'package:flutter/material.dart';
void main() {
  runApp(const MyhomePage());
}

class MyhomePage extends StatelessWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Padding(
              padding: EdgeInsets.only(top: 80),
              child: ChangeForm(),
            )
        )
    );
  }
}

class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {

bool _flag = false;

void _handleCheckbox(bool e) {
  setState(() {
    _flag = e;
  });
}

Widget build(BuildContext context) {
  return Column(
    children: [
      const SizedBox(height: 50,),
      Text('Enter your name',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
      const SizedBox(height: 30,),
      Container(
        child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: 20
                ),
              ),
              Flexible(
                child: TextField(),),
              Container(
                padding: EdgeInsets.only(
                    left: 20
                ),
              ),
              Flexible(child: TextField(),),
              Container(
                padding: EdgeInsets.only(
                    right: 20
                ),
              ),
            ]
        ),
      ),
      Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('First'),
            Container(
                padding: EdgeInsets.only(
                    left: 155)),
            Text('Last')
          ],
        ),
      ),
      SizedBox(height: 5,),
      Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              activeColor: Colors.grey,
              value: _flag,
              onChanged: null,
            ),
            Text('I am 13 years or older',
                style: TextStyle(
                  color: Colors.grey,
                )),
          ],
        ),
      ),
      SizedBox(height: 90,),
      SizedBox(
        width: 300,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            primary: Colors.grey,
            elevation: 0.0,
          ),
          child: Text('Sync contacts and continue',
              style: TextStyle(
                  color: Colors.white
              )),
        ),
      ),
      SizedBox(height: 5,),
      Container(
        child: TextButton(
          onPressed: () {},
          child: Text('Conntinue without syncing contacts',
              style: TextStyle(
                color: Colors.grey,
              )),
        ),
      ),
    ],
  );
}
}