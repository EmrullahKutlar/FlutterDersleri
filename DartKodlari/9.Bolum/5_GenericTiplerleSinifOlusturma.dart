void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("emrullah");
  myStack.push(true);
  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());
  MyStackInt myStackInt = MyStackInt();
  myStackInt.push(5);
  //myStackInt.push("emrullah"); //int olmasi lazim
  //myStackInt.push(true); //int olmasi lazim
  print(myStackInt.pop());
  //print(myStack.pop());
  //print(myStack.pop());

  GenericStack genericStack = GenericStack();
  genericStack.push("Emrullah");
  genericStack.push(5);
  print(genericStack._listem);
  GenericStack<String> genericStack2 = GenericStack();
  //buraya hangi typeı girersek yaziliyor
  genericStack2.push("Emrullah");
  //genericStack2.push(5);
  print(genericStack2._listem);
}

class MyStack {
  List _listem = [];
  push(yeniEleman) {
    _listem.add(yeniEleman);
  }

  pop() {
    return _listem.removeLast();
  }
}

class MyStackInt {
  List<int> _listem = [];
  void push(int yeniEleman) {
    _listem.add(yeniEleman);
  }

  int pop() {
    return _listem.removeLast();
  }
}

class GenericStack<T> {
  List<T> _listem = [];
  void push(T yeniEleman) {
    _listem.add(yeniEleman);
  }

  T pop() {
    return _listem.removeLast();
  }
}
