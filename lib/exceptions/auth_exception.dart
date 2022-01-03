class AuthException implements Exception {
  static const Map<String, String> erros = {
    'EMAIL_EXISTS': 'Email já cadastrado',
    'OPERATION_NOT_ALLOWED': 'Operação não permitida!',
    'TOO_MANY_ATTEMPTS_TRY_LATER':
        'Acesso bloqueado temporariamente, Tente mais tarde',
    'EMAIL_NOT_FOUND': 'Email não encontrado',
    'INVALID_PASSWORD': 'Senha invalida',
    'USER_DISABLED': 'A conta do usuario foi desabilitada',
  };
  final String key;

  AuthException(this.key);

  @override
  String toString() {
    return erros[key] ?? 'Ocorreu um erro no precesso de autenticação';
  }
}
