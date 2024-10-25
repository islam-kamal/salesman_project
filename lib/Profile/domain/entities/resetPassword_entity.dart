class ResetPasswordEntity{
  final String login;
  final String oldPassword;
  final String newPassword;
  ResetPasswordEntity({required this.login,required this.oldPassword,required this.newPassword});
}