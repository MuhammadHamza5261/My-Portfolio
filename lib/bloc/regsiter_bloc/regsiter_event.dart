abstract class RegisterEvent{}

class SetDataToRegisterEvent extends RegisterEvent
{
  String email ;
  String password ;

  SetDataToRegisterEvent({
    required this.email,
    required this.password,
});
}