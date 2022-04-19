import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/widgets/story_item.dart';

import '../widgets/add_post.dart';
import '../widgets/create_room.dart';
import '../widgets/post_item.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[300],
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const AddPost(),
              const CreateRoom(),
              Container(
                height: 280.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    StoryItem(
                      storyImage:
                          "https://images.unsplash.com/photo-1598240087583-2f610faf1eaf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1275&q=80",
                      userImage:
                          "https://images.unsplash.com/photo-1598211686290-a8ef209d87c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3334&q=80",
                      userName: "Tony",
                      first: true,
                    ),
                    StoryItem(
                        storyImage:
                            "https://images.unsplash.com/flagged/photo-1556746834-1cb5b8fabd54?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2252&q=80",
                        userImage:
                            "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
                        userName: "Alex",
                        first: false),
                    StoryItem(
                        storyImage:
                            "https://images.unsplash.com/photo-1575997759258-91792eaaf87b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        userImage:
                            "https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2247&q=80",
                        userName: "Luis Villasmil",
                        first: false),
                    StoryItem(
                        storyImage:
                            "https://images.unsplash.com/photo-1505391847043-8b6e24dd6c28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        userImage:
                            "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
                        userName: "Nicolos Horn",
                        first: false),
                    StoryItem(
                        storyImage:
                            "https://images.unsplash.com/photo-1594463750939-ebb28c3f7f75?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        userImage:
                            "https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        userName: "Ben Parker",
                        first: false),
                    StoryItem(
                        storyImage:
                            "https://images.unsplash.com/photo-1505391847043-8b6e24dd6c28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        userImage:
                            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        userName: "Minh Pham",
                        first: false),
                    StoryItem(
                        storyImage:
                            "https://images.unsplash.com/photo-1585128993280-9456c19c987d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1872&q=80",
                        userImage:
                            "https://images.unsplash.com/photo-1544724107-6d5c4caaff30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                        userName: "Charles",
                        first: false),
                  ],
                ),
              ),
              const PostItem(
                userImage:
                    'https://images.unsplash.com/photo-1544724107-6d5c4caaff30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                userName: 'Charles',
                caption:
                    'This is a facebook clone app developed only for learning purpose. Thank you.',
                time: '3hrs',
                imageUrl: "",
                likes: '32',
                comments: '10',
                shares: '9',
                profileImage: '',
              ),
              const PostItem(
                userImage:
                    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                userName: 'Minh Pham',
                caption:
                    'This is a facebook clone app developed only for learning purpose. Thank you.',
                time: '7hrs',
                imageUrl:
                    "https://images.unsplash.com/photo-1593642532454-e138e28a63f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                likes: '432',
                comments: '120',
                shares: '90',
                profileImage: '',
              ),
              const PostItem(
                userImage:
                    'https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                userName: 'Ben Parker',
                caption:
                    'This is a facebook clone app developed only for learning purpose. Thank you.',
                time: '8hrs',
                imageUrl: "",
                likes: '232',
                comments: '110',
                shares: '100',
                profileImage: '',
              ),
              const PostItem(
                userImage:
                    'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80',
                userName: 'Nicolos Horn',
                caption:
                    'This is a facebook clone app developed only for learning purpose. Thank you.',
                time: '10hrs',
                imageUrl:
                    "https://images.unsplash.com/photo-1598225176697-e7fc9857917b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                likes: '22',
                comments: '130',
                shares: '30',
                profileImage: '',
              ),
              const PostItem(
                userImage:
                    'https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2247&q=80',
                userName: 'Luis Villasmil',
                caption:
                    'This is a facebook clone app developed only for learning purpose. Thank you.',
                time: '12hrs',
                imageUrl:
                    "https://images.unsplash.com/photo-1558980664-3a031cf67ea8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                likes: '522',
                comments: '152',
                shares: '20',
                profileImage: '',
              ),
              const PostItem(
                userImage:
                    'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80',
                userName: 'Alex',
                caption:
                    'This is a facebook clone app developed only for learning purpose. Thank you.',
                time: '2 days',
                imageUrl: "",
                likes: '123',
                comments: '12',
                shares: '1',
                profileImage: '',
              ),
              const PostItem(
                userImage:
                    'https://images.unsplash.com/photo-1598211686290-a8ef209d87c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3334&q=80',
                userName: 'Tony',
                caption:
                    'This is a facebook clone app developed only for learning purpose. Thank you.',
                time: '2 days',
                imageUrl:
                    "https://images.unsplash.com/photo-1598259812920-0f409c9d3f14?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                likes: '125',
                comments: '13',
                shares: '4',
                profileImage: '',
              ),
              const PostItem(
                userImage:
                    'https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                userName: 'Charles',
                caption:
                    'This is a facebook clone app developed only for learning purpose. Thank you.',
                time: '1 week',
                imageUrl: "",
                likes: '534',
                comments: '423',
                shares: '103',
                profileImage: '',
              ),
              const PostItem(
                userImage:
                    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                userName: 'Minh Pham',
                caption:
                    'This is a facebook clone app developed only for learning purpose. Thank you.',
                time: '2 week',
                imageUrl:
                    "https://images.unsplash.com/photo-1558981033-f5e2ddd9c57e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                likes: '23',
                comments: '13',
                shares: '1',
                profileImage: '',
              ),
              const PostItem(
                userImage:
                    'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80',
                userName: 'Nicolos',
                caption:
                    'This is a facebook clone app developed only for learning purpose. Thank you.',
                time: '2 week',
                imageUrl:
                    "https://images.unsplash.com/photo-1593642532781-03e79bf5bec2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                likes: '21',
                comments: '20',
                shares: '23',
                profileImage: '',
              ),
            ],
          ),
        ));
  }
}
