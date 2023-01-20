import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Array "mo:base/Array";
import Buffer "mo:base/Buffer";

actor {
   public func second_maximum(array : [Int]): Int {
    var fx : Int = 0;
    var sx : Int = 0;
    let arrayD : [Int] = Array.sort(array, Int.compare);
    for (val in arrayD.vals()) {
      if (val > fx) {
         sx := fx;
         fx := val;
        };
       };
       return sx;
     };
   public func remove_even(array: [Nat]) : async [Nat] {
        let buffer = Buffer.Buffer<Nat>(array.size());
        for (val in array.vals()) {
            if(val%2==1) {
                buffer.add(val);
            };
        };
        return Buffer.toArray(buffer);
    };
