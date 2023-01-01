import 'dart:io';

Instagram profiles = [] as Instagram;

class Instagram {
  var users = [];
  var posts = [];
  var followers = [];
  Instagram(int userId) {
    users.add(userId);
  }
  void post(int postId) {
    posts.add(postId);
  }

  void follow(int user) {
    if (users.contains(user)) {
      followers.add(user);
    } else {
      print("Requested $user does not exist");
    }
  }

  void unfollow(int user) {
    if (followers.contains(user)) {
      followers.remove(user);
    } else {
      print("You are not following $user to unfollow them");
    }
  }

  void feed() {
    //Gives the 10 most recent post of the current user
    var limit;
    if (posts.length <= 10) {
      limit = posts.length;
    } else {
      limit = 10;
    }
    for (int i = 0; i < limit; i++) {
      print(posts[i]);
    }
  }

  void getfeed() {
    //prints the 10 most recent posts of the followers of current user
  }
}

void main() {
  profiles.add(new Instagram(1));
  /*user1.post(1);
  user1.post(2);
  user1.post(3);
  user1.follow(2);
  user1.feed();*/
}
