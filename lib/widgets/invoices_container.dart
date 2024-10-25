import 'package:flutter/material.dart';

class InvoicesContainer extends StatelessWidget {
  const InvoicesContainer(
      {super.key,
      required this.pillType,
      required this.pillNumber,
      required this.date,
      required this.productNote,
      required this.color,
      required this.icon});

  final String pillType;
  final String pillNumber;
  final String date;
  final String productNote;
  final Color color;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.height * 0.202
                            : MediaQuery.of(context).size.height * 0.536,
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height * 0.074
          : MediaQuery.of(context).size.height * 0.126,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    pillType,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 247, 245, 245),
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Image.asset(
                            icon,
                            width: MediaQuery.of(context).size.width * 0.024,
                            color: color,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.002,
                          ),
                          Text(
                            productNote ,
                            style: TextStyle(
                                color: color,
                                fontSize: 14,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Image.asset('assets/images/VectorSvsds.png'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.008,
                    ),
                    Text(
                      pillNumber,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Image.asset('assets/images/VectorPkoik.png'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.008,
                    ),
                    Text(
                      date,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
