module  { 

    public type Book = {
        title : Text;
        pages : Nat;
    };
   
    public func create_book(title : Text, pages : Nat) : Book {
        let book = { title; 
	  pages };
        read(book);
        return book;
    };
    book
};

