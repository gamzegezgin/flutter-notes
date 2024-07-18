
Lesson 24- POSITION & NAMED ARGUMENTS

Positional: The position of an argument determines which paramater recevies the value.

void add(a, b) { // a & b are positional parameters
  print(a + b); // print() is a built-in function that will be explained later
}
 
add(5, 10); // 5 is used as a value for a, because it's the first argument; 10 is used as a value for b

*positional parameters are required and must not be omitted 
*calling add() like this would be invalid and hence cause an error!
void add(a, [b]) { // b is optional
void add(a, [b = 5]) // b is optional, 5 will be used as a default value  
void add({a, b = 5}) // b has a default value of 5
void add({required a, required b}) // a & b are no longer optional 
  print(a + b);
}

Named: The name of an argument determines which parameter receives the value

void add({a, b}) { // a & b are named parameters (because of the curly braces)
  print(a + b); 
}  
 
add(b: 5, a: 10); // 5 is used as a value for b, because it's assigned to that name; 10 is used as a value for a

*named arguments are optional and can be omitted
*we could call add() or add(b: 5);
