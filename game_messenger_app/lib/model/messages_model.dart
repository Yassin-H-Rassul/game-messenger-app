enum messageType { text, audio, image, reply }

class MessagesModel {
  final String message;
  final bool sender;
  final DateTime time;
  final messageType type;

  MessagesModel({
    required this.sender,
    required this.message,
    required this.time,
    required this.type,
  });
}

// We can develop this data model to even contain user images and the other data * viewed, not viewed and not sent,
// anyone that works with chat contacts have to integrate this data model with user names and images

List<MessagesModel> messageFields = [
  MessagesModel(
    sender: false,
    message: 'Look at how chocho sleep in my arms!',
    time: DateTime.parse('2021-01-01 16:46'),
    type: messageType.image,
  ),
  MessagesModel(
    sender: false,
    message: 'Of course let me know if you are on your way',
    time: DateTime.parse('2021-01-01 16:50'),
    type: messageType.reply,
  ),
  MessagesModel(
    sender: true,
    message: 'Ok, I\'m on my way',
    time: DateTime.parse('2021-01-01 16:50'),
    type: messageType.text,
  ),
  MessagesModel(
    sender: true,
    message: '',
    time: DateTime.parse('2021-01-01 16:50'),
    type: messageType.audio,
  ),
  MessagesModel(
    sender: false,
    message: 'Good morning, Did you sleep well?',
    time: DateTime.parse('2021-01-01 09:45'),
    type: messageType.text,
  ),
];
