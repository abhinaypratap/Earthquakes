<img src="https://github.com/abhinaypratap/Earthquakes/blob/main/img/icon-round-1024p.png" align="right" width="120" height="120"/>

# Earthquakes

- [Project](https://github.com/abhinaypratap/Earthquakes)
- Frameworks
    - Foundation
    - SwiftUI
- Target: iOS 15.0+
- Supported Destinations: iPhone
- Bundle Identifier: com.abhinaypratap.Earthquakes
- Source Control: Git
- Dependencies:
    - SwiftLint

### Background Requirements & Key Concepts

- Download, decode, and present data from a network data source.
- Use SwiftUI to build a simple interface to display dynamic data from a concurrent network client.

The Foundation framework contains types to request and transfer data over HTTP. The Swift standard library contains support for decoding JSON data. You’ll transfer and decode the data using the concurrency features that Swift 5.5 introduced, and you’ll present the results with SwiftUI.

- Customized decoding — Swift has built-in data decoding features that automate common decoding tasks and simplify complex ones.
- Concurrent design — Language features like asynchronous functions, tasks, and actors make writing asynchronous and concurrent code almost as straightforward as writing synchronous code.
- Safety from data races — Concurrent programming often comes with hard-to-debug errors, such as data races. Swift actors help you easily avoid this type of error.
- Testable components — Network operations can be difficult to test. Generics are a way to decouple dependencies and improve your app’s testability.
- Integration with SwiftUI — SwiftUI has the tools to keep your user interface in sync with an asynchronous data source.

### Tour of the app

The United States Geological Survey (USGS) hosts a JSON feed of earthquake data. We’ll build Earthquakes, an iOS app that queries and presents this data.

#### Earthquakes list

<img src="https://github.com/abhinaypratap/Earthquakes/blob/main/img/screenshot/earthquake-list.png" height="280"/>

The list displays a navigation view that contains all the earthquakes in the feed. Users can delete individual earthquakes. Tapping the Reload button refreshes the feed and reloads the earthquakes.

#### Earthquakes details

<img src="https://github.com/abhinaypratap/Earthquakes/blob/main/img/screenshot/earthquake-detail.png" height="280"/>

The detail view shows more information about an earthquake, including a map of the region surrounding the earthquake. The app fetches and loads the coordinates for each earthquake on demand in the background when it displays the detail view.

#### Earthquakes data

<img src="https://github.com/abhinaypratap/Earthquakes/blob/main/img/data.png" align="right" height="100"/>

The USGS data contains many details for earth scientists. As an app for the general population, Earthquakes ignores most of those details and extracts six common properties of each earthquake: the name of the location, time, magnitude, latitude, longitude, and detail. Together, the latitude and longitude make up the geographical coordinates.

#### Network layer

<img src="https://github.com/abhinaypratap/Earthquakes/blob/main/img/network-layer.png" align="right" height="80"/>

Earthquakes relies on a network client to load the earthquake data. The client performs network transfers concurrently in the background, keeping the interface responsive.
