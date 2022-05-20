import 'package:flutter/material.dart';
import 'package:mystore/models/get_all_products_models.dart';
import 'package:mystore/services/get_all_products.dart';

class HomePageViewBody extends StatefulWidget {
  HomePageViewBody({Key? key}) : super(key: key);

  @override
  State<HomePageViewBody> createState() => _HomePageViewBody();
}

class _HomePageViewBody extends State<HomePageViewBody> {
  // late Future<ProductsService> allpro = ProductsService.getallproducts();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductsModel>>(
      future: ProductsService().getallproducts(),
      //initialData: CircularProgressIndicator(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          //   List<ProductsModel> products = snapshot.data!;
          return GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            reverse: true,
            clipBehavior: Clip.none,
            padding: EdgeInsets.only(top: 75),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              // childAspectRatio: 1.5,
            ),
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 180,
                    height: 140,
                    padding: EdgeInsets.only(left: 8, right: 8, bottom: 4),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        spreadRadius: 0,
                        offset: Offset(0, 0),
                        blurRadius: 20,
                        blurStyle: BlurStyle.normal,
                      ),
                    ]),
                    child: Card(
                      elevation: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '${snapshot.data![index].title}',
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(r'$'
                                  '${snapshot.data![index].price!.toString()}'),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_outlined,
                                    color: Colors.red,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: -50,
                    child: Image.network(
                      '${snapshot.data![index].image}',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text('snap shot has error ${snapshot.hasError} ');
        }
        return Center(child: const CircularProgressIndicator());
      },
    );
  }
}
