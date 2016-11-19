# How to use Xploit's Flash AS2 Loader
My Loader is Really Easy to Use. Below you will find how to make a toggle and how to make a simple Keyhack that just occurs once.

# Making a Toggle
Making a toggle is no more than having some booleans and a timer with a function to run.

if(_root.toggle1On != true) {                  # This is Checking if our Toggle is on or not..
   _root.toggle1On = true;                     # If our toggle is not on when our key is pressed Turn it on !
 _root.toggle1 = function() {                  # Create a Function to Run our Hacks in.
   _root.hp.hp = 100;                          # This is a sample code from a game. It Sets our Health to 100.
   trace("Toggle-One Code Here");              # Just a Simple Trace i keep it in my projects so its a bit organized.
};
_root.timer1 = setInterval(_root.toggle1,100); # We Are Still in our "Turn Toggle On" Structure so this enables a timer.. Which runs our function !
} else {                                       # If Our Toggle was on , Up there where we checked if it was off.. We Run this code !
     _root.toggle1On = false;                  # Turn our Toggle Off
     clearInterval(_root.timer1);              # And Clear the timers interval so it does not run our function anymore..
}


# A Simple Keyhack
Our Toggle Above is great for Health hacks and such as it will keep running our code over and over again.
But these simple Keyhacks are great for simple currency hacks or just something you want to add onto instead of having a timer do it for you.
So in the code above i didnt add the code for when a key is pressed.. Its in the loader.. But if you check it uses a case that checks an array.
I'm going to just make a sample code really quick for this..

if(Key.getCode() == 49)                        # If Key [1] is pressed
   {
      _root.cash = _root.cash + 100;           # Add 100 Cash to our in game currency !
   }
   
   
# As You can see its alot easier to make a simple keyhack, Just remove the booleans and timers , Simple as If this key is pressed run this code. Thats it !
