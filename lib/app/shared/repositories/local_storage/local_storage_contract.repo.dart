/// Created by marcellocamara@id.uff.br on 04/06/2021.

abstract class ILocalStorage {
  /// Gets the String value from local storage
  Future<String> readValue(String key);

  /// Saves the String value into local storage
  Future<void> saveValue(String key, String value);
}
