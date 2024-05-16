abstract class AbstractParams implements AbstractParamInterface {}

abstract class AbstractParamInterface<T> {
  T get data => throw "Unimplemented usecase params object getter.";
}
