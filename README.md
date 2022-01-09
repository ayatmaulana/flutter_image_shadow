

Simple Widget to create Image with Shadow in Flutter.

## Features

-   Able to adjust border radius size
-   Able to adjust blur radius size
-   Able to adjust scale of shadow
-   Able to adjust offset of shadow

## Getting started

Add this line into your `pubspec.yaml`

```yaml
dependencies:
  image_shadow: ^0.0.1
```

dont forget to refresh 

```bash
$ flutter pub get
```

## Usage

```dart
import 'package:image_shadow/image_shadow.dart';

...

ImageShadow(
  blurRadius: 6,
  borderRadius: 20,
  scale: 1,
  offset: Offset(5, 5),
  image: Image.asset(
    "assets/images/logo.jpg",
  ),
);
```

## Params

| Name         | Type    | Default Value    | Option    |
| ------------ | ------- | ---------------- | --------- |
| blurRadius   | double? | 8.0              | Nullable  |
| borderRadius | double? | 0                | Nullable  |
| scale        | double? | 1                | Nullable  |
| offset       | Offset? | Offset(8.0, 8.0) | Nullable  |
| image        | Image   | -                | Mandatory |

## Additional information

Please feel free to open the issue on the github repo or contribute if you found some bug.