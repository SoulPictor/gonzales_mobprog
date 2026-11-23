# gonzales_mobprog

A new Flutter project.
## Lab Activity 1: Discussion

To integrate images into `newsfeed_card.dart` dynamically, I added a boolean parameter (`hasImage`) and an optional string parameter (`postImage`) to the `NewsFeedCard` constructor, alongside registering the `assets/images/` directory in `pubspec.yaml`. Inside the widget's `build` method, a conditional `if (hasImage && postImage != null)` statement evaluates whether the post contains an image before rendering an `Image.asset` widget wrapped in `ClipRRect` (with `width: double.infinity` and `BoxFit.cover` for consistent card sizing). When `hasImage` is `false` or no path is provided, Flutter skips rendering the image container completely, preventing empty gaps in text-only posts.