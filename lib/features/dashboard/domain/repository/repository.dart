// This is the contract that the outside world must meet
// to implemented in the data layer

abstract class FRepostory<T>{
    Future<T> getMyData();
}