
# MCV_MVVM_Study_App

The aim of this study project is to explore and implement the MVVM (Model-View-ViewModel) design pattern in a currencies app developed in Swift. By adopting MVVM, the project aims to separate the concerns of the View and ViewModel components, promoting better code organization, testability, and maintainability. Through this project, my aim is to gain a deeper understanding of MVVM principles, such as data binding, decoupling of UI logic, and the role of the ViewModel in managing the state and behavior of the View. The project serves as an opportunity to enhance coding skills and explore best practices in architecting iOS applications.




## MVC
In the MVC (Model-View-Controller) pattern, the responsibility of the ViewController is to handle user interactions, update the model, and update the view. It acts as the mediator between the model and the view.

## MVVM
In the MVVM (Model-View-ViewModel) pattern, the responsibilities are separated more explicitly. The View is responsible for rendering the user interface and handling user interactions. It focuses on the presentation logic and does not directly update the data. The ViewModel, on the other hand, is responsible for providing data and behavior to the View. It encapsulates the business logic, holds the state of the View, and interacts with the Model or other data sources. The ViewModel exposes properties and methods that the View can bind to, allowing it to display and react to changes in the data.

## What do we get?
By separating the responsibilities, MVVM promotes a more decoupled and testable architecture. The ViewModel becomes the intermediary between the View and the Model, allowing for better maintainability and flexibility. It also enables better code reusability since the ViewModel can be shared across multiple Views if needed.

## Summary
In summary, the key difference between MVC and MVVM lies in the separation of concerns. MVVM separates the responsibilities of handling user interactions and updating the view into separate components (View and ViewModel), promoting a more modular and testable codebase.




## API

`Warning: This study project does not incorporate the use of APIs for retrieving real-time currency data. Please note that the primary objective of this project is to explore and understand the differences between the MVC and MVVM design patterns. As a result, the app's functionality in terms of displaying accurate and up-to-date currency values may be limited or simulated. It is important to keep this in mind when examining the project, as the focus lies primarily on studying the architectural differences between MVC and MVVM rather than providing precise and real-world currency information.` 

  