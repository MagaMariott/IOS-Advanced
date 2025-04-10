Orakul - weather app by Temirlan Satybaldy

Orakul is a weather application built with SwiftUI. The name is taken from Greek culture about oracles (оракулы) - predictors who know more than others. The app shows real-time weather data from the OpenWeatherMap website by my own API and displays it in a beautiful interface. It supports features such as showing the current temperature, max/min temperature, humidity and wind speed.

Overview:
Real time weather data: Fetches current weather conditions based on geographical coordinates latitude and longitude.
Weather information display: Displays the temperature, humidity and wind speed.
Design: Uses colorful background and minimalistics components to create an understandable interface.
Error Handling: Gracefully handles loading errors and shows error messages to users if the data can't be fetched.

Setup Instructions:
Open the Orakul project in Xcode.
Put true API key from OpenWeatherMap.
Write coordinates latitude and longitude in ContentView file on 75-76 lines.
Start views preview.

Issues:
	Change the city might be only from code.
	API key sometimes got failed (because there is free one)
	Not much information about the weather.

Libraries:
	SwiftUI for building the user interface in a declarative manner.
Foundation for networking (fetching weather data) and handling JSON parsing.



