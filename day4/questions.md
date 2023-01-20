 #<a id="questions"> 🙋 Questions </a>

**1.Is the heap memory saved when upgrading a canister? How much heap memory does a canister has?**

A: No. 4 GB

**2.How much accounts can a unique Principal own?**

A: As much as the 32-bit integer value; aprox.4.294 M

**3.Can we safely upgrade a canister from interface A to interface B?**

A: Yes
```
actor {
  public func greet(surname : Text, firstname : Text) : async Text {
    return "Hello" # firstname # surname # " !";
  };
}

Interface B
```motoko
actor {
  public func greet(firstname : Text) : async Text {
    return "Hello" # firstname # " !";
  };
}
```
