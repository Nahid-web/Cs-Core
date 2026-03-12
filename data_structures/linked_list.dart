/// # Singly Linked List Implementation
///
/// A Linked List is a linear data structure where elements are not stored 
/// in contiguous memory locations. Instead, each element points to the next.
///
/// ## Key Characteristics
/// - **Dynamic Size**: Can grow or shrink at runtime.
/// - **Insertion/Deletion**: Efficient O(1) if you have a reference to the node.
/// - **Access**: Linear time O(n) as you must traverse from the head.
///
/// ## Complexity
/// | Operation | Average | Worst Case |
/// | :--- | :--- | :--- |
/// | Access | O(n) | O(n) |
/// | Search | O(n) | O(n) |
/// | Insertion | O(1) | O(1) |
/// | Deletion | O(1) | O(1) |

class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value, [this.next]);
}

class LinkedList<T> {
  Node<T>? head;

  /// Adds a value to the front of the list.
  /// Complexity: O(1)
  void push(T value) {
    head = Node(value, head);
  }

  /// Adds a value to the end of the list.
  /// Complexity: O(n)
  void append(T value) {
    if (head == null) {
      push(value);
      return;
    }

    var current = head!;
    while (current.next != null) {
      current = current.next!;
    }
    current.next = Node(value);
  }

  /// Removes the first element from the list.
  /// Complexity: O(1)
  T? pop() {
    if (head == null) return null;
    final value = head!.value;
    head = head!.next;
    return value;
  }

  @override
  String toString() {
    if (head == null) return "Empty list";
    var buffer = StringBuffer();
    var current = head;
    while (current != null) {
      buffer.write('${current.value} -> ');
      current = current.next;
    }
    buffer.write('null');
    return buffer.toString();
  }
}

void main() {
  print('--- Linked List Practice ---');
  
  final list = LinkedList<int>();
  list.push(10);
  list.push(20);
  list.append(5);
  
  print('List structure: $list');
  print('Popped value: ${list.pop()}');
  print('Remaining list: $list');
}
