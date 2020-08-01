import 'package:flutter/material.dart';
import 'package:fluttercovid19/models/country_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ListViewWidget extends StatelessWidget {
  final List<CountryItem> list;

  ListViewWidget({@required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        final item = list[index];
        return Container(
          height: 200.sp,
          width: 200.sp,
          margin: EdgeInsetsResponsive.only(
            left: 40,
            right: 40,
            bottom: 20,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20.sp),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x0d000000),
                  blurRadius: 4.sp,
                  spreadRadius: 2.sp,
                ),
              ]),
          child: Row(
            children: <Widget>[
              Container(
                height: 140.sp,
                width: 140.sp,
                margin: EdgeInsetsResponsive.only(
                  left: 30,
                  right: 45,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF1ec8c8),
                  borderRadius: BorderRadius.all(
                    Radius.circular(9999.sp),
                  ),
                ),
                child: Icon(
                  MaterialCommunityIcons.google_analytics,
                  size: 85.sp,
                  color: Colors.white,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    item.countryRegion,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 10,
                    softWrap: true,
                    style: GoogleFonts.robotoSlab(
                      color: Colors.black54,
                      fontSize: 55.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    item.source,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 10,
                    softWrap: true,
                    style: GoogleFonts.robotoSlab(
                      color: Color(0xFFe1e1e3),
                      fontSize: 45.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}