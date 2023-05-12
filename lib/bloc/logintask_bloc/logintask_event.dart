abstract class LoginTaskEvent{}
class SetDataToLoginTaskEvent extends LoginTaskEvent
{
  String email;
  String password;

  SetDataToLoginTaskEvent({
     required this.email,
     required this.password,
});
}
