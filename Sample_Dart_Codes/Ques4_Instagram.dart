import 'dart:io';

List<Instagram> profiles = <Instagram>[];
var users = [];

class Instagram {
  var userId;

  var posts = [];
  var followers = [];
  Instagram(int userId) {
    this.userId = userId;
    users.add(userId);
  }
  void post(int postId) {
    posts.add(postId);
  }

  void follow(int user) {
    //print(users);
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
      print("$userId ${posts[i]}");
    }
  }

  void getfeed() {
    //prints the 10 most recent posts of the followers of current user
    for (int i = 0; i < followers.length; i++) {
      profiles[followers[i]].feed();
    }
  }
}

void main() {
  for (int i = 0; i < 5; i++) {
    profiles.add(new Instagram(i)); //Creates 5 user accounts
    profiles[i].post(1); //Creates 1 Post for all 5 accounts
  }
  profiles[0].follow(1);
  profiles[0].follow(2);
  profiles[0].follow(3);
  profiles[0].follow(4);
  profiles[0].follow(5);
  profiles[0].getfeed();
}
