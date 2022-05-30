
import 'package:nyoba/services/BaseWooAPI.dart';

String packageName = 'com.only.com';

//String url = "forsaaeg.com/";
/*

String url =  "https://forsaaeg.com";
String consumerKey = "ck_2a1d51fecdf4e8af4bcec902bd662f88c5abc6df";
String consumerSecret = "cs_d8e1948feb5a36bc7255827570544260b149a2f5";*/
/*
String url =  "https://mbaadvisers.com";
String consumerKey = "ck_8355f3fa5adcc92bebca9feef15067b16cb65fb8";
String consumerSecret = "cs_94d9b84da1170e937a79d610016d38ec49d871f3";*/


String url = "https://only-cotton.com";
String consumerKey = "ck_040f0ec5f052cc4ec4ce892ed30a7cc95c4fc063";
String consumerSecret = "cs_65feb6a9bc9d87b2a7347ddba2c4800fd69de517";
//String url =  "https://souqmasri.com";
//String consumerKey = "ck_95f7e184aa58707c405e9a44c0577459aa299938";
//String consumerSecret = "cs_a59dc133644ff835fed41211fe1e6b9c1c2b186f";
// String version = '2.5.6';

// baseAPI for WooCommerce
BaseWooAPI baseAPI = BaseWooAPI(url, consumerKey, consumerSecret);

const debugNetworkProxy = false;
