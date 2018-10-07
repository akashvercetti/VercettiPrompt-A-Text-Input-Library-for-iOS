# VercettiPrompt


**A dialog alert prompt that accepts a text input from the user and handles it via a delegate, using Swift.**

# Installation via the good ol' CocoaPods
`pod 'VercettiPrompt'`


# Look at all the customizations!

| **Basic**      | **Customized** |
| ----------- | ----------- |
| ![Basic](https://i.imgur.com/rIEIjTD.gif) | ![Customized](https://i.imgur.com/aLfRM2E.gif) |
| **Custom Buttons**      | **Yum** |
| ![Custom Buttons](https://i.imgur.com/FRZWFOz.gif) | ![Lick](https://i.imgur.com/ryv5qg7.jpg) |


# Lets look at some sample code!

# The essentials.

**Instantiate View Controller and setup transition variables**

```let textPromptVC = TextInputPromptViewController.instantiateFromStoryboard()
textPromptVC.modalPresentationStyle = .custom
let vercettiTransistionDelegate = VercettiTransistionDelegate()
textPromptVC.transitioningDelegate = vercettiTransistionDelegate```

**Set the title text, description if needed and present the dialog**

```textPromptVC.titleText = "The wheels of the bus go round and round"
textPromptVC.positiveButtonText = "Confirm"
textPromptVC.descriptionText = "Round and round"
present(textPromptVC, animated: true, completion: nil)```

        
