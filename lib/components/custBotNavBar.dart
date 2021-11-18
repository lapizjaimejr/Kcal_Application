//@dart=2.9
import 'package:flutter/material.dart';

class CustomBotNavBar extends StatefulWidget {
  const CustomBotNavBar({
    Key key,
    this.defaultSelectedIndex = 0,
    @required this.onChange,
    @required this.iconList,
  }) : super(key: key);

  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;

  @override
  _CustomBotNavBarState createState() => _CustomBotNavBarState();
}

class _CustomBotNavBarState extends State<CustomBotNavBar> {
  int selectedIndex = 0;
  List<IconData> iconList = [];

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.defaultSelectedIndex;
    iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> navBarItemList = [];

    for (var i = 0; i < iconList.length; i++) {
      navBarItemList.add(_buildNavBar(iconList[i], i));
    }

    return Row(
      children: navBarItemList,
    );
  }

  Widget _buildNavBar(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / iconList.length,
        child: Icon(icon,
            size: 30,
            color: index == selectedIndex
                ? selectedColor(selectedIndex)
                : Colors.black54),
        decoration: BoxDecoration(
          color: index == 2 ? Colors.amber.shade200 : null,
          shape: BoxShape.circle,
        ),
        margin: const EdgeInsets.only(bottom: 15.0),
      ),
    );
  }

  selectedColor(selectedIndex) {
    if (selectedIndex == 3)
      return Colors.red;
    else
      return Colors.orangeAccent;
  }
}
