 #<a id="questions"> 🙋 Questions </a>

1.Who controls the ledger canister?

A: Account owner

2.What is the subnet of the canister with the id:…? How many nodes are running on this subnet?

A:

3.I have a neutron with 10 ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?

A: 

4.What is the issue with the following code sample? 

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
5.What is the issue with the following code sample? 

A: replace “var Text” with “Text”
```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}
```
6.What is wrong with the following code?

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

# <a id="coding-challenges"> Coding challenges </a>

1.Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
```

```
2.Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
```

``` 
