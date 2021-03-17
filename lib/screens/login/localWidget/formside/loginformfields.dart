import 'package:flutter/material.dart';

class LoginFormFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //the height and the width of the screen
    Size _size = MediaQuery.of(context).size;
    double _fontsize = _size.width < 350 ? 10 : 20;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Se connecter",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            TextField(
              decoration: InputDecoration(
                hintText: " Email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: " Password",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150,
                  height: 40,
                  child: MaterialButton(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Connect",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  child: Text(
                    "mote de passe oublié",
                    style: TextStyle(
                        fontSize: _fontsize, fontWeight: FontWeight.w100),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
