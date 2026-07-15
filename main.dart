import "package:http/http.dart" as http;

String intro({String? name, required int age}) {
  // '?' after annotation means that variable is oprtional and can be null. 'required' means that variable is required and cant be null.
  return "My name is $name and my age is $age";
}

class collection {
  String name;
  List data;

  collection(this.name, this.data);

  randomItem() {
    data.shuffle();
    return data[0];
  }
}

class menu {
  String name;
  double price;

  menu(this.name, this.price);

  @override // overriding a built in method of th eobject class to return a string representation of the object.
  String toString() {
    return show();
  }

  String show() {
    return "Item: $name, Price: $price";
  }
}

class pizza extends menu {
  Set<String> toppings;

  pizza(this.toppings, String name, double price) : super(name, price);

  @override //method Overriding
  String show() {
    final toppingsList = toppings.join(", ");
    return "Item: $name, Price: $price, Toppings: $toppingsList";
  }
}

void main() async {
  /*
  VID - 1 and 2
  
  for (int i = 0; i < 5 ; i++){
        print ("hello $i");
    }
    

  var name = "John Doe";
  name = "Jane Doe";
  print(name);

  final age =
      10; //final creates a runtime constant , hence we use it when we dont know what the value will be at compile time but we know it will not change after being set or set it during execution of the code.

  //age = 9; <-- cant do this

  const pass = true; //const creates a compile time constant

  //pass = false; <-- cant do this

  print(age);
  print(pass);

  print("Name is ${name}");
  

  const String name = "John Doe";
  const int age = 10;
  bool isAlive = true;
  double height = 5.9;
  print(name);
  print(age);
  print(isAlive);
  print(height);

  int? num;
  print(num); // this will give an error because num is not initialized and hence is null and when using type annotation , the type cant be null unless we use the ? operator to make it nullable.
  

  final introduction = intro(
    age: 10,
    name: "Jane Doe",
  ); // passing the arguments as a key value pair does not require to be in the correct order. it is nessasarty to write positional arguments when passing with a named parameter.
  print(introduction);
  

  List<int> list = [1, 2, 3, 4, 5];
  list.add(6);
  //list.remove(3);
  //list.removeLast();
  list.shuffle();
  //print(list);

  Set<int> set = {1, 2, 3, 4, 5};
  set.add(5);
  //print(set); // set does not allow duplicates and hence will not add 5 again.

  Map<String, String> map = {
    '1': 'January',
    '2': 'February',
    '3': 'March',
    '4': 'April',
    '5': 'May',
  };
  map['6'] = 'June';

  print(map);
  print(map.containsKey('5'));
  map.remove('6');
  print(map.containsValue('June'));
  

  var item1 = menu('Burger', 5.99);
  var item2 = menu('Pizza', 8.99);
  var pizza1 = pizza({"Cheese", "Onions", "Tomatoes"}, 'Veggie Pizza', 10);

  print(item1);
  print(item2);
  print(pizza1);
  */

  //FUTURE AND ASYNC

  //final post = await fetchPost();
  //await waits for the async function to complete and get its return value before assigning it to a variable. The await keyword can only be used after declaring the function as async.

  //print("post.title: ${post.title} , post.id: ${post.id}");

  fetchPost();
}

// org - https://jsonplaceholder.typicode.com/
//path - /posts/1

Future<Post> fetchPost() async {
  var uri = Uri.https('jsonplaceholder.typicode.com', '/posts/1');

  final response = await http.get(uri);

  print(response.body);
  /*const delay = Duration(seconds: 3);

  return Future.delayed(delay, () {
    // Future.delayed is a method that returns a future that completes after a delay. The first argument is the duration of the delay and the second argument is a callback function that is executed when it completes.
    return Post('Post-A', 01);
  });*/
}

class Post {
  String title;
  int id;

  Post(this.title, this.id);
}
