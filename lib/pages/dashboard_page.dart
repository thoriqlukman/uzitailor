part of 'pages.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

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
              Text(
                "Dashboard",
                style: FontJudul,
                textAlign: TextAlign.left,
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
