import 'package:e_wallet_app/core/theme/theme.dart';
import 'package:e_wallet_app/data/models/response/contact_list_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void underMaintenance() {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Fitur Dalam Pengembangan, Coming Soon'),
      ));
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 22),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () => underMaintenance(),
                        icon: const FaIcon(
                          FontAwesomeIcons.arrowLeft,
                          size: 19,
                        )),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      'Contact',
                      style: FontStyle.paragraphSemiBold.copyWith(fontSize: 22),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () => underMaintenance(),
                    icon: const FaIcon(
                      FontAwesomeIcons.plus,
                      size: 19,
                    ))
              ],
            ),
            SizedBox(
              height: 14.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: contactList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    onTap: () => underMaintenance(),
                    child: Row(
                      children: [
                        Image.asset(
                          contactList[index].profileUrl,
                          height: 60.h,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                contactList[index].nameReceiver,
                                style: FontStyle.paragraphSemiBold.copyWith(
                                  fontSize: 18.sp,
                                ),
                              ),
                              Text(
                                contactList[index].previewText,
                                overflow: TextOverflow.visible,
                                softWrap: true,
                                maxLines: 2,
                                style: FontStyle.paragraphMedium.copyWith(
                                    fontSize: 16.sp,
                                    color: ColorStyle.ink03.withOpacity(0.5)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
