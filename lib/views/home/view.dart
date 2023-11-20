import 'package:fire_pro/core/logic/helper_methods.dart';
import 'package:fire_pro/views/login/view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
              onPressed: () {
                navigateTo(const LoginView(), keepHistory: false);
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.red,
              ))
        ],
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

        ],
      ),
      // body: GridView.builder(
      //   padding: const EdgeInsets.all(10),
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 6,
      //     childAspectRatio: 200 / 300,
      //     mainAxisSpacing: 6,
      //   ),
      //   itemBuilder: (context, index) => const _Item(),
      // ),
    );
  }
}

class _Item extends StatefulWidget {
  const _Item({Key? key}) : super(key: key);

  @override
  State<_Item> createState() => _ItemState();
}

class _ItemState extends State<_Item> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      // color: Colors.red,
      child: Stack(
        children: [
          AnimatedPositioned(
            top: isClicked ? 80 : 40,
            bottom: isClicked ? 0 : 100,
            left: isClicked ? 0 : 15,
            right: isClicked ? 0 : 15,
            duration: Duration(milliseconds: 300),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
            ),
          ),
          AnimatedPositioned(
            top: isClicked ? 0 : 40,
            bottom: isClicked ? 100 : 0,
            right: isClicked ? 15 : 0,
            left: isClicked ? 15 : 0,
            duration: Duration(milliseconds: 300),
            child: GestureDetector(
              onTap: () {
                isClicked = !isClicked;
                setState(() {});
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
