class UserModel {
  String userId;
  String userName;
  String userEmail;
  String userMobile;
  String userReferral;
  String userPasscode;

  UserModel(
      {this.userId,
      this.userName,
      this.userEmail,
      this.userMobile,
      this.userReferral,
      this.userPasscode});

  getUserId() {
    return this.userId;
  }

  getUserEmail() {
    return this.userEmail;
  }

  getUserName() {
    return this.userName;
  }

  getUserMobile() {
    return this.userMobile;
  }

  getUserReferral() {
    return this.userReferral;
  }

  getUserPasscode() {
    return this.userPasscode;
  }

  setUserId(userId) {
    this.userId = userId;
  }

  setUserEmail(userEmail) {
    this.userEmail = userEmail;
  }

  setUserName(userName) {
    this.userName = userName;
  }

  setUserMobile(userMobile) {
    this.userMobile = userMobile;
  }

  setUserReferral(userReferral) {
    this.userReferral = userReferral;
  }

  setUserPasscode(userPassocde) {
    this.userPasscode = userPassocde;
  }
}
