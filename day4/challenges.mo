import List "mo:base/List";
import Debug "mo:base/Debug";
import Bool "mo:base/Bool";
import Text "mo:base/Text";
import Support "support";
import Book "book";

actor  {
      type List<T> = List.List<T>;
      func unique<T>(l : List<T>, compare : (T, T) -> Order.Order) : List<T> {
        let iter = List.toIter(l);
        let sortediter = Iter.sort<T>(iter, func(x : T, k : T) = compare(x, k));
        switch (sortediter.next()) {
            case (null) { return List.nil() };
            case (?first) {
                var xp = first;
                let fx = Iter.filter<T>(sortediter, func(x : T) = (Order.isEqual(compare(x, xp)));
                return Iter.toList(sorted);
            };
        };

    public query func unique_test(l : List<Nat>) : async List<Nat> {
        return unique<Nat>(l, Nat.compare);
    };
func reverse<T>(l : List<T>) : List<T> {
        return List.reverse(l);
    };
    public func reverse_test(l : List<Nat>) : async List<Nat> {
        return reverse(l);
    };
