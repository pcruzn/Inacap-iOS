// Author: Pablo Cruz Navea
// Person is the top in this inheritance hierarchy example
// both, Students and Teachers are specializations of the generalization Person
// note how Person has getName and getAddres methods only (generalization)
// Student and Teacher implement the specific getIds methods (specialization)
class Person {
    private var name: String
    private var address: String
    
    init (name: String, address: String) {
        self.name = name
        self.address = address
    }
    
    func getName()-> String {
        return name
    }
    
    func getAddress()-> String {
        return address
    }
}

class Student:Person {
    private var studentId: Int
    
    init (name: String, address: String, studentId: Int) {
        // first we need to set the "self" attribute, then call the super
        // constructor
        self.studentId = studentId
        super.init(name: name, address: address)
    }
    
    func getStudentId()-> Int {
        return studentId
    }
}

class Teacher:Person {
    private var teacherId: Int
    
    init (name: String, address: String, teacherId: Int) {
        // first we need to set the "self" attribute, then call the super
        // constructor
        self.teacherId = teacherId
        super.init(name: name, address: address)
        
    }
    
    func getTeacherId()-> Int {
        return teacherId
    }
}

// let's try creating a student object...
var student1 = Student(name: "First Student", 
                       address: "Student's Address", 
                       studentId: 1490)

// ... and use the getter methods
print ("Name: \(student1.getName())")
print ("Lives in: \(student1.getAddress())")
print ("His/her ID is: \(student1.getStudentId())")

// and what about teachers? try it!
