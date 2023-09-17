import 'package:stream_feed/stream_feed.dart';

class StreamFeedService {
  late final StreamFeedClient _client;
  StreamFeedClient get client => _client;

  StreamFeedService() {
    // _client = StreamFeedClient(streamFeedApiKey);
  }
}
