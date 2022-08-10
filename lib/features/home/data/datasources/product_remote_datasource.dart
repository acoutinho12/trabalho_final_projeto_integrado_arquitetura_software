import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:ollen/features/home/data/models/product_model.dart';

import 'package:ollen/core/error/exceptions.dart';

final productsJson = [
  {
    "id": 1,
    "name": "Stewarlight",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/keg.png",
    "price": "R\$ 40.00"
  },
  {
    "id": 2,
    "name": "Viserrmstrong",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/2.png",
    "price": "R\$ 50.00"
  },
  {
    "id": 3,
    "name": "Badmeyer",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/keg.png",
    "price": "R\$ 52.00"
  },
  {
    "id": 4,
    "name": "Rutoria",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/4.png",
    "price": "R\$ 13.00"
  },
  {
    "id": 5,
    "name": "Malyer",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/5.png",
    "price": "R\$ 22.00"
  },
  {
    "id": 6,
    "name": "Sullivanosauri",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/6.png",
    "price": "R\$ 14.00"
  },
  {
    "id": 7,
    "name": "Deadders",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/7.png",
    "price": "R\$ 21.00"
  },
  {
    "id": 8,
    "name": "Russebroom Cootter",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/8.png",
    "price": "R\$ 34.00"
  },
  {
    "id": 9,
    "name": "Bloodyham",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/9.png",
    "price": "R\$ 52.00"
  },
  {
    "id": 10,
    "name": "Kellerot",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/10.png",
    "price": "R\$ 10.00"
  },
  {
    "id": 11,
    "name": "Coobim",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/keg.png",
    "price": "R\$ 57.00"
  },
  {
    "id": 12,
    "name": "Wickednald",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/12.png",
    "price": "R\$ 67.00"
  },
  {
    "id": 13,
    "name": "Wandmpson Holmetter",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/13.png",
    "price": "R\$ 51.00"
  },
  {
    "id": 14,
    "name": "Forsparkle",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/14.png",
    "price": "R\$ 48.00"
  },
  {
    "id": 15,
    "name": "Gwydce Hughesger",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/15.png",
    "price": "R\$ 22.00"
  },
  {
    "id": 16,
    "name": "Stespell Woodger",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/16.png",
    "price": "R\$ 29.00"
  },
  {
    "id": 17,
    "name": "Yocarroll Neongraham",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/17.png",
    "price": "R\$ 48.00"
  },
  {
    "id": 18,
    "name": "Rusalkennedy",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/18.png",
    "price": "R\$ 38.00"
  },
  {
    "id": 19,
    "name": "Grindyquinn",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/19.png",
    "price": "R\$ 45.00"
  },
  {
    "id": 20,
    "name": "Harriward Porlick",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/keg.png",
    "price": "R\$ 23.00"
  },
  {
    "id": 21,
    "name": "Mistink",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/keg.png",
    "price": "R\$ 8.00"
  },
  {
    "id": 22,
    "name": "Fordogmagog",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/22.png",
    "price": "R\$ 7.00"
  },
  {
    "id": 23,
    "name": "Mitchelloddy",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/23.png",
    "price": "R\$ 61.00"
  },
  {
    "id": 24,
    "name": "Zimtaylor Pearcenic",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/24.png",
    "price": "R\$ 18.00"
  },
  {
    "id": 25,
    "name": "Zombie",
    "description":
        "The End of History: The name derives from the famous work of philosopher Francis Fukuyama, this is to beer what democracy is to history. Complexity defined. Floral, grapefruit, caramel and cloves are intensified by boozy heat.",
    "image_url": "https://images.punkapi.com/v2/25.png",
    "price": "R\$12.00"
  }
];

abstract class ProductRemoteDataSource {
  Future<ProductsModel> getProducts();
}

@LazySingleton(as: ProductRemoteDataSource)
class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  // final http.Client _client;

  // ProductRemoteDataSourceImpl(this._client);

  @override
  Future<ProductsModel> getProducts() async {
    // final Uri uri = Uri.https('');
    // final response = await _client.get(
    //   uri,
    //   headers: {
    //     'Content-Type': 'application/json',
    //   },
    // );

    final response = http.Response("", 200);
    if (response.statusCode == 200) {
      return ProductModel.productsFromJson(json.encode(productsJson));
    } else {
      throw ServerException();
    }
  }
}
