abstract class IHive<T> {
  Future<void> open();
  Future<void> close();
}
