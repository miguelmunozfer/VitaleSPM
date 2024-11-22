
# VitaleSDK React Native Plugin Documentation

This documentation is intended to guide React Native developers through the process of integrating and utilizing the VitaleSDK in their projects.

## Importing VitaleSDK with Swift Package Manager (SPM)

To integrate the VitaleSDK in your React Native project using Swift Package Manager, follow these steps:

1. **Open your project in Xcode**: First, ensure your React Native project is open in Xcode.

2. **Adding Swift Package**:
   - Go to `File` -> `Swift Packages` -> `Add Package Dependency`.
   - Enter the URL for the VitaleSDK: `https://github.com/miguelmunozfer/VitaleSPM`
   - Follow the prompts to choose the version and options for integrating the package into your project.

3. **Verifying Integration**:
   - Once added, ensure that the VitaleSDK package appears in the Swift Package Dependencies section of your project.
   - You can now use the SDK as per the documentation provided.

This process will integrate the VitaleSDK into your React Native project, allowing you to utilize its functionalities through Swift and bridging to React Native.

## Installation

Before starting, ensure that your React Native project is set up and ready to integrate native modules.

### Add Swift Files to Your Project:
- Place the `VitaleSDKBridge.swift` and `VitaleSDKBridge.m` along with any other required Swift files in your project's directory.

### Configure Objective-C Bridging Header:
- If you haven't already, create a bridging header to use Swift with Objective-C in your project. This is usually done automatically by Xcode when you add a new Swift file to an Objective-C project.
- Add `#import "React/RCTBridgeModule.h"` to the bridging header.

## Usage

After successfully integrating the SDK, you can use the provided methods in your React Native JavaScript code. Here’s a brief overview of the available methods:

### `startSDK(appID, password, userID, url?)`
Starts the VitaleSDK session with the given user credentials.

#### Parameters:
- `appID`: String - The application ID.
- `password`: String - The password.
- `userID`: String - The user identifier.
- `url`: String (optional) - The optional URL for configuration.

#### Example:
```javascript
import { startSDK } from 'vitale-sdk-react-native';

startSDK('appID', 'password', 'userID');
```

### `setMainColor(color)`
Sets the main color for the SDK's UI elements.

#### Parameters:
- `color`: String - The color in a string format (e.g., hex code).

#### Example:
```javascript
setMainColor('#FF5733');
```

### `setPrimaryButtonColor(color)`
Sets the color of the primary button.

#### Parameters:
- `color`: String - The color in a string format.

#### Example:
```javascript
setPrimaryButtonColor('#00FF00');
```

### `setNavigationBarColor(color)`
Sets the color of the navigation bar.

#### Parameters:
- `color`: String - The color in a string format.

#### Example:
```javascript
setNavigationBarColor('#0000FF');
```

### `setNavigationTintColor(color)`
Sets the tint color of the navigation elements.

#### Parameters:
- `color`: String - The color in a string format.

#### Example:
```javascript
setNavigationTintColor('#FFFFFF');
```

### `showVitale()`
Displays the Vitale screen.

#### Example:
```javascript
showVitale();
```

### `showNutrition()`
Displays the Nutrition screen.

#### Example:
```javascript
showNutrition();
```

### `showTraining()`
Displays the Training screen.

#### Example:
```javascript
showTraining();
```

### `showTodaytraining()`
Displays today's training.

#### Example:
```javascript
showTodaytraining();
```

### `showLibrary()`
Displays the training library.

#### Example:
```javascript
showLibrary();
```

### `showCustomWorkouts()`
Displays custom workouts.

#### Example:
```javascript
showCustomWorkouts();
```

### `showTimeBasedWorkouts()`
Displays time-based workouts.

#### Example:
```javascript
showTimeBasedWorkouts();
```

### `showProfile()`
Displays the user profile screen.

#### Example:
```javascript
showProfile();
```

### `updatePersonalProfile(profile)`
Updates the personal profile with the provided details. The `profile` object can contain the following fields:

- `firstName` (String)
- `lastName` (String)
- `gender` (String)
- `height` (Number)
- `weight` (Number)
- `birthDate` (Date)

#### Example:
```javascript
updatePersonalProfile({
  firstName: 'John',
  lastName: 'Doe',
  gender: 'Male',
  height: 180,
  weight: 75,
  birthDate: new Date('1990-01-01')
});
```

### `setPathologies(pathologies)`
Sets the pathologies for the user. `pathologies` is an array of strings representing different conditions.

#### Parameters:
- `pathologies`: Array of Strings - The user's pathologies.

#### Example:
```javascript
setPathologies(['Diabetes', 'Hypertension']);
```

### `getProfile()`
Retrieves the user profile, returning an object containing the user details.

#### Example:
```javascript
getProfile().then(profile => {
  console.log('User Profile:', profile);
}).catch(error => {
  console.error(error);
});
```
