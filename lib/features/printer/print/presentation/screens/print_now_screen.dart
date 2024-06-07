// FeatureHome
// import 'package:bluetooth_print/bluetooth_print_model.dart';

import 'package:flutter/material.dart';

import 'package:permission_handler/permission_handler.dart';

import 'package:bluetooth_print/bluetooth_print.dart';
import 'package:bluetooth_print/bluetooth_print_model.dart';
import '../../../../../core/presentation/screens/base_screen.dart';
import '../../../../../core/presentation/themes/default_theme.dart';
import '../../../../../core/presentation/widgets/custom_app_bar.dart';
import '../../../../../core/presentation/widgets/custom_card.dart';

class PrintNowScreen extends StatefulWidget {
  const PrintNowScreen({super.key});

  @override
  State<PrintNowScreen> createState() => _PrintNowScreenState();
}

class _PrintNowScreenState extends State<PrintNowScreen> {
  BluetoothPrint bluetoothPrint = BluetoothPrint.instance;

  bool _connected = false;
  BluetoothDevice? _device;
  List<BluetoothDevice> _devices = [];
  String deviceMessage = '';

  List<LineText> generateReceiptLines() {
    return [
      LineText(
        type: LineText.TYPE_TEXT,
        content: '*** WONKA ENTERPRISES LIMITED ***',
        align: LineText.ALIGN_CENTER,
        weight: 2,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: 'P.O. BOX 67890-6062 NAIROBI',
        align: LineText.ALIGN_CENTER,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: 'PIN: P052052700H',
        align: LineText.ALIGN_CENTER,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: '////////////////////////////',
        align: LineText.ALIGN_CENTER,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: '#01 OPERATOR 01 DEVICE #001',
        align: LineText.ALIGN_LEFT,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: 'Receipt                              0001',
        align: LineText.ALIGN_LEFT,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: 'Date:                          06.03.2022',
        align: LineText.ALIGN_LEFT,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: '------------------------------------------',
        align: LineText.ALIGN_CENTER,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: 'TAX GENERAL RATE 16.00%',
        align: LineText.ALIGN_LEFT,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: 'EXCL AMT                       410,881.58',
        align: LineText.ALIGN_LEFT,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: 'VAT (16.00%)                    65,741.05',
        align: LineText.ALIGN_LEFT,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: 'TOTAL TAX                       65,741.05',
        align: LineText.ALIGN_LEFT,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: '------------------------------------------',
        align: LineText.ALIGN_CENTER,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: 'TOTAL AMOUNT             476,622.63',
        align: LineText.ALIGN_LEFT,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: '------------------------------------------',
        align: LineText.ALIGN_CENTER,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: '#ID:  0001   OPERATOR  #0001  OPERATOR 01',
        align: LineText.ALIGN_LEFT,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: '06.03.2022       02:49   ID#0001 20220001',
        align: LineText.ALIGN_LEFT,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: '------------------------------------------',
        align: LineText.ALIGN_CENTER,
        linefeed: 1,
      ),
      LineText(
        type: LineText.TYPE_TEXT,
        content: '****  END OF LEGAL RECEIPT ****',
        align: LineText.ALIGN_CENTER,
        linefeed: 1,
      ),
    ];
  }

  Map<String, dynamic> getPrintConfig() {
    return {
      'align': LineText.ALIGN_LEFT, // Default alignment for all text
      'weight': 1, // Default text weight
      'fontType': 0, // Default font type
      'width': 1, // Default width multiplier
      'height': 1, // Default height multiplier
      'linefeed': 1, // Default line feed
      'underline': 0, // Default underline
      'bold': false, // Default bold setting
      'reverse': false, // Default reverse setting
    };
  }

  void _printReceipt(BluetoothDevice device) async {
    List<LineText> receiptLines = generateReceiptLines();
    try {
      // await bluetoothPrint.connect(device);
      bluetoothPrint.state.listen((state) async {
        if (state == BluetoothPrint.CONNECTED) {
          await bluetoothPrint.printReceipt(getPrintConfig(), receiptLines);
          setState(() {
            deviceMessage = "Receipt Printed";
          });
          // await bluetoothPrint.disconnect();
        } else if (state == BluetoothPrint.DISCONNECTED) {
          setState(() {
            deviceMessage = "Disconnected from ${device.name}";
          });
        }
      });
    } catch (e) {
      setState(() {
        deviceMessage = "Error: $e";
      });
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => initBluetooth());
  }

  Future<void> initBluetooth() async {
    await [
      Permission.bluetooth,
      Permission.bluetoothScan,
      Permission.bluetoothConnect,
      Permission.location,
    ].request();

    // Check if permissions are granted
    if (await Permission.bluetooth.isGranted &&
        await Permission.bluetoothScan.isGranted &&
        await Permission.bluetoothConnect.isGranted &&
        await Permission.location.isGranted) {
      //
      var isOn = await bluetoothPrint.isOn;
      if (isOn) {
        //
        // Check if location services are enabled
        bool isLocationEnabled =
            await Permission.location.serviceStatus.isEnabled;
        if (!isLocationEnabled) {
          var request = await Permission.location.request();
          request;
          isLocationEnabled = request.isGranted;
        }

        deviceMessage = "bluetoothPrint.isOn ${bluetoothPrint.isOn}";

        bluetoothPrint.startScan(timeout: const Duration(seconds: 5));
        //
        if (!mounted) return;

        bluetoothPrint.scanResults.listen((onData) {
          //
          setState(() {
            _devices = onData.map((result) => result).toList();
          });

          //
          deviceMessage = _devices.isEmpty
              ? "No devices found. ${_devices.length} "
              : "${_devices.length} Devices found";
        });
      } else {
        deviceMessage = '$isOn';
        _showBluetoothDialog();
      }
    }
//
  }

  void _connectToDevice(BluetoothDevice device) async {
    try {
      await bluetoothPrint.disconnect();
    } catch (e) {
      // Ignore if there's an error during disconnection, it might be because no device is connected
    }

    try {
      await bluetoothPrint.connect(device);
      await bluetoothPrint.printTest();
      // Call printReceipt once the connection is established
    } catch (e) {
      setState(() {
        deviceMessage = "Connection Error: $e";
      });
    }
  }

  void _showBluetoothDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Enable Bluetooth"),
          content: const Text(
              "Bluetooth is off. Please turn it on to scan for devices."),
          actions: <Widget>[
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Turn On"),
              onPressed: () async {
                Navigator.of(context).pop();
                await BluetoothPrint
                    .instance; // Note: flutterBlue.turnOn() might not work directly; it's just for illustration
                initBluetooth(); // Retry initializing Bluetooth after turning it on
              },
            ),
          ],
        );
      },
    );
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(title: const Text('PrintNow Screen')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: double.maxFinite,
            child: CustomCard(
              child: Column(
                children: [
                  const Text(
                    'PrintNow Screen',
                    style: largeBoldTextPrimary,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "${deviceMessage}",
                    style: textPrimary,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: _device == null
                            ? null
                            : () async {
                                // Navigator.of(context)
                                //     .pushNamed('tutorsDefaultRoutePrefix');
                                if (_device != null) {
                                  _printReceipt(_device!);
                                }
                              },
                        child: Text(
                          'Print Now',
                          style:
                              _device == null ? textBoldPrimary : textPrimary,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Text(
            '${_devices.length}',
            style: textPrimary,
          ),

          StreamBuilder<bool>(
            stream: bluetoothPrint.isScanning,
            builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!) {
                  return const Center(child: const CircularProgressIndicator());
                } else {
                  return const Center(child: Text("Scan again"));
                }
              } else {
                return Center(child: Text(deviceMessage));
              }
            },
          ),

          /// APP UI
          Expanded(
              child: _devices.isEmpty
                  ? Center(child: Text(deviceMessage))
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: _devices.length,
                      itemBuilder: (context, index) => InkWell(
                            onTap: () async {
                              _connectToDevice(_devices[index]);
                              setState(() {
                                _device = _devices[index];
                              });
                            },
                            child: BluetoothDeviceListItemWitdget(
                                device: _devices[index]),
                          ))),
          StreamBuilder<bool>(
            stream: bluetoothPrint.isScanning,
            initialData: false,
            builder: (c, snapshot) {
              if (snapshot.data == true) {
                return FloatingActionButton(
                  onPressed: () => bluetoothPrint.stopScan(),
                  backgroundColor: const Color.fromARGB(255, 206, 182, 180),
                  child: const Icon(Icons.stop),
                );
              } else {
                return FloatingActionButton(
                    child: const Icon(Icons.search),
                    onPressed: () => bluetoothPrint.startScan(
                        timeout: const Duration(seconds: 15)));
              }
            },
          ),
        ]),
      ),
    );
  }

  // @override
  // void dispose() async {
  //   await bluetoothPrint.stopScan();
  //   var isConnected = await bluetoothPrint.isConnected;
  //   if (isConnected != null && isConnected == false) {
  //     await bluetoothPrint.disconnect();
  //   }
  //   await bluetoothPrint.destroy();
  //   super.dispose();
  // }
}

class BluetoothDeviceListItemWitdget extends StatelessWidget {
  const BluetoothDeviceListItemWitdget({
    super.key,
    required this.device,
  });

  final BluetoothDevice device;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              device.name!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              device.address!,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " ${device.connected != null}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.normal),
                ),
                Text(
                  "${device.connected}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ],
        ),
        device.connected == null
            ? Icon(Icons.connected_tv, color: Colors.green)
            : Icon(Icons.connected_tv, color: Colors.red),
      ],
    );
  }
}

// FunctionPage
class FunctionPageScreen extends StatelessWidget {
  const FunctionPageScreen(BluetoothDevice bluetoothDevice, {super.key});
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(title: const Text('FunctionPage Screen')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: CustomCard(
                    child: Column(
                      children: [
                        const Text(
                          'FunctionPage Screen',
                          style: largeBoldTextPrimary,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'This is the FunctionPage Screen',
                          style: textPrimary,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed('tutorsDefaultRoutePrefix');
                              },
                              child: const Text(
                                'FunctionPage Screen',
                                style: textPrimary,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
