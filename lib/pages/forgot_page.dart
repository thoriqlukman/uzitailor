part of 'pages.dart';

class forgot extends StatelessWidget {
  const forgot({Key? key}) : super(key: key);

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
                "Forgot \nPassword?",
                style: FontJudul,
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Don’t worry! it happens. Please enter \nthe addres assoclated with your account.",
                style: FontIsi,
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
                              prefixIcon: Icon(Icons.alternate_email_outlined),
                              labelText: "Email ID"),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  height: 50,
                  child: InkWell(
                    child: ElevatedButton(
                      child: Text('Submit'),
                      style: ElevatedButton.styleFrom(
                          primary: SecondaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => reset(),
                            ));
                      },
                    ),
                  )),
            ])));
  }
}
