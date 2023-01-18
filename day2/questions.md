 #<a id="questions"> 🙋 Questions </a>

1. Who controls the ledger canister?
A: Account owner

What is the subnet of the canister with the id:…? How many nodes are running on this subnet?
A:

I have a neutron with 10 ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?
A: 

What is the issue with the following code sample? 
A:  works when added “import Nat “mo:base/Nat” “in the beginning
```
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}
```
What is the issue with the following code sample? 
A: replace “var Text” with “Text”
```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}
```
What is wrong with the following code?
A: Add “import Array “mo:base/Array” “ in the beginning.
```
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}
```

# <a id="coding-challenges"> 🥊 Coding challenges </a>

Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
```

```
Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
```

``` 
 Write a function hours_to_minutes that takes a number of hours n and returns the number of minutes
 ```
 actor {
  public query func hours_to_minutes(n : Nat) : async Nat {
    var result : Nat = n*60;
    result;
  } 
}}
```
Write two functions set_counter & get_counter
```
actor {
  var counter : Nat = 0;
  public func set_counter(n : Nat) : async () {
    counter := n;
   };
  public query func get_counter() : async Nat {
    counter;
  };
}
```
Write a function test_divide that takes two natural numbers n and m and returns a boolean indicating if n divides m
```
actor {
 public query func test_divide(n: Nat, m : Nat) : async Bool {
    if(m/n > 0)
    (
      return true
    )
    else
      false;
  };
};
```
Write a function is_even that takes a natural number n and returns a boolean indicating if n is even
```
actor {
 public query func test_divide(n: Nat) : async Bool {
    if(n/2 > 0)
    (
      return true
    )
    else
      false;
  };
};
```
