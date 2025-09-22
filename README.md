# Ruby Object-Oriented Programming Project

This project is an introduction to Object-Oriented Programming (OOP) concepts using Ruby. It features two main classes, `User` and `Event`, to model a simple event management system.

## Core Concepts

This project demonstrates several key OOP principles:

*   **Encapsulation:** Data (attributes) and methods that operate on that data are bundled together within classes (`User`, `Event`).
*   **Abstraction:** Complex implementation details are hidden behind a simple interface. For example, creating an `Event` object doesn't require knowing how `Time` objects are manipulated internally.
*   **Classes and Instances:** `User` and `Event` are blueprints (classes) for creating individual objects (instances).
*   **Instance Variables (`@`)**: Each object has its own state (e.g., `@email` for a user, `@title` for an event).
*   **Class Variables (`@@`)**: Variables shared across all instances of a class (e.g., `@@user_list` to track all created users).
*   **Attribute Accessors:** `attr_accessor`, `attr_reader`, and `attr_writer` are used to manage access to instance variables.

## Features

### `User` Class (`lib/user.rb`)

The `User` class models a user of the system.

*   **Attributes:** `email` and `age`.
*   **Email Validation:** A user can only be created if the provided email address has a valid format.
*   **User Directory:** A class-level list (`@@user_list`) keeps track of all `User` instances created.

### `Event` Class (`lib/event.rb`)

The `Event` class models a scheduled event.

*   **Attributes:** `start_date`, `duration`, `title`, and a list of `attendees`.
*   **Time Management:** Automatically calculates the `end_date` based on the start date and duration.
*   **Event Manipulation:** Includes a method to `postpone_24h` an event.
*   **Status Checks:** Provides methods to check if an event `is_past?`, `is_future?`, or `is_soon?`.
*   **Display:** A `to_s` method to print a nicely formatted summary of the event details.

## How to Run

The `app.rb` file serves as an entry point to demonstrate how to create and interact with `User` and `Event` objects. You can run it from your terminal:

```bash
ruby app.rb
```
