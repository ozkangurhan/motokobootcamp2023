import List "mo:base/List";
import Utils "utils";
import Book "book";
import Debug "mo:base/Debug";

actor {
    type Book = Book.Book;
    var list = List.nil<Book>();
    public func add_book(book : Book) : async () {
        list := List.append(list, List.make<Book>(book));
    };
    
    public func get_books() : async [Book] {
        return List.toArray(list);
    };
};
