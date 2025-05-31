import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  const TabsWeb(this.title, {super.key});
  final title;

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        curve: Curves.easeInCirc,
        style: isSelected
            ? GoogleFonts.openSans(
                shadows: [
                  Shadow(color: Colors.black, offset: Offset(0.0, -10.0)),
                ],
                fontSize: 25.0,
                color: Colors.transparent,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.tealAccent,
              )
            : GoogleFonts.openSans(color: Colors.black, fontSize: 23.0),
        duration: Duration(microseconds: 800),
        child: Text(widget.title),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  const SansBold(this.text, this.size, {super.key});
  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  const Sans(this.text, this.size, {super.key});
  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.openSans(fontSize: size));
  }
}

class TextForm extends StatelessWidget {
  const TextForm({
    required this.heading,
    required this.width,
    required this.hintText,
    int? maxLine,
    super.key,
  }) : maxLine = maxLine ?? 1;
  final String heading;
  final double width;
  final String hintText;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 16.0),
        SizedBox(height: 5.0),
        SizedBox(
          width: width,
          child: TextFormField(
            maxLines: maxLine,

            // inputFormatters: [
            //   LengthLimitingTextInputFormatter(2),
            //   FilteringTextInputFormatter.allow(RegExp('[ a-z1-9]')),
            // ],
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (text) {
              if (!RegExp(
                "\\bjongput\\b",
                caseSensitive: false,
              ).hasMatch(text.toString())) {
                return "asd";
              }
              return null;
            },
            decoration: InputDecoration(
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              // labelText: hintText,
              // labelStyle: GoogleFonts.poppins(
              //   fontSize: 14.0,
              //   color: Colors.black45,
              // ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AnimatedCardWeb extends StatefulWidget {
  const AnimatedCardWeb({
    required this.imagePath,
    required this.text,
    this.fit,
    this.reverse,
    super.key,
  });
  final imagePath;
  final text;
  final fit;
  final reverse;
  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 4),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0.0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0.0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.tealAccent),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: 200.0,
                width: 200.0,
                fit: widget.fit,
              ),
              SizedBox(height: 10.0),
              SansBold(widget.text, 15.0),
            ],
          ),
        ),
      ),
    );
  }
}
