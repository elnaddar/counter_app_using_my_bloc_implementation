# Flutter Counter App Using BLoC

This Flutter project demonstrates a simple counter application using the BLoC (Business Logic Component) pattern to manage state. The app increases or decreases a counter value when a button is pressed. This project is intended as a practical example to understand how to implement and use BLoC in Flutter applications.

## Features

- **Increment and Decrement Functionality**: Users can increase or decrease the counter value using floating action buttons.
- **State Management with BLoC**: Utilizes the BLoC pattern for separating business logic from UI concerns, enhancing the scalability and maintainability of the code.
- **Material Design**: Implements Material Design principles and uses Material Components for the UI, with an adaptive and attractive design.

## Getting Started

### Prerequisites

Ensure you have Flutter installed on your machine. To check if Flutter is installed and set up correctly, run the following command in your terminal:

```bash
flutter doctor
```

### Installation

1. Clone the repository to your local machine:

```bash
git clone [repository-url]
```

2. Navigate to the project directory:

```bash
cd path_to_project
```

3. Install the necessary packages:

```bash
flutter pub get
```

4. Run the app:

```bash
flutter run
```

### Usage

The main screen presents a counter and two buttons. Press the "+" button to increase the counter and the "-" button to decrease it. The current state of the counter is managed by `CounterBloc` and is displayed at the center of the home screen.


## Project Structure

The project is organized into several directories:

- **bloc/**: Contains the BLoC foundational files.
  - `bloc.dart`: Generic BLoC interface for the application.
  - `bloc_provider.dart`: Generic class for injecting BLoCs into the widget tree.
- **logic/**: Houses the business logic for the counter.
  - `counter_bloc.dart`: Defines the `CounterBloc` responsible for handling counter state changes.
- **main.dart**: The entry point of the application, setting up the app environment and the main widget.

## Contributing

Feel free to fork the repository, make changes, and submit pull requests. Contributions to improve the app or enhance the BLoC implementation are welcome.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.