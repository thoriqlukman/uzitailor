part of 'pages.dart';

class reset extends StatelessWidget {
  const reset({Key? key}) : super(key: key);

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
                "Reset",
                style: FontJudul,
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
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
                              prefixIcon: Icon(Icons.lock_outline),
                              labelText: "New Password"),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock_outline),
                              labelText: "Confirm New Password"),
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
                              builder: (context) => Login(),
                            ));
                      },
                    ),
                  )),
            ])));
  }
}
