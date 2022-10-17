part of 'pages.dart';

class otp extends StatelessWidget {
  const otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                "Enter OTP",
                style: FontJudul,
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "An 4 digit code has been sent to \nyour Email",
                style: FontIsi,
              ),
              SizedBox(
                height: 30,
              ),
              OtpTextField(
                numberOfFields: 4,
                borderColor: Colors.black,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                styles: [],
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      });
                }, // end onSubmit
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
                              builder: (context) => Dashboard(),
                            ));
                      },
                    ),
                  )),
            ])));
  }
}
