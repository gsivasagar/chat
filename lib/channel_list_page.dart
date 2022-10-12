import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChannelListPage extends StatelessWidget {
  const ChannelListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("my chat app"),
      ),
      body: ChannelsBloc(
        child:StreamChannelListView(
            channelWidget: const ChannelPage(),
        )
      ),
    );
  }
}
