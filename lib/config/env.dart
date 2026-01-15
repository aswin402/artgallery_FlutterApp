class Env {
  const Env._();

  static const apiUrl = String.fromEnvironment(
    'API_URL',
    defaultValue: 'http://localhost:5000',
  );
}
