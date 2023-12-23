import 'package:flutter/material.dart';
import 'package:flutter_task/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: Row(
          children: [
            CustomText(
                "My Feed", Colors.black87, 20, "MyFont", FontWeight.bold),
            const Spacer(), // Add space between text and filter icon
            const Icon(Icons.filter_list, size: 30),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: white,
            child: TabBar(
              controller: _tabController,
              labelColor: green,
              unselectedLabelColor: black,
              indicatorColor: green,
              tabs: const [
                Tab(text: 'Home'),
                Tab(text: 'Explore'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                // TAB 1 SCREEN
                Home(),

                // TAB 2 SCREEN
                Explore(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Container(
          color: white,
          height: MediaQuery.of(context).size.height / 2.5,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 15),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/karim.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          "Karim Saif", black, 14, "MyFont", FontWeight.bold),
                      CustomText("MSC STudent at NIT Hamirpur 2019 - 2021",
                          black, 10, "MyFont", FontWeight.w300),
                      Row(
                        children: [
                          CustomText("14 min ago", black, 10, "MyFont",
                              FontWeight.w300),
                          const SizedBox(width: 3),
                          const Icon(
                            Icons.timelapse_rounded,
                            size: 12,
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_vert))
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CustomText(
                      "What is the reason guys, yesterday I uploaded same type of content and they approved it today. I tried to upload they say we no longer accept this.",
                      black,
                      13,
                      "MyFont",
                      FontWeight.w400),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/post.jpg"),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                    "    " "Liked by Pushkar Poonia and 23 others",
                    lightBlack,
                    14,
                    "FontFamily",
                    FontWeight.w400),
              )
            ],
          ),
        ),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: white,
            border: Border.symmetric(horizontal: BorderSide(color: hint)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.thumb_up_off_alt_outlined),
                  ),
                  CustomText("Like", lightBlack, 16, "MyFont", FontWeight.bold)
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.wechat_rounded),
                  ),
                  CustomText(
                      "Comment", lightBlack, 16, "MyFont", FontWeight.bold)
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share_rounded),
                  ),
                  CustomText("Share", lightBlack, 16, "MyFont", FontWeight.bold)
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            color: white,
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 15),
                    // profile icon
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/karim.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(width: 10),
                    // profile info
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            "Karim Saif", black, 14, "MyFont", FontWeight.bold),
                        CustomText("MSC STudent at NIT Hamirpur 2019 - 2021",
                            black, 10, "MyFont", FontWeight.w300),
                        Row(
                          children: [
                            CustomText("14 min ago", black, 10, "MyFont",
                                FontWeight.w300),
                            const SizedBox(width: 3),
                            const Icon(
                              Icons.timelapse_rounded,
                              size: 12,
                            )
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                          color: lightGreen,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: CustomText(
                            "Poll", lightBlack, 12, "MyFont", FontWeight.w700),
                      ),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert))
                  ],
                ),
                const SizedBox(height: 10),
                // poll post
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: hint),
                            borderRadius: BorderRadius.circular(7)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  "What is the reason guys, yesterday I uploaded same type of content ?",
                                  black,
                                  14,
                                  "MyFont",
                                  FontWeight.w700),
                              const SizedBox(height: 10),
                              // horizontal bar
                              Stack(
                                children: [
                                  Container(
                                    color: lightGreen,
                                    height: 30,
                                    width: 250,
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          const SizedBox(width: 10),
                                          CustomText(
                                              "What is the reason guys",
                                              lightBlack,
                                              12,
                                              "MyFont",
                                              FontWeight.w700),
                                          const Spacer(),
                                          CustomText("20 %", black, 14,
                                              "MyFont", FontWeight.w700),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 15),
                              Stack(
                                children: [
                                  Container(
                                    color: lightGreen,
                                    height: 30,
                                    width: 110,
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          const SizedBox(width: 10),
                                          CustomText(
                                              "What is the reason guys",
                                              lightBlack,
                                              12,
                                              "MyFont",
                                              FontWeight.w700),
                                          const Spacer(),
                                          CustomText("20 %", black, 14,
                                              "MyFont", FontWeight.w700),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 15),
                              Stack(
                                children: [
                                  Container(
                                    color: lightGreen,
                                    height: 30,
                                    width: 170,
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          const SizedBox(width: 10),
                                          CustomText(
                                              "What is the reason guys",
                                              lightBlack,
                                              12,
                                              "MyFont",
                                              FontWeight.w700),
                                          const Spacer(),
                                          CustomText("20 %", black, 14,
                                              "MyFont", FontWeight.w700),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const Spacer(),
                              CustomText("23 people voted | Poll Open",
                                  lightBlack, 12, "MyFont", FontWeight.w700),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.topLeft,
                  child: CustomText(
                      "    " "Liked by Pushkar Poonia and 23 others",
                      lightBlack,
                      14,
                      "FontFamily",
                      FontWeight.w400),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
          // like comment share
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: white,
              border: Border.symmetric(horizontal: BorderSide(color: hint)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon:
                          const Icon(Icons.thumb_up_alt_rounded, color: green),
                    ),
                    CustomText("Like", green, 16, "MyFont", FontWeight.bold)
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.wechat_rounded, color: green),
                    ),
                    CustomText("Comment", green, 16, "MyFont", FontWeight.bold)
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share_rounded),
                    ),
                    CustomText(
                        "Share", lightBlack, 16, "MyFont", FontWeight.bold)
                  ],
                ),
              ],
            ),
          ),

          // comment box
          Container(
            height: 255,
            width: MediaQuery.of(context).size.width,
            color: white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      // profile icon
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/karim.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      // add comment
                      const SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: lightBlack)),
                          child: Row(
                            children: [
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 30,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: green,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: CustomText("Post", white, 12,
                                        "MyFont", FontWeight.w700),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  CustomText("No Comments Yet!", lightBlack, 16, "MyFont",
                      FontWeight.w700),
                  const SizedBox(height: 10),
                  CustomText("OR", black, 18, "MyFont", FontWeight.w700),
                  const SizedBox(height: 15),
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: lightGreen,
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          // profile icon
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/karim.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText("Pushkar Poonia", black, 14, "MyFont",
                                  FontWeight.w700),
                              CustomText("This is a comment", black, 12,
                                  "MyFont", FontWeight.w700),
                            ],
                          ),
                          const Spacer(),
                          CustomText(
                              "1 d", lightBlack, 12, "MyFont", FontWeight.w700),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomText("Load more", green, 15, "MyFont", FontWeight.w700),
                ],
              ),
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
