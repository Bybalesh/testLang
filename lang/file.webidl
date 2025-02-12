(function (Prism) {
```webidl
interface MediaController {
  attribute DOMString src;
  readonly attribute boolean autoplay;
  readonly attribute boolean muted;
  readonly attribute boolean paused;
  readonly attribute double volume;
  readonly attribute boolean seeking;
  readonly attribute boolean canPlay;
  readonly attribute boolean ended;
  readonly attribute boolean fullscreen;
  readonly attribute boolean closedCaption;
  readonly attribute boolean pictureInPicture;
  readonly attribute boolean remoteControl;
  readonly attribute boolean fastSeek;
  readonly attribute boolean audioDescription;
