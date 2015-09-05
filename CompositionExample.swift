// Composition example: an Engine has been modeled. 
// Thus, it is important to highlight the has-a
// relationship (Engine has a SparkPlug), but also
// to specify owenership (the Engine "creates" the SparkPlug).
// In other words: no Engine, no SparkPlug.
// 
// Pablo Cruz Navea

class SparkPlug {
    private var brand: String
    // some other variables here
    
    init (brand: String) {
        self.brand = brand
    }
    
    // some other methods here
}

class Engine {
    private var displacement: Int
    private var model: String
    // Composition: not only a simple has-a relationship, but also
    // Engine being the 'owner' of a set of sparkplugs
    private var sparkPlug: [SparkPlug] = 
    [
        SparkPlug(brand: "Denso"), SparkPlug(brand: "Denso"),
        SparkPlug(brand: "Denso"), SparkPlug(brand: "Denso")
    ]
    
    init (displacement: Int, model: String) {
        self.displacement = displacement
        self.model = model
    }
    
    func getDisplacement()->Int {
        return displacement
    }
    
    func getModel()->String {
        return model;
    }
}
