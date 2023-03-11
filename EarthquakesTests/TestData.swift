/// Test data for quake feeds.
/// You’ll use sample data in GeoJSON format instead of fetching network data
/// while you develop and test the first part of the app.

import Foundation

/// Create a data constant by encoding a string literal in GeoJSON format.
/// The triple-quote syntax lets you create multiline string literals.
/// The Data value type allows a buffer of bytes in memory to behave like a Foundation object.
let testFeatureNC73649170: Data = """
        {
          "mag": 0.34,
          "place": "5km NW of The Geysers, CA",
          "time": 1636129710550,
          "updated": 1636129809904,
          "tz": null,
          "url": "https://earthquake.usgs.gov/earthquakes/eventpage/nc73649170",
          "detail": "https://earthquake.usgs.gov/earthquakes/feed/v1.0/detail/nc73649170.geojson",
          "felt": null,
          "cdi": null,
          "mmi": null,
          "alert": null,
          "status": "automatic",
          "tsunami": 0,
          "sig": 2,
          "net": "nc",
          "code": "73649170",
          "ids": ",nc73649170,",
          "sources": ",nc,",
          "types": ",nearby-cities,origin,phase-data,",
          "nst": 11,
          "dmin": 0.001816,
          "rms": 0.03,
          "gap": 62,
          "magType": "md",
          "type": "earthquake",
          "title": "M 0.3 - 5km NW of The Geysers, CA"
        }
    """.data(using: .utf8)!
