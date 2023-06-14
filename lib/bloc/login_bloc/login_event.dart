abstract class LoginEvent{}

class SetDataToLoginEvent extends LoginEvent
{
  String email ;
  String password ;

  SetDataToLoginEvent({
    required this.email,
    required this.password,

});
}