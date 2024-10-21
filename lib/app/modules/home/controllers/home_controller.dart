import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabHomeController;
  final selectedIndexInfinite = 0.obs;
  final tabLength = 2.obs;
  final tabIndex = 0.obs;

  final isLoading = false.obs;
  final isEmpty = false.obs;
  final data = [].obs;

  final tabs = [].obs;

  List<String> kDemoImages = [
    "https://www.absolutearts.com/portfolio3/a/afifaridasiddique/Still_Life-1545967888l.jpg",
  ];

  void fetchData() async {
    isLoading(true);
    update(); // Memperbarui UI untuk loading state

    // Simulasi pengambilan data dari server
    await Future.delayed(Duration(seconds: 2));

    // Setelah delay, kita bisa menentukan apakah datanya kosong atau berisi
    // Ubah `data = []` untuk simulasi empty state
    data(
      [
        {
          "id": 1,
          "title": "Belajar Flutter",
          "description": "Belajar Flutter bersama Agung Setiawan",
          "price": 10000.0,
          "image": 'assets/images/models-tshirt.jpg',
        },
        {
          "id": 2,
          "title": "Belajar GetX",
          "description": "Belajar GetX bersama Agung Setiawan",
          "price": 20000.0,
          "image": 'assets/images/models-tshirt.jpg',
        }
      ],
    );

    if (data.isEmpty) {
      isEmpty(true);
    } else {
      isEmpty(false);
    }

    isLoading(false);
    update(); // Memperbarui UI untuk menampilkan data atau empty state
  }

  // hold data coming from api
  // List<dynamic>? data;
  // api call status
  // ApiCallStatus apiCallStatus = ApiCallStatus.holding;

  // getting data from api
  // getData() async {
  //   // *) perform api call
  //   await BaseClient.safeApiCall(
  //     Constants.todosApiUrl, // url
  //     RequestType.get, // request type (get,post,delete,put)
  //     onLoading: () {
  //       // *) indicate loading state
  //       apiCallStatus = ApiCallStatus.loading;
  //       update();
  //     },
  //     onSuccess: (response){ // api done successfully
  //       data = List.from(response.data);
  //       // *) indicate success state
  //       apiCallStatus = ApiCallStatus.success;
  //       update();
  //     },
  //     // if you don't pass this method base client
  //     // will automaticly handle error and show message to user
  //     onError: (error){
  //       // show error message to user
  //       BaseClient.handleApiError(error);
  //       // *) indicate error status
  //       apiCallStatus = ApiCallStatus.error;
  //       update();
  //     },
  //   );
  // }

  @override
  void onInit() {
    // getData();

    fetchData();
    super.onInit();
    tabHomeController = TabController(length: tabLength.value, vsync: this);
  }
}
