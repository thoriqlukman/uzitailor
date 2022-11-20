part of 'pages.dart';

class Dashboard extends StatefulWidget {
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Positioned(
            top: 0,
            child: Image.asset('Ellipse 1.png'),
            width: size.width * 0.3,
          ),
        ]));
  }
}
