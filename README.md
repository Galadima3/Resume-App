# resume_app

Resume App
## Getting Started


## A description of the app and its features
This is a simple Resume app that displays my details such as name, job title and Location. My skills are highlighted in the home page which lead to my portfolio when tapped. I added my social media links in the Contact page. Each Tile in the Contact page is clickable and opens a given social link when tapped.
I took the following steps to ensure Responsiveness:
-	Use of GridView.count() and MediaQuery to display optimize the display of my skills(in the Home Page) depending on the device orientation.
-	I used adaptivePlatformDensity to achieve adaptive theming depending on the device theme

## A description of the code base and how it works

The app is built to display 3 screens and is linked together using page_transition package(a package built on Navigator).
-	HomePage contains the landing page and is built using Material Widgets such as Scaffold, appBar, and Column. The AppBar contains a iconButton which leads to the Contact Page. It contains a GridView widget which displays my skills in a list of tiles. Each tile is wrapped with a GestureDetector which leads to the PortfolioPage()
-	ContactPage: Contact Page is a list of widgets that contain my social links such as github, hashnode and twitter. This was accomplished using the url_launcher and GestureDetector widgets. I extracted the Contacts into a special class named ContactWidget. This was done to prevent code repetition and observance of the encapsulation principle of OOP
-	Portfolio Page: This page contains a simple column of Widgets that show my experience in various technologies. A special class called PortfolioWidget serves as a model for all the items added to the column
-	constants.dart: This file contains certain styling elements used throughout the application. I moved them to a special file to prevent repetition and also make the code
-	widgets.dart: This file contains widgets that are used multiple times in the HomePage. I isolated them into classes and moved them to this file to prevent my code from being interwoven and complicated aka spaghetti code


## A description of the design and how it works (Link to the designer, if you used any designer work)
I made use of a designed obtained from Pinterest which I heavily modifed: www.pinterest.com/pin/462604192971991059
The app consists of 3 screens namely: HomePage, Portfolio Page and Contact Page.  
1.	HomePage: serves as a landing page for my app and contains brief information about me such as my name, job title and location. I added an introduction about what I do and what I offer to the company. In a GridVew widget, I added a list of skills I have. Each skill can be tapped and leads to the Portfolio page. This GridView is responsive and changes when the device orientation is changed.
2.	Contact Page: This screen contains my social media links and can be tapped to load each link in-app. I added this feature to allow recruiters access my profiles easily and without hassle.
3.	Portfolio Page: Contains my level of experience in each Skill I have. I made it simple in hopes of improving it in the next iteration of this app.

## A description of the libraries you used and why you used them
-	url_launcher: This package is used to open links in-app. I added this package to enable users open their social media links without leaving the app.
-	page_transition: This package is used for Navigation and customizing the transition between Pages. I added this package to enhance the UX of the app
-	flutter_localizations + intl: This package(s) is used for app localization such as language change.

## A description of the features you would like to add if you had more time
-	Fonts: I would prefer to add custom fonts to the app to improve the appearance of the app
-	Portfolio Page: I would add my projects that I’ve worked on as a means of marketing my self
-	Share Feature: I will add a feature to share my portfolio from the app

## A link to the APK or iPA file
-	https://www.dropbox.com/s/aybs6veyja44txu/app-debug.apk?dl=0

## A description of the challenges you faced and how you solved them

-	Learning new concepts such as MediaQuery, adaptive theming and also launching urls in-app was challenging but I was able to solve them by going reading docs, tutorials and YouTube videos

## A link to the Appetize.io link
-	https://appetize.io/app/k3qkpdngugubsxxbrhu2y6ettm


