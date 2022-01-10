class Validator {
  static String? validEmail(String? value) {
    if (value!.isEmpty)
      return 'E-mail is empty';
    else if (value.contains(' '))
      return 'E-mail should\'nt contain spacing';
    else if (!value.contains('@')) return 'Ex: aaaa@aaa.com';
  }

  static String? validName(String? value) {
    if (value!.isEmpty)
      return 'Name is empty';
    else if (value.contains(' ')) return 'Name should\'nt contain spacing';
  }

  static String? validPassword(String? value) {
    if (value!.isEmpty) return 'Password is empty';
    if (value.length < 6)
      return 'Password should at least 7 digit';
    else if (value.contains(' '))
      return 'Password shouid\'nt contain spacing';
    else if (!value.contains(RegExp(r'[A-Za-z0-9]')))
      return 'Password must have at least one upper and lower character';
  }
}
