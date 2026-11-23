# gonzales_mobprog

A new Flutter project.

## Lab Activity 1: Discussion

To integrate images into `newsfeed_card.dart` dynamically, I added a boolean parameter (`hasImage`) and an optional string parameter (`postImage`) to the `NewsFeedCard` constructor. Inside the widget's `build` method, a conditional `if (hasImage && postImage != null)` statement checks whether the post includes an image before rendering an `Image.network` widget wrapped in `ClipRRect` (using `width: double.infinity` and `BoxFit.cover` for consistent card sizing). When `hasImage` is `false` or `postImage` is `null`, Flutter skips rendering the image container completely, preventing empty gaps in text-only posts.