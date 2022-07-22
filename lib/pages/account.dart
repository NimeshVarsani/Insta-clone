import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/util/account_tab1.dart';
import 'package:insta_clone/util/account_tab2.dart';
import 'package:insta_clone/util/insta_stories.dart';
class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: 250,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Row(
                children: const [
                  Text(
                    'nimeshvarsani',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),),

                  Icon(FontAwesomeIcons.angleDown, color: Colors.black87, size: 15,)
                ],
              ),
            ),
          ),

          actions: [
            IconButton(
              icon: const Icon(Icons.add_box_outlined, color: Colors.black,),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(13.0),topRight: Radius.circular(13.0))),
                    builder: (context){
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(12.0),
                              child: Text(
                                'Create',
                                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                          ),

                          Divider(
                            color: Colors.black,
                          ),

                          BottomModalListTile(Icons.face, 'Reels', (){print('settings');}),
                          BottomModalListTile(Icons.grid_4x4_sharp, 'Post', (){print('settings');}),
                          BottomModalListTile(Icons.plus_one_rounded, 'Story', (){print('settings');}),
                          BottomModalListTile(Icons.heart_broken_rounded, 'Story Highlight', (){print('settings');}),
                          BottomModalListTile(Icons.live_tv, 'Live', (){print('settings');}),
                          BottomModalListTile(Icons.book_online, 'Guide', (){print('settings');}),

                        ],
                      );
                    });
              },
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.bars, color: Colors.black,),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(13.0),topRight: Radius.circular(13.0))),
                    builder: (context){
                  return Column(
                    children: [
                     BottomModalListTile(Icons.settings, 'Settings', (){print('settings');}),
                     BottomModalListTile(Icons.archive, 'Archive', (){print('Archive');}),
                     BottomModalListTile(Icons.local_activity, 'Activity', (){print('Activity');}),
                     BottomModalListTile(Icons.qr_code, 'QR Code', (){print('QR Code');}),
                     BottomModalListTile(Icons.bookmark, 'Saved', (){print('Saved');}),
                     BottomModalListTile(Icons.child_friendly, 'Close Friend', (){print('Close Friend');}),
                     BottomModalListTile(Icons.star, 'Favorites', (){print('Favorites');}),
                    ],
                  );
                });
              },
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //user profile and Followers
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 45,
                    child: ClipRRect(
                      child: Image.asset('images/nimesh.png'),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text('232', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            Text('Posts')
                          ],
                        ),
                        Column(
                          children: const [
                            Text('433', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            Text('Followers')
                          ],
                        ),
                        Column(
                          children: const [
                            Text('644', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            Text('Following')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //name and bio
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20.0),
              child: Container(
                child: const Text('Nimesh Varsani',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20.0),
              child: Container(
                child: const Text('I am an Android Developer',
                  style: TextStyle(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 20.0),
              child: Container(
                child: const Text('youtube.com/nimeshvarsani/',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //edit profile and add section
            Row(
              children: [
                Expanded(
                  flex: 6,
                  child: GestureDetector(
                    onTap: (){
                      //do something
                    },
                    child: Container(
                      height: 30,
                      padding: const EdgeInsets.all(5.0),
                      child: const Center(child: Text('Edit Profile'),),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      //do something
                    },
                    child: Container(
                      height: 30,
                      padding: const EdgeInsets.all(5.0),
                      child: Center(child: const Icon(FontAwesomeIcons.userPlus, size: 16,)),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //story memory section
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Container(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return InstaStories('story$index');
                  },
                ),
              ),
            ),

            //user posts
            const Padding(
              padding: EdgeInsets.all(8),
              child: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_4x4_rounded, color: Colors.black,),
                    ),

                    Tab(
                      icon: Icon(FontAwesomeIcons.user, color: Colors.black,),
                    ),
                  ]
              ),
            ),
            const Expanded(
                child: TabBarView(
                  children: [
                    AccountTab1(),
                    AccountTab2(),
                  ],
                ),
            ),


          ],
        ),
      ),
    );
  }
}

class BottomModalListTile extends StatelessWidget {

  final IconData icon;
  final String text;
  Function() onTapped;
  BottomModalListTile(this.icon, this.text, this.onTapped);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black,),
      title: Text(text, style: TextStyle(color: Colors.black),),
      onTap: onTapped,
    );
    }
  }


