//.........................................................................................................
//
//  Problem:    Need for different behavior on multiple targets of your app.
//
//  Solution:   Add target flags and use # conditioning in code to separate cases.
//
// .........................................................................................................

//  Click on your project in the Project navigator, and then on your desired target in the target list

//  Go to:  Build Settings -> Swift Compiler - Custom flags -> Other Swift flags

//  Double click on the value field, and add new one with this structure:

// -D YOURFLAG1

// where "YOURFLAG1" is the flag you will be using later to reference this target among others.

// Do this for every target.

// .........................................................................................................

// Now in the code when you want different behavior for different targets use #if, #elseif, #else, #endif to 
// branch out your target code.

#if MYTARGET1
let URL_LOGIN = URL(string: "https://site.com/login1.php")
#elseif MYTARGET2
let URL_LOGIN = URL(string: "https://site.com/login2.php")
#else
let URL_LOGIN = URL(string: "https://site.com/logindef.php")
#endif
