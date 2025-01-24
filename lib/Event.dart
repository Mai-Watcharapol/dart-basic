class Event {
  final String? id;
  final String? pubkey;
  final int? createdAt;
  final int? kind;
  final List<List<String>>? tags;
  final String? content;
  final String? sig;

  Event({
    this.id,
    this.pubkey,
    this.createdAt,
    this.kind,
    this.tags,
    this.content,
    this.sig,
  });

  @override
  String toString() {
    return 'Event{id: $id, pubkey: $pubkey, createdAt: $createdAt, kind: $kind, tags: $tags, content: $content, sig: $sig}';
  }
}

void main() {
  // สร้าง object ของคลาส Event
  Event event = Event(
    id: '123',
    pubkey: 'abcdef',
    createdAt: DateTime.now().millisecondsSinceEpoch,
    kind: 1,
    tags: [
      ['tag1', 'tag2'],
      ['tag3']
    ],
    content: 'This is a sample event',
    sig: 'signature',
  );

  // เรียกใช้งานค่าต่างๆ
  print('Event ID: ${event.id}');
  print('Public Key: ${event.pubkey}');
  print('Created At: ${event.createdAt}');
  print('Kind: ${event.kind}');
  print('Tags: ${event.tags}');
  print('Content: ${event.content}');
  print('Signature: ${event.sig}');
  print('Event Object: $event');
}
