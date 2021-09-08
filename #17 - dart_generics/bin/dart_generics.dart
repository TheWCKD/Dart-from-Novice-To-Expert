class Stack<T> {
  final List<T> _stack = [];

  T get peak => _stack.last;
  int get length => _stack.length;
  bool get canPop => _stack.isNotEmpty;

  T pop() {
    final T last = _stack.last;
    _stack.removeLast();
    return last;
  }

  void push(T value) => _stack.add(value);
}

class StackInt {
  final List<int> _stack = [];

  int get peak => _stack.last;
  int get length => _stack.length;
  bool get canPop => _stack.isNotEmpty;

  int pop() {
    final int last = _stack.last;
    _stack.removeLast();
    return last;
  }

  void push(int value) => _stack.add(value);
}

class StackString {
  final List<String> _stack = [];

  String get peak => _stack.last;
  int get length => _stack.length;
  bool get canPop => _stack.isNotEmpty;

  String pop() {
    final String last = _stack.last;
    _stack.removeLast();
    return last;
  }

  void push(String value) => _stack.add(value);
}

int a = 3;
int b = 4;

double calculate<T extends num>(T a, T b) => (((a + b) / 2) * 1 / 3) % 4;

void main(List<String> arguments) {
  // List<int>
  final list = [1, 2, 3];

  // Map<string, string>
  final map = {
    'name': 'wckd',
    'channel': 'flutterly',
  };
}
