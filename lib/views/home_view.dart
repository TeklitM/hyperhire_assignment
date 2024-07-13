import 'package:flutter/material.dart';
import 'package:hyperhire_assignment/theme/theme.dart';
import 'package:hyperhire_assignment/widgets/product_widget.dart';

import '../datas/products_data.dart';
import '../datas/profile_data.dart';
import '../widgets/banner_widget.dart';
import 'profile_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // extendBody: true,
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Image.asset('assets/images/logo.png'),
        ),
        leadingWidth: 94,
        elevation: 1,
        shadowColor: const Color(0xFFD7D7D7),
        scrolledUnderElevation: 2,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF3C41BF),
                    Color(0xFF74FBDE),
                  ],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  style: fontRegular(12, color: mediumGrayColor),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    hintText: '검색어를 입력하세요',
                    constraints: const BoxConstraints(maxHeight: 40),
                    hintStyle: fontRegular(12, color: mediumGrayColor),
                    suffixIconConstraints: const BoxConstraints(
                      maxWidth: 44,
                      minHeight: 14,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        'assets/icons/ic_search.png',
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            const BannerWidget(),
            const SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '제일 핫한 리뷰를 만나보세요',
                        style: fontRegular(
                          12,
                          color: const Color(0xFF616161),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '리뷰️  랭킹⭐ top 3',
                        style: fontMedium(
                          18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const ImageIcon(
                    AssetImage('assets/icons/ic_more.png'),
                    size: 24,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            ListView.builder(
              shrinkWrap: true,
              controller: controller,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => ProductWidget(
                topProduct: topProducts[index],
              ),
              itemCount: topProducts.length,
            ),
            const SizedBox(
              height: 14,
            ),
            const Divider(
              color: Color(0xFFEEEEEE),
              thickness: 14,
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '골드 계급 사용자들이예요',
                      style: fontRegular(
                        14,
                        color: const Color(0xFF616161),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '베스트 리뷰어 🏆 Top10',
                      style: fontBold(
                        18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  profiles.length,
                  (index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProfileView(
                            profile: profiles[index],
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: profiles[index].isTopRated
                                      ? goldenYellowColor
                                      : Colors.transparent,
                                ),
                                padding: const EdgeInsets.all(5),
                                child: CircleAvatar(
                                  radius: 31,
                                  foregroundImage: NetworkImage(
                                    profiles[index].imageUrl,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                profiles[index].name,
                                style: fontMedium(
                                  14,
                                  color: const Color(0xFF616161),
                                ),
                              )
                            ],
                          ),
                          if (profiles[index].isTopRated)
                            const Positioned(
                              child: ImageIcon(
                                AssetImage(
                                  'assets/icons/ic_crown_gold.png',
                                ),
                                size: 20,
                                color: goldenYellowColor,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              color: const Color(0xFFEEEEEE),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'LOGO Inc.',
                    style: fontMedium(
                      14,
                      color: mediumGrayColor,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '회사 소개',
                        style: fontRegular(14, color: mediumGrayColor),
                      ),
                      Container(
                        height: 9,
                        width: 1,
                        color: const Color(0xFFC8C8C8),
                      ),
                      Text(
                        '인재 채용',
                        style: fontRegular(14, color: mediumGrayColor),
                      ),
                      Container(
                        height: 9,
                        width: 1,
                        color: const Color(0xFFC8C8C8),
                      ),
                      Text(
                        '기술 블로그',
                        style: fontRegular(14, color: mediumGrayColor),
                      ),
                      Container(
                        height: 9,
                        width: 1,
                        color: const Color(0xFFC8C8C8),
                      ),
                      Text(
                        '리뷰 저작권',
                        style: fontRegular(14, color: mediumGrayColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.send,
                            size: 16,
                            color: Color(0xFFC8C8C8),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            'review@logo.com',
                            style: fontRegular(13, color: mediumGrayColor),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1, horizontal: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: mediumGrayColor)),
                        child: Row(
                          children: [
                            Text(
                              'KOR',
                              style: fontRegular(10, color: mediumGrayColor),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                              color: mediumGrayColor,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Divider(
                    color: Color(0xFFC8C8C8),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    '@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구',
                    style: fontRegular(12, color: mediumGrayColor),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            border: Border.all(
              color: const Color(0xFFD7D7D7),
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x1A000000),
                blurRadius: 10.7,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              iconSize: 24,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              selectedItemColor: lightBlackColor,
              unselectedItemColor: mediumGrayColor,
              selectedLabelStyle: fontRegular(14),
              unselectedLabelStyle: fontRegular(14),
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/ic_home.png',
                    width: 24,
                  ),
                  label: '홈',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/ic_discover.png',
                    width: 24,
                  ),
                  label: '카테고리',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/ic_meet.png',
                    width: 24,
                  ),
                  label: '커뮤니티',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/ic_profile.png',
                    width: 24,
                  ),
                  label: '마이페이지',
                ),
              ],
            ),
          )),
    );
  }
}
