# BrandButton

A custom brand button in an iOS app using Swift. The button has a distinctive visual style representing the brand, referring to the desired Figma design.

## Documentation

### Colour choices:
First, colour sets were added to the "Assets" of the project.

The intention was to be able to customise the colour of the button during the instantiation. By doing so, the user could choose between different spectrums of the Brand's colours of "Green", "Blue", "Gray" and "Black" depending on their choice of "Variants" (Primary / Secondary).
The colours were also separated into two main branches "Background" and "Foreground" colours.

### Extensions:
- Corresponding to the colour sets in the Assets, an extension called "Color" was introduced on "SwiftUI Color".
- A custom modifier called "withPressableStyle", was introduced to scale down/up the button when it is pressed.

### BrandButtonView:
This view was created at first with these properties: "label", "leadingIcon", "trailingIcon", "fullWidth", "isEnabled". According to the task's instruction, some of them were optional while some others had default values.
Then, a @State property called "isPressed" was also added, to track the action of the BrandButton.

Another set of properties were: "variant" and "size", which were initialised in a separate struct called "BaseButtonStyle". These two properties respectively contained different cases of button’s colour such as: "primaryGreen", "primaryBlue", "primaryDisabled", "secondaryGreen", "secondaryBlue", "secondaryDisabled", "baseButton" and the different sizes of the button: "regular" and "medium".

Now, by having the "isPressed" and "variant" properties, it was possible to have two computed properties of backgroundColor and foregroundColor which could determine all different colours in the app according to the user’s choice at the time of creating the BrandButton.

P.S: This view in its preview will show a single button called “Base button” as was shown in the Figma design.

### Instantiation:
A BrandButton can simply be created in "ContentView" by calling the BrandButton view. For this initializer, two arguments of label and variant are required as requested in the task instruction. These two arguments will determine the text of the BrandButton and its colour. All other properties are optional.

### Features:
The BrandButton can handle these situations:

The button is pressed: 
- the label will toggle between “Pressed” and “Default”.
- the background colour will change.
- the foreground colour will change (only in "Secondary" modes).
- the button will be scaled down to 0.9 of the original button.
- an "easeInOut" animation will be shown for 2.0 sec created in a separate struct of "BrandButtonAnimationView".

Button’s label:
By having longer text, the font size will be reduced to keep the text in one line.

Button’s size:
Can be customised at the time of instantiation, from the default regular to the smaller size of medium.

Button’s icons:
"Leading" and "trailing" icons can be added during the creation of the button.

Button’s margins:
Only secondary buttons will get "RoundedRectangle" around themselves as shown in the Figma.

Disabled Button:
At the time of instantiation, the "isEnabled" property can be set to false which means the button is not pressable anymore.

### Testing:
For testing purposes, three sets of "BrandButtons" have already been created in the ContentView which can be seen in the below Demo section. As the intention was to show all the possibilities in horizontal order, the best experience will be to orient your device or simulator to landscape mode.

## Demo

https://github.com/maz-kar/BrandButton/assets/76482033/44fcda46-1269-4897-a9c3-d50e714170cc

https://github.com/maz-kar/BrandButton/assets/76482033/c2199727-e568-482d-9198-e15c5b1b61ca

https://github.com/maz-kar/BrandButton/assets/76482033/04be367b-c897-49e3-8ac9-d3bc8a3fcfc2


