import 'package:flutter_web/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({Key key, this.size = MainAxisSize.min}) : super(key: key);
  final MainAxisSize size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: size,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SocialButton(imgSrc: "social/facebook.png"),
        SocialButton(imgSrc: "social/twitter.png"),
        SocialButton(imgSrc: "social/instagram.png"),
      ],
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({Key key, this.imgSrc}) : super(key: key);

  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      color: Color(0XFFFBEFD9),
      child: Center(
        child: Image.asset(
          imgSrc,
          height: 15.0,
        ),
      ),
    );
  }
}
