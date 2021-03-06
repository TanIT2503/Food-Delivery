import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/exandable_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //Background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Ramen.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Icon widget
          Positioned(
            top: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_outlined),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          //Infor of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.width20),
                  topLeft: Radius.circular(Dimensions.width20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: "Ramen",
                  ),
                  SizedBox(
                    height: Dimensions.height15,
                  ),
                  BigText(text: "Introduce", color: Colors.black54),
                  SizedBox(
                    height: Dimensions.height15,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "M??n n??y bao g???m m?? l??m t??? l??a m?? c???a Trung Qu???c ???????c ph???c v??? v???i th???t ho???c (th???nh tho???ng) n?????c d??ng l??m t??? c??, th?????ng c?? h????ng v??? v???i n?????c t????ng ho???c miso, v?? s??? d???ng c??c l???p ph??? nh?? th???t l???n th??i m???ng (??????, x?? x??u), nori (rong bi???n s???y kh??), menma, v?? h??nh l??. G???n nh?? m???i v??ng ??? Nh???t B???n ?????u c?? bi???n th??? ramen ri??ng, ch???ng h???n nh?? ramen tonkotsu (n?????c h???m x????ng heo) c???a Kyushu v?? ramen miso c???a Hokkaido. Mazemen l?? t??n c???a m???t lo???i m?? ramen kh??ng d??ng v???i n?????c x??p m?? m?? l?? v???i n?????c x???t (nh?? x???t Yakiniku), gi???ng nh?? m?? ???????c d??ng v???i t????ng chua ng???t. M??n n??y bao g???m m?? l??m t??? l??a m?? c???a Trung Qu???c ???????c ph???c v??? v???i th???t ho???c (th???nh tho???ng) n?????c d??ng l??m t??? c??, th?????ng c?? h????ng v??? v???i n?????c t????ng ho???c miso, v?? s??? d???ng c??c l???p ph??? nh?? th???t l???n th??i m???ng (??????, x?? x??u), nori (rong bi???n s???y kh??), menma, v?? h??nh l??. G???n nh?? m???i v??ng ??? Nh???t B???n ?????u c?? bi???n th??? ramen ri??ng, ch???ng h???n nh?? ramen tonkotsu (n?????c h???m x????ng heo) c???a Kyushu v?? ramen miso c???a Hokkaido. Mazemen l?? t??n c???a m???t lo???i m?? ramen kh??ng d??ng v???i n?????c x??p m?? m?? l?? v???i n?????c x???t (nh?? x???t Yakiniku), gi???ng nh?? m?? ???????c d??ng v???i t????ng chua ng???t."),
                    ),
                  )
                ],
              ),
            ),
          ),
          //Expandable text widget
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeight,
        padding: EdgeInsets.only(
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColors,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(Dimensions.width20),
            topLeft: Radius.circular(Dimensions.width20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height15,
                bottom: Dimensions.height15,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
                color: Color(0xFFFDD689),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColors,
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  Icon(Icons.add, color: AppColors.signColors),
                ],
              ),
            ),
            Container(
              child: BigText(text: "\$10 | Add to cart"),
              padding: EdgeInsets.only(
                top: Dimensions.height15,
                bottom: Dimensions.height15,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
                color: AppColors.iconColors1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
