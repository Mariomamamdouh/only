import 'dart:developer';
import 'dart:io';

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nyoba/provider/SearchProvider.dart';
import 'package:nyoba/utils/utility.dart';
import 'package:provider/provider.dart';

import 'package:flutter_screenutil/size_extension.dart';
import '../../AppLocalizations.dart';

class QRScanner extends StatefulWidget {
  QRScanner({Key key}) : super(key: key);

  @override
  _QRScannerState createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  TextEditingController searchController = new TextEditingController();
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  bool flashOn = false;



  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context, listen: false);

    return ColorfulSafeArea(
        child: Scaffold(
      body: Stack(
        children: [

          Visibility(visible: searchProvider.loadingQr, child: customLoading()),
          Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                height: 80.h,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Find Products",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check_box_rounded,
                                color: HexColor("#1B5E20"),
                                size: 16,
                              ),
                              Text(
                                "Faster",
                                style: TextStyle(fontSize: 12),
                              ),
                              Icon(
                                Icons.check_box_rounded,
                                color: HexColor("#1B5E20"),
                                size: 16,
                              ),
                              Text(
                                "Easier",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              )),
          Positioned(
            top: 25,
            left: 15,
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Icon(Icons.arrow_back),
              ),
            ),
          ),
          Positioned(
            top: 25,
            right: 15,
            child: InkWell(
              onTap: () async {
               // await controller?.toggleFlash();
                setState(() {
                  flashOn = !flashOn;
                });
              },
              child: Container(
                padding: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: flashOn
                    ? Icon(Icons.flash_on_rounded)
                    : Icon(Icons.flash_off_rounded),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: Image.asset(
                        "images/search/barcode.png",
                        width: 120.w,
                      ),
                    ),
                    Container(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context)
                                .translate('barcode_hint'),
                            style: TextStyle(
                                fontSize: responsiveFont(12),
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    ));
  }





}
