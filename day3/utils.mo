import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Array "mo:base/Array";
import Buffer "mo:base/Buffer";

module {
   public func second_maximum(array : [Int]): Int {
    var fx : Int = 0;
    var sx : Int = 0;
    let arrayD : [Int] = Array.sort(array, Int.compare);
    for (val in arrayD.vals()) {
      if (val > fx) {
         sx := first;
