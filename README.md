# VercettiPrompt

![TeamCity CodeBetter](https://img.shields.io/teamcity/codebetter/bt428.svg)
![CocoaPods](https://img.shields.io/badge/platform-ios-lightgrey.svg)
![CocoaPods](https://img.shields.io/badge/version-1.0.1-blue.svg)
![Akashvercetti](https://img.shields.io/badge/This%20LIbary%20is-lit%20af-orange.svg)
![Akashvercetti](https://img.shields.io/badge/Will%20it%20work%3F-Maybe-yellowgreen.svg)






**A dialog alert prompt that accepts a text input from the user and handles it via a delegate, using Swift.**

## Installation via the good ol' CocoaPods
`pod 'VercettiPrompt'`


## Look at all the customizations!

| **Basic**      | **Customized** |
| ----------- | ----------- |
| ![Basic](https://i.imgur.com/rIEIjTD.gif) | ![Customized](https://i.imgur.com/aLfRM2E.gif) |
| **Custom Buttons**      | **Yummy** |
| ![Custom Buttons](https://i.imgur.com/FRZWFOz.gif) | ![Lick](https://i.imgur.com/cVjUc43.jpg) |


# Lets look at some sample code!

## The bare minimum.

**Instantiate View Controller and setup transition variables.** 

**You can copy this directly if you want(hint: yes you do).**

```
let textPromptVC = TextInputPromptViewController.instantiateFromStoryboard()
textPromptVC.modalPresentationStyle = .custom
let vercettiTransistionDelegate = VercettiTransistionDelegate()
textPromptVC.transitioningDelegate = vercettiTransistionDelegate
```

**Set the title, description if needed and present the dialog**

```
textPromptVC.titleText = "The wheels of the bus go round and round"
textPromptVC.positiveButtonText = "Confirm"
textPromptVC.descriptionText = "Round and round"
present(textPromptVC, animated: true, completion: nil)
```
 
 
 ## Some customization.
 **The property names are pretty self explanatory. Theres a table at the bottom for all the properties.**
 
```
//USE THE BARE MINIMUM CODE FROM ABOVE FIRST

textPromptVC.positiveButtonText = "Confirm"
textPromptVC.placeholderText = "All day long"
textPromptVC.isTextMandatory = true
textPromptVC.descriptionText = "Round and round"
textPromptVC.titleFont = UIFont.boldSystemFont(ofSize: 28)
textPromptVC.descriptionFont = UIFont.systemFont(ofSize: 18)
textPromptVC.titleColor = UIColor.red
textPromptVC.descriptionColor = UIColor.blue
```

 ## Button Types.
 **We got solid buttons and bordered buttons. Choose your poison.**
 
 **Here's the enum for button types.**
 
 ```
 public enum ButtonType {
    case bordered(borderColor: UIColor?, borderRadius: CGFloat?, textColor: UIColor?, borderWidth: CGFloat?)
    case solid(backgroundColor: UIColor, textColor: UIColor?)
}
 ```
 
 You can pass whatever values you feel are needed. The rest can be passed off as `nil`.
 
 ```
 textPromptVC.negativeButtonType = ButtonType.bordered(borderColor: UIColor.gray, borderRadius: 5, textColor: UIColor.red, borderWidth: 2)
 textPromptVC.positiveButtonType = ButtonType.solid(backgroundColor: UIColor.blue, textColor: UIColor.white)
 ```
 
 **Download the demo project to play around with the properties. You might wanna do the pod install thingy to get it to run.**
 
 # Customizable properties.
 
 
| **Name**      | **Description** |
| ----------- | ----------- |
| positiveButtonText | Text for the positiive action button |
| negativeButtonText | Text for the negative action button |
| placeholderText | Placeholder for the input text field |
| characterLimit | Max allowed character length for the text field |
| captitalizationType | Type of capitalization for the text field |
| inputText | Pre-filled text for the text field |
| descriptionText | Text for the Subtitle |
| hideNegativeButton | Bool to hide the negative action button |
| isTextMandatory | Bool to allow skipping input |
| titleFont | Title Font |
| descriptionFont | Subtitle Font |
| positiveButtonFont | Font for the positive action button |
| negativeButtonFont | Font for the negative action button |
| textFieldBorderStyle | Border style for the text field |
| titleColor | Title Color |
| descriptionColor | Subtitle Color |
| disabledPositiveButtonColor | Button Color for when the text is mandatory and the input is empty |
