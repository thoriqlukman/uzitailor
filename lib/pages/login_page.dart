part of 'pages.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    GestureDetector(onTap: () => FocusScope.of(context).unfocus());
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
              "Log In",
              style: FontJudul,
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 04),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: "Username"),
                      inputFormatters: [],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          // suffixIcon: GestureDetector(
                          //   onTap: () {
                          //     setState(() {
                          //       _obscureText = !_obscureText;
                          //     });
                          //   },
                          //   child: Icon(_obscureText
                          //       ? Icons.visibility
                          //       : Icons.visibility_off),
                          // ),
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Password"),
                      obscureText: _obscureText,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Forgot Password ?',
                    style: FontButton.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFD90429)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => forgot(),
                            ));
                      }),
              ]),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                height: 50,
                child: InkWell(
                  child: ElevatedButton(
                    child: Text('Log In'),
                    style: ElevatedButton.styleFrom(
                        primary: SecondaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
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
                  text: "Don't Have Account? ",
                  style: FontButton.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF8D99AE)),
                ),
                TextSpan(
                    text: 'Sign Up',
                    style: FontButton.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFD90429)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Register(),
                            ));
                      }),
              ]),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
