// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
part of open_a_i_schema;

// ==========================================
// CLASS: ChatCompletionMessageContentPart
// ==========================================

/// A content part of a user message.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class ChatCompletionMessageContentPart
    with _$ChatCompletionMessageContentPart {
  const ChatCompletionMessageContentPart._();

  // ------------------------------------------
  // UNION: ChatCompletionMessageContentPartText
  // ------------------------------------------

  /// A text content part of a message.
  const factory ChatCompletionMessageContentPart.text({
    /// The type of the content part, in this case `text`.
    @Default(ChatCompletionMessageContentPartType.text)
    ChatCompletionMessageContentPartType type,

    /// The text content.
    required String text,
  }) = ChatCompletionMessageContentPartText;

  // ------------------------------------------
  // UNION: ChatCompletionMessageContentPartImage
  // ------------------------------------------

  /// An image content part of a user message.
  const factory ChatCompletionMessageContentPart.image({
    /// The type of the content part, in this case `image_url`.
    @Default(ChatCompletionMessageContentPartType.imageUrl)
    ChatCompletionMessageContentPartType type,

    /// The URL of the image.
    @JsonKey(name: 'image_url') required ChatCompletionMessageImageUrl imageUrl,
  }) = ChatCompletionMessageContentPartImage;

  // ------------------------------------------
  // UNION: ChatCompletionMessageContentPartAudio
  // ------------------------------------------

  /// An audio content part of a user message.
  /// Learn about [audio inputs](https://platform.openai.com/docs/guides/audio).
  const factory ChatCompletionMessageContentPart.audio({
    /// The type of the content part. Always `input_audio`.
    @Default(ChatCompletionMessageContentPartType.inputAudio)
    ChatCompletionMessageContentPartType type,

    /// The audio input.
    @JsonKey(name: 'input_audio')
    required ChatCompletionMessageInputAudio inputAudio,
  }) = ChatCompletionMessageContentPartAudio;

  // ------------------------------------------
  // UNION: ChatCompletionMessageContentPartRefusal
  // ------------------------------------------

  /// A refusal content part of a message.
  const factory ChatCompletionMessageContentPart.refusal({
    /// The type of the content part, in this case `refusal`.
    @Default(ChatCompletionMessageContentPartType.refusal)
    ChatCompletionMessageContentPartType type,

    /// The refusal message generated by the model.
    required String refusal,
  }) = ChatCompletionMessageContentPartRefusal;

  /// Object construction from a JSON representation
  factory ChatCompletionMessageContentPart.fromJson(
          Map<String, dynamic> json) =>
      _$ChatCompletionMessageContentPartFromJson(json);
}

// ==========================================
// ENUM: ChatCompletionMessageContentPartEnumType
// ==========================================

enum ChatCompletionMessageContentPartEnumType {
  @JsonValue('text')
  text,
  @JsonValue('image_url')
  imageUrl,
  @JsonValue('input_audio')
  inputAudio,
  @JsonValue('refusal')
  refusal,
}

// ==========================================
// CLASS: ChatCompletionMessageImageUrl
// ==========================================

/// The URL of the image.
@freezed
class ChatCompletionMessageImageUrl with _$ChatCompletionMessageImageUrl {
  const ChatCompletionMessageImageUrl._();

  /// Factory constructor for ChatCompletionMessageImageUrl
  const factory ChatCompletionMessageImageUrl({
    /// Either a URL of the image or the base64 encoded image data.
    required String url,

    /// Specifies the detail level of the image. Learn more in the [Vision guide](https://platform.openai.com/docs/guides/vision/low-or-high-fidelity-image-understanding).
    @Default(ChatCompletionMessageImageDetail.auto)
    ChatCompletionMessageImageDetail detail,
  }) = _ChatCompletionMessageImageUrl;

  /// Object construction from a JSON representation
  factory ChatCompletionMessageImageUrl.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionMessageImageUrlFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['url', 'detail'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'url': url,
      'detail': detail,
    };
  }
}

// ==========================================
// ENUM: ChatCompletionMessageImageDetail
// ==========================================

/// Specifies the detail level of the image. Learn more in the [Vision guide](https://platform.openai.com/docs/guides/vision/low-or-high-fidelity-image-understanding).
enum ChatCompletionMessageImageDetail {
  @JsonValue('auto')
  auto,
  @JsonValue('low')
  low,
  @JsonValue('high')
  high,
}

// ==========================================
// CLASS: ChatCompletionMessageInputAudio
// ==========================================

/// The audio input.
@freezed
class ChatCompletionMessageInputAudio with _$ChatCompletionMessageInputAudio {
  const ChatCompletionMessageInputAudio._();

  /// Factory constructor for ChatCompletionMessageInputAudio
  const factory ChatCompletionMessageInputAudio({
    /// Base64 encoded audio data.
    required String data,

    /// The format of the encoded audio data. Currently supports "wav" and "mp3".
    required ChatCompletionMessageInputAudioFormat format,
  }) = _ChatCompletionMessageInputAudio;

  /// Object construction from a JSON representation
  factory ChatCompletionMessageInputAudio.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionMessageInputAudioFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['data', 'format'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'data': data,
      'format': format,
    };
  }
}

// ==========================================
// ENUM: ChatCompletionMessageInputAudioFormat
// ==========================================

/// The format of the encoded audio data. Currently supports "wav" and "mp3".
enum ChatCompletionMessageInputAudioFormat {
  @JsonValue('wav')
  wav,
  @JsonValue('mp3')
  mp3,
}
