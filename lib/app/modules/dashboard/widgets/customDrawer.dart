import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../constants/ui_parameters.dart';
import '../controllers/drawerController.dart';

class CustomDrawer extends GetView<MyDrawerController> {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        
        //gradient: mainGradient(context)
        
        ),
      padding: UIParameters.screenPadding,
      child: Theme(
        data: ThemeData(
            textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(primary: Colors.red))),
        child: SafeArea(
            child: Stack(
          children: [
            Positioned(
                top: 0,
                right: 0,
                child: BackButton(
                  color: Colors.white,
                  onPressed: () {
                    controller.toggleDrawer();
                  },
                )),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                  Text( 'User',
                            style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                color:Colors.white),)
                  , Spacer(flex: 1),
                  _DrawerButton(
                      onPressed: () {},
                      icon: Icons.person,
                      label: 'My GitHub'),
                  _DrawerButton(
                    icon: Icons.code,
                    label: ' Download Source Code',
                    onPressed: (){},
                  ),
                  _DrawerButton(
                      icon: Icons.contact_mail_outlined,
                      label: 'Contact Me',
                      onPressed: () {}),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _DrawerButton(
                            icon: Icons.web, label: 'Web', onPressed: () {}),
                        _DrawerButton(
                            icon: Icons.email,
                            label: 'Email',
                            onPressed:  () {}),
                        
                      ],
                    ),
                  ),
                  const Spacer(flex: 4),
                  _DrawerButton(
                    icon: Icons.logout,
                    label: 'Sign out',
                    onPressed: () {
                                         },
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class _DrawerButton extends StatelessWidget {
  const _DrawerButton({
    Key? key,
    required this.icon,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 15,
        ),
        label: Align(alignment: Alignment.centerLeft, child: Text(label)));
  }
}
