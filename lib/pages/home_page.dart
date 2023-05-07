import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 70,),
             Center(
              child: const Text("str_title", style: TextStyle(fontSize:16 ,fontWeight: FontWeight.bold),).tr(),
            ),
            Row(
              children: [
                const SizedBox(width: 10,),
                Expanded(
                  child: MaterialButton(
                    color: Colors.green,
                    onPressed: (){
                      context.setLocale(const Locale('en', 'US'));
                    },
                    child: const Text("English", style: TextStyle(color: Colors.white),),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: (){
                      context.setLocale(const Locale('ru', 'RU'));
                    },
                    child: const Text("Russian", style: TextStyle(color: Colors.white),),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: MaterialButton(
                    color: Colors.blue,
                    onPressed: (){
                      context.setLocale(const Locale('uz', 'UZ'));
                    },
                    child: const Text("Uzbek", style: TextStyle(color: Colors.white),),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: MaterialButton(
                    color: Colors.orange,
                    onPressed: (){
                      context.setLocale(const Locale('fr', 'FR'));
                    },
                    child: const Text("French", style: TextStyle(color: Colors.white),),
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}