class Env {
  const Env._();

  static const apiUrl = String.fromEnvironment(
    'API_URL',
    defaultValue: 'https://next-js-crud-with-hono.onrender.com',
  );
}
