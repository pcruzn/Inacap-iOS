class Client {
    var name: String
    
    init (name: String) {
        self.name = name
    }
    
    func getName()-> String {
        return name
    }
}

class Seller {
    var name: String
    var clients = [Client(name: "Cliente1"), Client(name: "Cliente2"), Client(name: "Cliente3")]
    
    init (name: String) {
        self.name = name
    }
    
    func getName()-> String {
        return name
    }
}

var sellers = [Seller]()

sellers += [Seller(name: "Vendedor1"), Seller(name: "Vendedor2")]

for seller in sellers {
    
    println (seller.getName())
    
    for var i = 0; i < seller.clients.count ; i++ {
        println (seller.clients[i].name)  
    }
}

/*
Should print...
---------------
Vendedor1
Cliente1
Cliente2
Cliente3
Vendedor2
Cliente1
Cliente2
Cliente3
*/
