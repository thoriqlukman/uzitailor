part of 'pages.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
        backgroundColor: primaryColor,
        body: Center(
            child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset('assets/images/Uzi Logo 1.png',
                height: 226.01, width: 250),
            SizedBox(
              height: 10,
            ),
            Text(
              "Register",
              style: FontJudul,
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 15,
            ),
            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 2),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.alternate_email_outlined),
                        labelText: "Email"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.face_unlock_outlined),
                        labelText: "Fullname"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outline),
                        labelText: "Username"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        labelText: "Password"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "By signing up, you’re agree to our \nTerms & Conditions ",
              style: FontIsi.copyWith(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 50,
                child: InkWell(
                  child: ElevatedButton(
                    child: Text('Register'),
                    style: ElevatedButton.styleFrom(
                        primary: SecondaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => otp(),
                          ));
                    },
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Already have account? ',
                  style: FontButton.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF8D99AE)),
                ),
                TextSpan(
                    text: 'Sign In',
                    style: FontButton.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFD90429)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      }),
              ]),
              textAlign: TextAlign.center,
            ),
          ],
        )));
  }
}
