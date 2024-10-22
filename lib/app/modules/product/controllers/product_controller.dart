import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  //TODO: Implement ProductController

  final count = 0.obs;
  final isLoading = false.obs;
  final isEmpty = false.obs;
  final data = [].obs;

  final isSearchEmpty = false.obs;

  TextEditingController searchController = TextEditingController();
  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void onSearch() {
    print(searchController.text);
    if (searchController.text.isEmpty) {
      isSearchEmpty(true);
    } else {
      isSearchEmpty(false);
    }
  }

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
}
