import 'package:chatapp/common/comon_text.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  final ImageProvider image;
  const ChatScreen({super.key, required this.name, required this.image});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<Message> _messages = [];

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      setState(() {
        _messages.add(Message(
          content: _messageController.text,
          time: DateTime.now(),
          isSender: true,
        ));
        _messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    // Set text colors based on the current theme
    final Color textColor = isDarkMode ? Colors.white : Colors.black;
    final Color iconColor = isDarkMode ? Colors.black : Colors.white;
    return Scaffold(
      backgroundColor: iconColor,
      appBar: AppBar(
        backgroundColor: iconColor,
        title: ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: CircleAvatar(
            backgroundImage: widget.image,
          ),
          title: Text(
            widget.name,
            style: TextStyle(
                color: textColor, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            "last seen 2min ago",
            style: TextStyle(color: textColor, fontSize: 12),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[_messages.length - 1 - index];
                return MessageBubble(
                  message: message,
                  isSender: message.isSender,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: textColor,
                  radius: 20,
                  child: IconButton(
                    icon: Icon(
                      Icons.image_outlined,
                      size: 25,
                      color: iconColor,
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: SizedBox(
                    height: 40,
                    child: TextField(
                      controller: _messageController,
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(left: 15, top: 10),
                          hintText: 'Type a message ...',
                          hintStyle: TextStyle(fontSize: 13),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          filled: false),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  backgroundColor: textColor,
                  radius: 20,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.send,
                        size: 25,
                        color: iconColor,
                      ),
                      onPressed: _sendMessage,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String content;
  final DateTime time;
  final bool isSender;

  Message({
    required this.content,
    required this.time,
    required this.isSender,
  });
}

class MessageBubble extends StatelessWidget {
  final Message message;
  final bool isSender;

  const MessageBubble(
      {super.key, required this.message, required this.isSender});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
          color: isSender ? greencolor : Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment:
              isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              message.content,
              style: TextStyle(
                  color: isSender ? Colors.white : Colors.black, fontSize: 12),
            ),
            Text(
              "${message.time.hour}:${message.time.minute}",
              style: TextStyle(
                color: isSender ? Colors.white70 : Colors.black54,
                fontSize: 8,
              ),
            ),
            // Text(
            //   "${message.time.hour}:${message.time.minute}",
            //   style: TextStyle(
            //     color: isSender ? Colors.white70 : Colors.black54,
            //     fontSize: 8,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
