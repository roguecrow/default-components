# MyApp

MyApp is a Flutter app that demonstrates how to create a navigation drawer with an app bar, and implement basic navigation between different screens of the app. 

## Getting Started

To run the app, clone the repository and open it in your preferred Flutter development environment. Then, run the app using your emulator or physical device. 

```bash
git clone https://github.com/your-username/myapp.git
cd myapp
flutter run
```

## Features

- Navigation drawer with custom icons and titles
- App bar with search icon, popup menu, and notification badge
- Increment notification count with floating action button
- Navigation between five different screens of the app

## Contributing

If you find any bugs or have suggestions for improvement, please submit an issue or pull request. 

## License

MyApp is released under the [MIT License](https://opensource.org/licenses/MIT).

# Documentation for HomeDrawer Widget

The `HomeDrawer` widget is a custom widget that creates a navigation drawer and an app bar for an app. It provides a customizable and reusable way to implement a common UI pattern in Flutter apps.

## Import Statements
The following packages are imported:
1. `package:flutter/material.dart` - provides the core Flutter framework.

## Variables
- `_notificationCount` - an integer to keep track of the number of notifications.

## Methods
- `_incrementNotificationCount()` - a method that increments the `_notificationCount` variable by 1.
- `_resetNotificationCount()` - a method that sets the `_notificationCount` variable back to 0.
- `_buildDrawerListTile` - a method that creates a `ListTile` with the given parameters, including an icon, title, and destination page. It also sets up the `Navigator` component to push the destination page onto the screen when the `ListTile` is tapped.
- `HomeDrawer.build()` - the method that builds the widget tree for the `HomeDrawer`. It creates a `Scaffold` widget that contains an `AppBar`, a `Drawer`, and a `FloatingActionButton`.

## Widget tree
- `Scaffold` - the outermost widget that creates the app's scaffold, which provides a basic visual structure of the application.
  - `AppBar` - a widget that displays the app's title in the app bar along with a search icon, a popup menu, and a notification badge. The notification badge shows the number of notifications, which is incremented when the floating action button is pressed.
    - `IconButton` - a widget that creates the search icon button in the app bar.
    - `PopupMenuButton` - a widget that creates the popup menu button in the app bar. It uses the `MenuItem` widget to create a list of options to choose from.
    - `Stack` - a widget that creates a stack of widgets. It uses the `PositionedTransition`, `FadeTransition`, and `RotationTransition` widgets to animate the notification badge.
      - `Icon` - a widget that displays the notification icon in the app bar.
      - `Text` - a widget that displays the `_notificationCount` variable as the notification badge in the app bar.
  - `Drawer` - a widget that creates a navigation drawer for the app. It uses the `_buildDrawerListTile` method to create a list of `ListTile` widgets that are used for navigation to different pages in the app.
  - `FloatingActionButton` - a widget that creates a circular button used to increment the notification count. When pressed, it calls the `_incrementNotificationCount()` method to increment the notification count and trigger the animation of the notification badge.
  
  # FirstPage Widget

The `FirstPage` widget is a stateless widget in a Flutter app that creates a page with a black themed `SliverAppBar` and multiple container elements with rounded corners as part of a `CustomScrollView`.

## Widget Description

The `FirstPage` widget is a stateless widget that returns a `Scaffold` widget. The `Scaffold` widget contains a `CustomScrollView`, which includes multiple `SliverToBoxAdapter` widgets, each representing a container with rounded corners of height 400 and a `black45` color. The first `SliverAppBar` widget defines the app bar of the page, which is themed `black87` and includes an arrow back button in the leading position. `flexibleSpace` is used to apply the `black87` color to the background of the app bar. Finally, `num` property like `expandedHeight` (which expands the app bar) and boolean properties like `floating` (which allows the app bar to float above the page) and `pinned` (which pins the app bar to the top of the page when scrolled) are set on the app bar.

## Installation

This widget can be used in a Flutter project by copying the `FirstPage` class into the project's relevant file.

## Usage

To use the `FirstPage` widget in a Flutter app, simply create a new instance of the widget and include it in the app's widget tree.

```dart
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.black87,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.black87,
              ),
            ),
            expandedHeight: 200,
            floating: true,
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 400,
                color: Colors.black45,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 400,
                color: Colors.black45,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
```

## Contributing

Contributions to this widget are welcome. Please submit a pull request or open an issue if you have suggestions or improvements to make.

## License

This widget is licensed under the MIT license. See `LICENSE` for more information.


# Flutter TabBar Tutorial

This is a simple Flutter app that demonstrates how to use a `TabBar` widget to create a tab view in Flutter. 

## Prerequisites

Before you get started, you need to have Flutter installed on your machine. You can find instructions on how to install Flutter [here](https://flutter.dev/docs/get-started/install).

## Getting Started

1. Clone the repository to your local machine.
2. Open the project in your preferred IDE or text editor.
3. Run the app using `flutter run` command.

## Code Overview

1. The `import` statements at the top import necessary dependencies and other widgets that we're going to use in our code.

2. The `SecondPage` class is a `StatefulWidget` that creates the state `State<SecondPage>` for the widget.

3. The `_SecondPageState` class is the state class that builds the widget tree for the `SecondPage` widget.

4. The `build` method creates the widget hierarchy of the widget using a `Column` widget as the root widget. This ensures that the widget's children will be laid out vertically.

5. The `DefaultTabController` widget provides a simple way to create a tab view widget with a default controller. It creates a controller that manages the state of the tabs and their underlying pages.

6. The `length` property of `DefaultTabController` represents the number of tabs we want to render.

7. The `Scaffold` widget provides a simple way to create a layout structure for our app. It contains all of the widgets and elements that we're going to use in our app.

8. The `AppBar` widget displays the app bar, which is typically displayed at the top of the screen.

9. The `title` property of `AppBar` specifies the app bar's title. Here, we've used the `Text` widget for the title and provided a `Padding` widget to add some padding around the text.

10. The `backgroundColor` property determines the app bar's background color.

11. The `leading` property specifies a widget to display before the app bar's title, which is typically a back button.

12. The `IconButton` widget creates a button widget that can be touched or pressed. Here, we use it to create a back button to take us to the previous page.

13. The `TabBar` widget creates the horizontal bar that contains the tabs. We've configured it with three tabs and specified the icons that should display on each tab.

14. The `Expanded` widget expands the `TabBarView` widget to fill the remaining space of the screen.

15. The `TabBarView` widget creates the content for each tab. We've created three widgets, `FirstTab`, `SecondTab`, and `ThirdTab`, to be displayed on each tab.




# Second Page

This Flutter code defines a `SecondPage` widget which extends `StatefulWidget`. The widget contains a tab bar with three tabs and a corresponding tab bar view.

## Usage

The `SecondPage` widget is used as a screen in a Flutter app. To use this widget, simply add it to your app's navigation stack.

## Example

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondPage()),
);
```

## Tab Bar

The tab bar is created using a `TabBar` widget. It contains three tabs, each with an icon: home, settings, and person. 

## Tab Bar View

The `TabBarView` widget is used to create the content for each tab. There are three tabs: `FirstTab`, `SecondTab`, and `ThirdTab`. 

## App Bar

The app bar of the page is themed pink and includes an arrow back button in the leading position. 

## Dependencies

This code depends on the following Flutter packages:
- `flutter/material.dart`

## Requirements

This code requires Flutter 2.0 or higher.

# Flutter ThirdPage Widget

The `ThirdPage` widget is a stateful widget that displays a bottom navigation bar with multiple tabs. It allows the user to switch between different screens by tapping on the tabs.

## Usage

To use this widget, import it into your Flutter project:

```dart
import 'package:flutter/material.dart';
import 'package:my_app/third_page.dart';
```

Then, add the `ThirdPage` widget to your widget tree:

```dart
ThirdPage(),
```

## Documentation

Here's a documentation for the `ThirdPage` widget:

1. `ThirdPage` is a `StatefulWidget` that creates an instance of the state `State<ThirdPage>` which builds the widget.

2. `_ThirdPageState` class is a `State` class that contains the widget tree and creates the user interface for the `ThirdPage` widget.

3. `_selectedIndex` variable keeps track of the current selected index/tab in the `BottomNavigationBar` widget.

4. `optionStyle` is a `TextStyle` object that defines the common style for the texts that would be displayed for each tab in `_widgetOptions`.

5. `_widgetOptions` is a static list of `Text` widgets that are used to create the content displayed in the body of the screen. It contains a list of widget options indexed by their position in the list.

6. `_onItemTapped` is a method that gets called whenever a tab on the bottom navigation bar gets tapped.

7. `Scaffold` widget provides a basic structure for the app, including an app bar, body, and bottom navigation bar.

8. `AppBar` widget specifies the app bar that appears at the top of the screen, including the app bar title, background color and leading icon.

9. `IconButton` creates a button widget with an icon that is typically used for the leading icon in the app bar. Here, we've used it to create a back button that navigates to the previous page.

10. `Center` widget is used to center the content on the screen.

11. `BottomNavigationBar` widget is displayed at the bottom of the screen, and we've specified the menu items, text labels and icons for each menu item.

12. `selectedItemColor` property specifies the selected menu item icon color.

13. `onTap` method is called when a menu item is tapped, and we've implemented the logic to change the `_selectedIndex` to the index of the selected menu item.

14. The `body` property of the `Scaffold` widget is displayed in the area below the app bar and above the bottom navigation bar. We've used it to display one of the items in `_widgetOptions` based on the selected index.

## License

This widget is licensed under the [MIT License](https://github.com/my_username/my_app/blob/main/LICENSE).

# FourthPage Widget

The `FourthPage` widget is a user interface for inputting and displaying user text input within the app. It provides a text input field for users to enter text, a "POST" button to save the user input, a "Show all data" button to display all saved posts till that point, and a floating action button to show a SnackBar confirming that the data has been saved.

## Widget Description

### `FourthPage` Widget

`FourthPage` is a `StatefulWidget` that creates an instance of the state `_FourthPageState` which builds the widget.

### `_FourthPageState` Class

`_FourthPageState` class is a `State` class that contains the widget tree and creates the user interface for the `FourthPage` widget.

### `_textController` Instance

`_textController` is a `TextEditingController` instance that is being used to manage the input field where the user writes text.

### `userPost` Variable

`userPost` is a variable created to store the user input from the `TextField`.

### `allWords` List

`allWords` is a List of Strings that will store all the text posts made by the user.

### `_animationController` Instance

`_animationController` is used to animate the SnackBar when the FloatingActionButton is clicked.

### `initState()` Method

`initState()` method is being used to initialize the `_animationController`.

### `dispose()` Method

`dispose()` method is used to dispose all created animations when the widget is disposed.

### `appBar` Property

`appBar` property of the `Scaffold` widget specifies the app bar that appears at the top of the screen, including the title, background color, and leading icon.

### `body` Property

`body` property of the `Scaffold` widget specifies the body of the widget tree.

### `ListView` Widget

`ListView` widget is used to display the saved text data.

### `SizedBox` Widget

`SizedBox` widget is used to specify the size of the ListView.

### `TextField` Widget

`TextField` widget lets users enter text.

### `suffixIcon` Widget

`suffixIcon` widget is an `IconButton` that is attached to the input field to clear the user input.

### `MaterialButton` Widget

`MaterialButton` widget is used to create two buttons; POST and Show all data.

### `floatingActionButton` Property

`floatingActionButton` property of the `Scaffold` widget defines the FloatingActionButton and is used to show the SnackBar and add userPost to `allWords` when it is clicked.

### `showModalBottomSheet` Function

`showModalBottomSheet` opens a bottom sheet allowing the user to see all of the text items that have been added to `allWords`.

## Conclusion

This Flutter code provides a simple user interface for inputting and displaying user text input within the app. With the `FourthPage` widget, users can save their text input, display all saved posts, and receive a confirmation message when the data is saved.


# FifthPage Widget

The `FifthPage` widget is a simple user interface that displays a list of checkbox items, each of which can be selected/deselected by the user. It also includes an option to select/deselect all checkbox items at once.

## Classes

### `FifthPage`

`FifthPage` is a `StatefulWidget` that creates an instance of the state `_FifthPageState` which builds the widget.

### `_FifthPageState`

`_FifthPageState` is a `State` class that contains the widget tree and creates the user interface for the `FifthPage` widget.

### `checkBoxModel`

`checkBoxModel` is a class that defines the structure of the individual checkbox items. Each instance of this class has a `title` and a `value` field that represents the title text and the checked status of the corresponding checkbox item, respectively.

## Properties and Methods

### `allChecked`

An instance of the `checkBoxModel` class created to represent the option to select/deselect all checkbox items at once.

### `checkBoxList`

A list of `checkBoxModel` objects that represent the individual checkbox items in the list.

### `build()`

The `build` method returns the user-interface, which comprises of a `Scaffold` widget containing an `AppBar` widget at the top of the screen with a title, a back button, and a background color. The `body` property of the `Scaffold` widget specifies the main content of the widget, which is a `ListView` widget containing list items that represent each checkbox item.

### `onTap`

The `onTap` field of each `ListTile` widget is utilized to toggle the value of the corresponding `checkBoxModel` object between true/false values.

### `onAllClicked()`

The `onAllClicked` method utilizes the `setState()` method to update the value of each checkbox when the user selects/deselects the "select all" option.

### `onItemChecked()`

The `onItemChecked` method utilizes the `setState()` method to update the value of each individual checkbox when the user selects/deselects each item.

## Widgets

### `ListTile`

The `ListTile` widget is used to define a single checkbox item.

### `Checkbox`

A leading `Checkbox` widget is utilized to represent the checkbox.

### `Text`

The `Text` widget in each `ListTile` widget displays the title for the checkbox item.

## Overall Functionality

This code creates a simple user interface with a list of checkboxes that can be selected/deselected, including an option to select/deselect all checkbox items at once. The checkbox items are represented using a custom `checkBoxModel` class.


# SearchBar Widget

The `SearchBar` widget is a custom search delegate class that extends the `SearchDelegate` class provided by the Flutter framework. It creates a search bar that allows users to search through a list of string data and displays the search results. The search bar provides the user with suggestions as they type their query and allows them to navigate back to the previous screen.

## Usage

To use the `SearchBar` widget in your Flutter project, follow these steps:

1. Copy the `SearchBar` class code into your project.
2. Create a list of string data to search through.
3. In your widget's `build()` method, create an instance of the `SearchBar` class and pass in the list of string data as a parameter.
4. Call the `showSearch()` method and pass in the `BuildContext` and the `SearchBar` instance as parameters.

Here's an example:

```dart
import 'package:flutter/material.dart';
import 'package:your_project/search_bar.dart';

class YourWidget extends StatelessWidget {
  final List<String> data = ['Apple', 'Banana', 'Cherry', 'Durian'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your App Title'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Search'),
          onPressed: () {
            showSearch(
              context: context,
              delegate: SearchBar(data),
            );
          },
        ),
      ),
    );
  }
}
```

## Customization

You can customize the `SearchBar` widget by modifying the code. For example, you can change the color scheme or the text labels. You can also modify the search algorithm to suit your needs.

## Contributing

Contributions are welcome! If you find a bug or have a feature request, please open an issue. If you want to contribute code, please open a pull request.

## Tab Widget

The `Tab` widget is a stateless widget that displays a centered text widget with the text "1st tab". It is used as one of the tabs in a tab bar widget to display content within a tab view.

### Properties

- `key`: An optional [Key] object used to identify this widget.

### Methods

- `build`: This method overrides the `build` method in the `StatelessWidget` class and returns a `Center` widget with a `Text` widget as a child.

## Usage

```dart
FirstTab()
```

To display the `FirstTab` widget within a tab view, simply add it as a child of a `TabBarView` widget.
