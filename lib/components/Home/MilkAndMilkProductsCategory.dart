import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/screens/ProductScreen.dart';

class MilkAndMilkProductsCategory extends StatefulWidget {
  final name;

  const MilkAndMilkProductsCategory({Key? key, required this.name}) : super(key: key);

  @override
  State<MilkAndMilkProductsCategory> createState() => _MilkAndMilkProductsCategoryState();
}

class _MilkAndMilkProductsCategoryState extends State<MilkAndMilkProductsCategory> {
  _buildProductCard(product) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => ProductScreen(product: product,)));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 4,
                  spreadRadius: 2
              ),
            ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: product['id'],
              child: Container(
                width: 120,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(product['img']),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12)
                ),
              ),
            ),
            SizedBox(height: 12,),
            Text(product['name'], style: TextStyle(color: Colors.white, fontSize: 14),),
            SizedBox(height: 12,),
            Text(product['price'], style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        padding: EdgeInsets.only(top: 16, left: 8, right: 8),
        children: [
          _buildProductCard({ "id": "1", "name": "Zeytinyağı 3LT", "price": "779.99TL", "img": "https://images-prod.healthline.com/hlcmsresource/images/AN_images/is-canola-oil-healthy-1296x728-feature.jpg", "description": "Naber ",  }),
          _buildProductCard({ "id": "2", "name": "Zeytinyağı 3LT", "price": "779.99TL", "img": "https://images-prod.healthline.com/hlcmsresource/images/AN_images/is-canola-oil-healthy-1296x728-feature.jpg", "description": "Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. ",  }),
          _buildProductCard({ "id": "3", "name": "Zeytinyağı 3LT", "price": "779.99TL", "img": "https://images-prod.healthline.com/hlcmsresource/images/AN_images/is-canola-oil-healthy-1296x728-feature.jpg", "description": "Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. ",  }),
          _buildProductCard({ "id": "4", "name": "Zeytinyağı 3LT", "price": "779.99TL", "img": "https://images-prod.healthline.com/hlcmsresource/images/AN_images/is-canola-oil-healthy-1296x728-feature.jpg", "description": "Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. ",  }),
          _buildProductCard({ "id": "5", "name": "Zeytinyağı 3LT", "price": "779.99TL", "img": "https://images-prod.healthline.com/hlcmsresource/images/AN_images/is-canola-oil-healthy-1296x728-feature.jpg", "description": "Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. ",  }),
          _buildProductCard({ "id": "6", "name": "Zeytinyağı 3LT", "price": "779.99TL", "img": "https://images-prod.healthline.com/hlcmsresource/images/AN_images/is-canola-oil-healthy-1296x728-feature.jpg", "description": "Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. ",  }),
          _buildProductCard({ "id": "7", "name": "Zeytinyağı 3LT", "price": "779.99TL", "img": "https://images-prod.healthline.com/hlcmsresource/images/AN_images/is-canola-oil-healthy-1296x728-feature.jpg", "description": "Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. ",  }), 
          _buildProductCard({ "id": "8", "name": "Zeytinyağı 3LT", "price": "779.99TL", "img": "https://images-prod.healthline.com/hlcmsresource/images/AN_images/is-canola-oil-healthy-1296x728-feature.jpg", "description": "Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. ",  }),
          _buildProductCard({ "id": "9", "name": "Zeytinyağı 3LT", "price": "779.99TL", "img": "https://images-prod.healthline.com/hlcmsresource/images/AN_images/is-canola-oil-healthy-1296x728-feature.jpg", "description": "Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. ",  }),
          _buildProductCard({ "id": "10", "name": "Zeytinyağı 3LT", "price": "779.99TL", "img": "https://images-prod.healthline.com/hlcmsresource/images/AN_images/is-canola-oil-healthy-1296x728-feature.jpg", "description": "Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. ",  }),
          _buildProductCard({ "id": "11", "name": "Zeytinyağı 3LT", "price": "779.99TL", "img": "https://images-prod.healthline.com/hlcmsresource/images/AN_images/is-canola-oil-healthy-1296x728-feature.jpg", "description": "Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. ",  }),
          _buildProductCard({ "id": "12", "name": "Zeytinyağı 3LT", "price": "779.99TL", "img": "https://images-prod.healthline.com/hlcmsresource/images/AN_images/is-canola-oil-healthy-1296x728-feature.jpg", "description": "Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. ",  }),
          _buildProductCard({ "id": "13", "name": "Zeytinyağı 3LT", "price": "779.99TL", "img": "https://images-prod.healthline.com/hlcmsresource/images/AN_images/is-canola-oil-healthy-1296x728-feature.jpg", "description": "Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. ",  }),
          _buildProductCard({ "id": "14", "name": "Zeytinyağı 3LT", "price": "779.99TL", "img": "https://images-prod.healthline.com/hlcmsresource/images/AN_images/is-canola-oil-healthy-1296x728-feature.jpg", "description": "Ege’Nin Buram Buram Keskin Zeytin Kokusunu Ve Tadını Hissetmek İster Misiniz? O Zaman Komili Ege Sızma Tam Size Göre..Özel Olarak Seçilen Ege Bölgesi Zeytinlerinden Elde Edilir. Sızma Zeytinyağında Yoğun Ve Güçlü Bir Lezzet Tercih Edenler İçin Vazgeçilmezdir. Kahvaltıda, Salatada Ve Yemeklerinizde Keyifle Kullanabileceğiniz Bu Benzersiz Lezzeti Mutlaka Deneyin. Size Özel Fiyatı İle Mükemmel, çok ucuza. ",  }),
        ],
      ),
    );
    ;
  }
}
