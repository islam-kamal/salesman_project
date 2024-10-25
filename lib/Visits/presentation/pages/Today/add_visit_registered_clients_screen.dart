import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/Clients/presentation/widgets/registered_customers_screen_container_item.dart';
import 'package:water/widgets/custom_dropdown.dart';


class AddVisitRegisteredClientsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: _Page(),
        screenButtons:[
        ]
    );
  }
}

class _Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageState();
  }
}

class _PageState extends State<_Page> {
  @override
  Widget build(BuildContext context) {
    return   Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Row(children: [
          InkWell(
          onTap: () {
        Navigator.of(context).pop();
        },
          child: const Icon(Icons.arrow_back),
        ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.012,
      ),
              const Text(
                'العملاء المسجلين',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ]),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.008,
              ),
              Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).orientation == Orientation.portrait ?
                  MediaQuery.of(context).size.height * 0.033
                      : MediaQuery.of(context).size.height * 0.054,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1.5),
                    child: TextField(
                      cursorColor: Color.fromARGB(255, 66, 64, 64),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                          prefixIcon: Image.asset(
                            'assets/images/search.png',
                            color: Colors.black,
                          ),

                          hintText: 'البحث عن عميل',
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 146, 155, 171),
                          )
                      ),
                    ),
                  )
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'تصفية حسب',
                      style: TextStyle(
                        color: Color(0xff758195),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CustomDropdown(
                      title: 'المنطقة',
                      height: MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.033
                          : MediaQuery.of(context).size.height * 0.054,
                      width: MediaQuery.of(context).size.width * 0.5,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.008,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: MediaQuery.of(context).orientation ==
                        Orientation.portrait
                        ? 2
                        : 3,
                    crossAxisSpacing:
                    MediaQuery.of(context).orientation ==
                        Orientation.portrait
                        ? 16
                        : 11,
                    childAspectRatio:
                    MediaQuery.of(context).orientation ==
                        Orientation.portrait
                        ? 5.1 / 2
                        : 5.9 / 2),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return const RegisteredCustomersScreenContainerItem(
                    storeName: 'اسم المتجر',
                    sales: '30,000 مبيعات شهرية',
                    distance: 'يبعد 232 ك.م',
                    money: '15,000 مديونية',
                    type: "client",
                  );
                },
              ),
            ],
          ),
        )
    );
  }
}
