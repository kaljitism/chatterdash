import 'package:chatterdash/chatter_dash.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class MessageInputWidget extends StatefulWidget {
  const MessageInputWidget({
    required this.color,
    required this.isUserMessage,
    super.key,
  });

  final Color color;
  final bool isUserMessage;

  @override
  State<MessageInputWidget> createState() => _MessageInputWidgetState();
}

class _MessageInputWidgetState extends State<MessageInputWidget> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  Widget build(final BuildContext context) {
    return ShadInput(
      controller: textEditingController,
      placeholder: const Text('Type Message...'),
      prefix: const Padding(
        padding: EdgeInsets.only(right: 20),
        child: ShadImage.square(size: 16, LucideIcons.imagePlus),
      ),
      suffix: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ShadButton(
          height: 24,
          width: 24,
          padding: EdgeInsets.zero,
          decoration: ShadDecoration.none,
          icon: const ShadImage.square(
            size: 16,
            LucideIcons.send,
          ),
          onPressed: () {
            setState(() {
              message.add(textEditingController.text);
            });
          },
        ),
      ),
    );
  }
}
