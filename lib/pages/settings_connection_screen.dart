import 'package:auth_web_1c/web_service_settings.dart';
import 'package:flutter/material.dart';

class SettingConnectionScreen extends StatelessWidget {
  const SettingConnectionScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //backgroundColor: Colors.green,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.green),

      ),
      home: const SettingsPage(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {

    final serverAddress = TextFormField(
      decoration: const InputDecoration(
          hintText: "Server address",
          labelText: "Server address"),

    );

    final user1CWebServices = TextFormField(
      decoration: const InputDecoration(
          labelText: "User 1C Web service"),

    );

    final passwordUser1CWebServices = TextFormField(
      decoration: const InputDecoration(
          labelText: "Password user 1C Web service"),

    );

    final testWebServiceConnection = TextButton(
      onPressed: () {SettingsConnectionToWebService settingsConnection = SettingsConnectionToWebService();
                      settingsConnection.testConnection();},
      style: const ButtonStyle(
        // backgroundColor: MaterialStatePropertyAll<Color>(Colors.green) ,
        //backgroundColor: MaterialStatePropertyAll<Color?>(const Theme.of(context).primaryColor),
      ),
      child: const Text("Проверить соединение"),
    );

    final saveWebServiceSettings = TextButton(
      onPressed: () {},
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Colors.green) ,
      ),
      child: const Text("Сохранить настройки"),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Настройки соединения"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget> [
              serverAddress,
              user1CWebServices,
              passwordUser1CWebServices,
              Row(children: [
                testWebServiceConnection,
                saveWebServiceSettings

              ],)
            ],
          ),
        ),
      ),
    );
  }
}
