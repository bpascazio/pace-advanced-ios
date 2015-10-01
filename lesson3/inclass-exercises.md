# Adding Navigation Controller to a Scene

1. Create a single view application (single scene).
2. Select the scene and add a navigation controller with Embed In -> Navigation Controller
3. Add a button to the scene.
4. Add a new view controller.
5. Right click on the button and add a Push action to the new view controller.

Test!

# Performing Segue from an IBAction

1. Create an additional button on your view controller with the relationship to the navigation controller.
2. Create an IBAction by dragging and dropping onto your Swift View Controller code.
3. Create a new additional view controller.
4. Right click on the initial view controller (now with two buttons) and select manual -> push to the new additional view controller.
5. Touch the segue mid point to confirm the original view controller is hi-lighting.
6. Add a name to the segue by selecting and adding in inspector.
7. Add the following code inside the action to perform the segue.
performSegueWithIdentifier("BobSegue", sender: nil)

Test!

# Change Initial View Controller

1. Create a new view controller scene in the same application
2. Select the new scene.
3. In Inspector check (is Initial View Controller).
4. Confirm start arrow is now on your new view controller / scene.

Test! also revert to the original VC sequence and Test Again!