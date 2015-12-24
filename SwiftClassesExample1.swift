// This small program shows classes in Swift and how to work with them. No inheritance here.
// Author: Pablo Cruz Navea

class Client {
    // prefer private attributes; access them by using methods
    // NOTE that by default this class is declared as internal, thus we
    // would get a WARNING if we try to declare the getName method as
    // public because it has no sense to "publish" publicly a method that resides
    // in a class that has "file-scope" only
    private var name: String
    
    init (name: String) {
        self.name = name
    }
    
    func getName()-> String {
        return name
    }
}

class Seller {
    private var name: String
    private var clients = 
    [
        Client(name: "Client 1"), 
        Client(name: "Client 2"), 
        Client(name: "Client 3")
    ]
    
    init (name: String) {
        self.name = name
    }
    
    func getName()-> String {
        return name
    }
}

// create and add sellers objects; note that for simplicity we have only one attribute
var sellers = [Seller]()
sellers += [Seller(name: "Seller 1"), Seller(name: "Seller 2")]

for seller in sellers {
    // prefer getName() method
    // but please NOTE that in Swift when you declare several classes in one
    // file, all private properties (attributes) can be accesed directly.
    // this is a bit different compared to other languages
    // (remember that you should actually be creating one class per file)
    print (seller.getName())
    
    for var i = 0; i < seller.clients.count ; i++ {
        print (seller.clients[i].getName())  
    }
}

/*
Should print...
---------------
Seller 1
Client 1
Client 2
Client 3
Seller 2
Client 1
Client 2
Client 3
*/
