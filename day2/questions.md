 #<a id="questions"> 🙋 Questions </a>

**1.Who controls the ledger canister?**

A: NNS

**2.What is the subnet of the canister with the id:mwrha-maaaa-aaaab-qabqq-cai? How many nodes are running on this subnet?**

A: The subnetID: "pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe"  with 16 nodes.

**3.I have a neutron with 10 ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?**

A: 16.875 (calculation with the linear scale of 4 years dissolve and 2 years locked)

**4.What is the issue with the following code sample?** 

A:  Need to add “import Nat “mo:base/Nat” “in the beginning.
```
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}
```
**5.What is the issue with the following code sample?** 

A: need to replace “var Text” with “Text”
```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}
```
**6.What is wrong with the following code?**

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

**1.Write a function average_array that takes an array of integers and returns the average value of the elements in the array.**
```
average_array(array : [Int]) -> async Int. 
```
```
import Array "mo:base/Array";
import Int "mo:base/Int";
actor {
  public query func average_array(array: [Int]) : async Int {
    var cumulative: Int = 0;
    for (k in array.vals()) {
      cumulative += k;
    };
    cumulative / array.size();
 }
}
```
**2.Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.**
```
count_character(t : Text, c : Char) -> async Nat
```

```
import Nat "mo:base/Nat";
import Char "mo:base/Char";
import Text "mo:base/Text";
actor {
public query func count_character(t: Text, c: Char) : async Nat {
    var number: Nat = 0;
    for (k in t.chars()) {
      if (k == c) {
        number += 1;
      };
    };
    number;
  }
 }
``` 
**3.Write a function factorial that takes a natural number n and returns the factorial of n.**
```
factorial(n : Nat) ->  async Nat
```
```
import Nat "mo:base/Nat";
import Iter "mo:base/Iter";
actor {
public query func factorial(n: Nat) : async Nat {
    var calculation: Nat = 1;
    for (k in Iter.range(1, n)) {
      calculation *= k;
    };
    calculation;
  }
 }
``` 
**4.Write a function number_of_words that takes a sentence and returns the number of words in the sentence.**
```
number_of_words(t : Text) -> async Nat 
```
```
import Nat "mo:base/Nat";
import Text "mo:base/Text";
actor {
public query func number_of_words(t: Text) : async Nat {
    var number: Nat = 0;
    var space : Text = " ";
    let wrd = Text.split(t, #char ' ');
    Iter.iterate<Text>(wrd, func(x, _index) {
      number += 1;
    });
    number;
  }
 }
``` 
**5. Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.**
```
find_duplicates(a : [Nat]) -> async [Nat]
```
```
import Nat "mo:base/Nat";
import Array "mo:base/Array";
import Buffer "mo:base/Buffer";
actor {
public query func find_duplicates(a: [Nat]) : async [Nat] {
    var n : Nat = 0;
    let bb = Buffer.Buffer<Nat>(1);
    let cbb = Buffer.Buffer<Nat>(1);
    for (k in a.vals()) {
      if(Buffer.contains<Nat>(cbb, k, Nat.equal) == false){
        cbb.add(k);
      }
    };
    for (k in cbb.vals()) {
      n := 0;
      for(kk in a.vals()){
        if(k == kk){
          n += 1;
        };
      };
    
      if(n > 1){
        bb.add(k);
      }   
    };
      Buffer.toArray(bb);
  }
 }

``` 
**6.Write a function convert_to_binary that takes a natural number n and returns a string representing the binary representation of n.**
```
convert_to_binary(n : Nat) -> async Text
```
```
import List "mo:base/List";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
actor {
public func convert_to_binary(n : Nat) : async Text {
   var ct : Text = "";
   var lc = List.nil<Nat>();
   var div : Nat = n;
   while (div > 0) {
      var z : Nat = div % 2;
      div := div / 2;
      lc := List.push(z, lc);
     };
     var rep : [Nat] = List.toArray(lc);
     for (value in rep.vals()){
      ct := ct 
    };
    return ct;
  };
  
}

``` 
