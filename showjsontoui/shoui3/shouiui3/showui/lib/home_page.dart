import 'package:flutter/material.dart';
import 'package:showui/model/device_api.dart';
import 'package:showui/model/fetchDevice.dart';
import 'package:showui/model/model_device.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    void _showUI() {
      fetchDevice().then((deviceRespones) {
        final text = deviceRespones.body;
        final parse = deviceFromJson(text);
        setState(() {
          modelDevice = parse
              .map((e) => ModelDevice(
                  id: e.deviceId, name: e.deviceName, working: e.title))
              .toList();
        });
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Managerment Device And User NeoLab'),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _showUI();
      }),
      body: Container(
          child: ListView.builder(
        itemCount: modelDevice.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
            ),
            padding: EdgeInsets.all(3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${modelDevice[index].id}'),
                Text('${modelDevice[index].name}'),
                Text('${modelDevice[index].working}'),
              ],
            ),
          );
        },
      )),
    );
  }
}
