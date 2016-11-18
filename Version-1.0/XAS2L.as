function load(gameURL) // Function for Loading Games. Nothing special just makes it less typing when loading a file.
{
   loadMovieNum(gameURL,0,"GET"); // Takes in our gameURL Parameter.
}
load("game.swf"); // Your Game File Name Which will be loaded.
var LoaderInfo = ["Created by : Xploit","Version : 1.0"]; // Loader Information , Please do not remove.
_global.Keyz = [48,49,50,51,52,53,54,55,56,57]; // Keycodes ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9).
Stage.align = "TL"; // Align our Stage to the Top Left.
Stage.scaleMode = "noScale"; // Disable Scaling of the Stage. In Other Words dont let the game stretch when resized.
ListenToMyKeys = new Object(); // Create a new Object for our Keyhacks.
ListenToMyKeys.onKeyDown = function() // Give our Object a Keydown Listener
{
   switch(Key.getCode()) // Start our Switch Condition checking which keys are pressed.
   {
      case _global.Keyz[1]: // Check if Key [1] was Pressed. using our Array of Keycodes.
         if(_root.toggle1On != true) // If this Toggle was off Set it to True and Create a function for our Hacks.
         {
            _root.toggle1On = true;
            _root.toggle1 = function()
            {
               trace("Toggle-One Code Here"); // Set your Variables Here.
            };
            _root.timer1 = setInterval(_root.toggle1,100); // Timer that runs our function every 100 Milliseconds.
         }
         else // Else if our Toggle was set to true when Key [1] Was Pressed , Set our toggle to false and clear the timer.
         {
            _root.toggle1On = false;
            clearInterval(_root.timer1);
         }
         break;
      case _global.Keyz[2]: // Same thing happening in Toggle 1, but for Key [2].
         if(_root.toggle2On != true)
         {
            _root.toggle2On = true;
            _root.toggle2 = function()
            {
               trace("Toggle-Two Code Here");
            };
            _root.timer2 = setInterval(_root.toggle2,100);
         }
         else
         {
            _root.toggle2On = false;
            clearInterval(_root.timer2);
         }
         break;
      case _global.Keyz[3]: // Same thing happening in Toggle 1 and 2, But for Key [3].
         if(_root.toggle3On != true)
         {
            _root.toggle3On = true;
            _root.toggle3 = function()
            {
               trace("Toggle-Three Code Here");
            };
            _root.timer3 = setInterval(_root.toggle3,100);
         }
         else
         {
            _root.toggle3On = false;
            clearInterval(_root.timer3);
         }
         break;
      case _global.Keyz[4]: // Key [4] is not a Toggle but can be modified into one like the ones above.
               trace("Keyhack-Four Code Here"); // Setting your variables here will only change them once everytime the key is pressed.
         break;
      default:
         return undefined;
   }
};
Key.addListener(ListenToMyKeys); // Add the listener to our Object.
