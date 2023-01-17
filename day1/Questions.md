

How much is the current memory capacity of a canister? Answer : 48 GB (December 2022 update)

What is the issue with the following code sample? "let" introduces an immutable declaration, need to use "var" instead of "let" 
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}

What is the issue with the following code sample? The return value of async () is not defined.
actor {
  var message : Text = 0;
  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}

False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer. FALSE
# Coding challenges

Write a function multiply that takes two natural numbers and returns the product.
actor {
var n : Nat = 0;
  var m : Nat = 0;
  var result : Nat = 0;

   public query func multiply(n : Nat, m : Nat) : async Nat {
    result := n*m;
    return result;
  };
}

Write a function volume that takes a natural number n and returns the volumte of a cube with side length n
actor {
  public query func volume(n : Nat) : async Nat {
    var result : Nat = n*n*n;
    result;
  };

  // public query func greet(name : Text) : async Text {
  //   return "Hello, " # name # "!";
  // };
 }
 
 Write a function hours_to_minutes that takes a number of hours n and returns the number of minutes
 actor {
  public query func hours_to_minutes(n : Nat) : async Nat {
    var result : Nat = n*60;
    result;
  } 
}}

Write two functions set_counter & get_counter
actor {
  var counter : Nat = 0;
  public func set_counter(n : Nat) : async () {
    counter := n;
   };
  public query func get_counter() : async Nat {
    counter;
  };
}

Write a function test_divide that takes two natural numbers n and m and returns a boolean indicating if n divides m
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

Write a function is_even that takes a natural number n and returns a boolean indicating if n is even
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
