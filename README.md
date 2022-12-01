# weather_bloc

Weather app that how to manage multiple cubits to implement dynamic theming, pull-to-refresh, and much more. Our weather app will pull live weather data from the public OpenMeteo API and demonstrate how to separate our application into layers (data, repository, business logic, and presentation).

## Project Requirements

Our app should let users

- Search for a city on a dedicated search page
- See a pleasant depiction of the weather data returned by Open Meteo API
- Change the units displayed (metric vs imperial)

- Additionally,

- The theme of the application should reflect the weather for the chosen city
- Application state should persist across sessions: i.e., the app should remember its state after closing and reopening it (using HydratedBloc)

#Key Concepts

- Observe state changes with BlocObserver
- BlocProvider, Flutter widget that provides a bloc to its children
- BlocBuilder, Flutter widget that handles building the widget in response to new states
- Prevent unnecessary rebuilds with Equatable
- RepositoryProvider, a Flutter widget that provides a repository to its children
- BlocListener, a Flutter widget that invokes the listener code in response to state changes in the bloc
- MultiBlocProvider, a Flutter widget that merges multiple BlocProvider widgets into one
- BlocConsumer, a Flutter widget that exposes a builder and listener in order to react to new states
- HydratedBloc to manage and persist state