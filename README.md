# weather_bloc

Weather app that how to manage multiple cubits to implement dynamic theming, pull-to-refresh, and much more. Our weather app will pull live weather data from the public OpenMeteo API and demonstrate how to separate our application into layers (data, repository, feature(business logic, and presentation) ).

![flutter_weather](https://user-images.githubusercontent.com/43721794/220087404-1d5717af-30e6-4ab5-883a-29f40178a0c7.gif)

## Project Requirements

Our app should let users

- Search for a city on a dedicated search page
- See a pleasant depiction of the weather data returned by Open Meteo API
- Change the units displayed (metric vs imperial)

- Additionally,

- The theme of the application should reflect the weather for the chosen city
- Application state should persist across sessions: i.e., the app should remember its state after closing and reopening it (using HydratedBloc)

## Key Concepts

- Observe state changes with BlocObserver
- BlocProvider, Flutter widget that provides a bloc to its children
- BlocBuilder, Flutter widget that handles building the widget in response to new states
- Prevent unnecessary rebuilds with Equatable
- RepositoryProvider, a Flutter widget that provides a repository to its children
- BlocListener, a Flutter widget that invokes the listener code in response to state changes in the bloc
- MultiBlocProvider, a Flutter widget that merges multiple BlocProvider widgets into one
- BlocConsumer, a Flutter widget that exposes a builder and listener in order to react to new states
- HydratedBloc to manage and persist state

## Architecture

In this tutorial, here's what these layers will do:

- Data: retrieve raw weather data from the API
- Repository: abstract the data layer and expose domain models for the application to consume
- Feature :
  - Business Logic: manage the state of each feature (unit information, city details, themes, etc.)
  - Presentation: display weather information and collect input from users (settings page, search page etc.)

Repository Layer:

The goal of our repository layer is to abstract our data layer and facilitate(kolaylastırmak) communication with the bloc layer. In doing this, the rest of our code base depends ONLY ON functions EXPOSED BY our repository layer INSTEAD OF specific data provider implementations. This allows us to change data providers WITHOUT DISRUPTING any of the application-level code. For example, if we DECIDE to migrate away from metaweather, we should BE ABLE TO create a new API client and swap it out WITHOUT HAVING TO MAKE CHANGES to the public API of the repository or application layers.

