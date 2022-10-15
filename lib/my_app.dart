import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import 'channel_page.dart';
import 'channel_list_page.dart';
import 'main.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.client, required this.channel})
      : super(key: key);

  final StreamChatClient client;
  final Channel channel;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context,child){
        return StreamChat(
          client: client,
          child: child,
        );
      },
      home: StreamChannel(
        channel: channel,
        child: const ChannelListPage(),
      ),
    );
  }
}
