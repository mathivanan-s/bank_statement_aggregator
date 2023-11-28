import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


const primaryColor = Color(0xFF407BFF);
const secondaryColor = Color(0xFF2D56B3);
const myBackgroundColor = Color(0xFFCCD3E8);
const textTitleColor = Color(0xFF2C2D2D);
const textSubTitleColor = Color(0xFF3F3D3D);
const mytextColor = Color(0xFF474749);

var myAppBar = AppBar(
  backgroundColor: primaryColor,
);

var myDrawer = Drawer(
  backgroundColor: myBackgroundColor,
  child: Column(
    children: const [
      DrawerHeader(
        child: Text(''),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/rocket_logo.png"), fit: BoxFit.fill)),
      ),
      ListTile(
        iconColor: mytextColor,
        textColor: mytextColor,
        // tileColor: Colors.white,
        leading: Icon(Icons.home),
        title: Center(
          child: Text(
            'Home',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                decoration: TextDecoration.none),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      ListTile(
        iconColor: mytextColor,
        textColor: mytextColor,
        // tileColor: Colors.white,
        leading: Icon(Icons.document_scanner),
        title: Text(
          'Status',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              decoration: TextDecoration.none),
          textAlign: TextAlign.center,
        ),
      ),
      ListTile(
        iconColor: mytextColor,
        textColor: mytextColor,
        // tileColor: Colors.white,
        leading: Icon(Icons.score),
        title: Text(
          'Report',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              decoration: TextDecoration.none),
          textAlign: TextAlign.center,
        ),
      ),
      ListTile(
        iconColor: mytextColor,
        textColor: mytextColor,
        // tileColor: Colors.white,
        leading: Icon(Icons.score),
        title: Text(
          'Score Card',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              decoration: TextDecoration.none),
          textAlign: TextAlign.center,
        ),
      ),
      ListTile(
        iconColor: mytextColor,
        textColor: mytextColor,
        // tileColor: Colors.white,
        leading: Icon(Icons.score),
        title: Text(
          'Logout',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              decoration: TextDecoration.none),
          textAlign: TextAlign.center,
        ),
      )
    ],
  ),
);

var myContentTextStyle = TextStyle(
    color: textTitleColor,
    fontWeight: FontWeight.normal,
    fontSize: 14,
    decoration: TextDecoration.none);

var myTitleTextStyle = TextStyle(
    color: textTitleColor,
    fontWeight: FontWeight.bold,
    fontSize: 14,
    decoration: TextDecoration.none);

var myCardTitleTextStyle = TextStyle(
    color: textTitleColor,
    fontWeight: FontWeight.normal,
    fontSize: 12,
    decoration: TextDecoration.none);

var myWebTitleContainer = Container(
  color: primaryColor,
  padding: EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Container(
        alignment: Alignment.center,
        child: SizedBox(
          height: 100,
          width: 100,
          child: Image.asset('assets/images/rocket_logo.png'),
        ),
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          MenuItem(title: 'Home'),
          SizedBox(
            width: 60,
          ),
          MenuItem(title: 'Status'),
          SizedBox(
            width: 60,
          ),
          MenuItem(title: 'Report'),
          SizedBox(
            width: 60,
          ),
          MenuItem(title: 'Score Card'),
          SizedBox(
            width: 60,
          ),
          MenuItem(title: 'Logout'),
          SizedBox(
            width: 60,
          ),
        ],
      ),
    ],
  ),
);

class LineView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(200.0, 2.0), // Adjust the size as needed
      painter: LinePainter(),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2.0;

    final start = Offset(0.0, 0.0);
    final end = Offset(size.width, 0.0);

    canvas.drawLine(start, end, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MenuItem extends StatelessWidget {
  final String title;

  const MenuItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 16, color: Colors.white, decoration: TextDecoration.none),
    );
  }
}


var controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
// Update loading bar.
      },
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},
      onNavigationRequest: (NavigationRequest request) {
        if (request.url.startsWith('https://www.youtube.com/')) {
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
    ),
  )
  ..loadRequest(Uri.parse('https://flutter.dev'));

