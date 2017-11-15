# Swift4CookBook

## 1. Optionals, unwrap, and force unwrap

- In the real world, we don't always know the answer to a problem, and problems can occur if we blindly assume that someone  does. The same is true in programming languages, especially when dealing with external systems that we may not control. In many language including Objective C, there are no way to indicate that something being declared may not exits at the time you attempt to access it. This would lead to either fragile code that could have broken if a nil unexpectedly found its way in or tests being run all over the code to ensure that a value did exist where it was needed, which added complexity and increased the boilerplate code that had to be written.

* The nil or null term is used in programming language to denote the absendce of a value, not to be confused with the number 0 as the value or the empty string "", they would be something or nothing, Swift uses nil, and this can be assigned to a variable to remove any value currently assigned, replacing it with nil or nothing.

* var dayOfWeek: String = "Monday"
  dayOfWeek = nil
  
  ==> As we declared the type to be String, that is what the compiler expects, and nil is not a String, so it can't be assigned to this variable.
  
 - Implicitly unwrapped optional (IUO)
 
