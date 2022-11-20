part of 'pages.dart';

class Tracking extends StatefulWidget {
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: SecondaryColor,
              automaticallyImplyLeading: false,
              title: TabBar(
                indicatorColor: primaryColor,
                tabs: [
                  Tab(text: "Konfirmasi"),
                  Tab(text: "Proses"),
                  Tab(text: "Selesai"),
                  Tab(text: "Riwayat"),
                ],
              )),
        ));
  }
}
