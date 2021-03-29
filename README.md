Original App Design Project - README Template
===

# CAMPUSGRAM

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

# MOST RECENT GIF

<img src='http://g.recordit.co/hMTH210bi8.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

## Overview
### Description
Campusgram lets you find and host fun events happening on your college campus. It is a safe app that only lets students like you who go to the same school find events happening on campus. You can find events based on date, event type, and location. You can also rate events that are hosted on a regular basis to others know if they should go as well! Have fun and be respectful, any user who has a history of disruptiveness could be kicked off of the app.

### App Evaluation
- **Category: Event, Social**
- **Mobile: Allows people to drop their current location, convenient to instantly upload pictures and description of events, and to easily invite people.**
- **Story: Every campus deserves a chill app that brings people together on the weekends or whenever people want a distraction from their academic life.**
- **Market: College students, must enter student ID info to be verified in order to use this app, just to be safe and to keep creeps out.**
- **Habit: Students can go on this app whenever they’re looking for something fun to do on their campus.**
- **Scope: This app will be available for every campus, it has a system that will only show the student unofficial events happening at their school based off of the info from their entered student ID info.**

## Product Spec

### 1. User Stories

**Required Must-have Stories**

* User can sign up and login with their student ID
* User has his/her profile
* User can post events
* User can browse events on campus
* User can share event with others
* User can DM event hosts
* User can look at map within the app and check distance from the event
* User can report users
* User can review events
* User can pull down to refresh feed

**Optional Nice-to-have Stories**

* User can have the option to carpool

### 2. Screen Archetypes

* Login/Sign Up screen
   * Login or sign up
   * Once user logs in, they stay logged in
* Main feed screen
   * Event posts on campus
   * Once an event is clicked on, user can interact with the post
   * Post interactions include like, comment, share
   * User can click on the event's address and be taken to map tab in app
* Search Screen
   * User can search up events based on location, distance, username, date
* Post Screen
   * User can post his/her own event
   * Choose pictures or videos to be included in the post
   * Choose location to be included in the post
   * Add invites to the post
   * Add co-hosts for the event
   * Add event description
* User Interactions Screen
   * Events they've interacted with
   * Event history
* User Page Screen
   * Username
   * Profile picture
   * Bio
   * Posts
   * Edit buttons: Settings, edit profile
* Settings screen
   * User settings
* Edit Profile Screen
   * User's public profile settings

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Main feed tab
* Search tab
* Post tab
* Interactions tab
* Profile tab

**Flow Navigation** (Screen to Screen)

* Login/Sign Up screen
   * Main Feed Screen
* Main Feed Screen
   * Event description screen
* Post Screen
   * Main feed screen
* Interactions screen
   * Event description screen once event is clicked on
* Profile Screen
   * Profile settings screen once edit button is clicked on
   * Settings screen once settings is clicked on

### [BONUS] Digital Wireframes & Mockups
<img src="https://raw.githubusercontent.com/iOS-Original-App/Campusgram/main/Wireframes/Screen%20Shot%202021-03-21%20at%204.52.10%20PM.png" width=600>
<img src="https://raw.githubusercontent.com/iOS-Original-App/Campusgram/main/Wireframes/Screen%20Shot%202021-03-21%20at%204.52.50%20PM.png" width=600>
<img src="https://raw.githubusercontent.com/iOS-Original-App/Campusgram/main/Wireframes/Screen%20Shot%202021-03-21%20at%204.53.15%20PM.png" width=600>

## Schema 
### Models
| Property | Type| Description|
| --------------- | --------------- | --------------- |
| likesCount | int | Number of likes for post |
| commentsCount | int | Number of comments for post |
| objectID | string | ID that identifies the object |
| createdAt | Date time | The time a post was created |
| updatedAt | Date time | The time a post was updated |
| image(s) | File | Images of where the event is going to be |
| caption | String | Description of the event |
| host(s) | Pointer to user | Event host(s) |
| location | Location | Location of the event |
| eventDate | Date time | Date of the event |

### Networking
#### List of network requests by screen
   - Home Feed Screen
      - (Read/GET) Query all posts where user is author
         ```swift
         let query = PFQuery(className:"Post")
         query.whereKey("author", equalTo: currentUser)
         query.order(byDescending: "createdAt")
         query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
            if let error = error { 
               print(error.localizedDescription)
            } else if let posts = posts {
               print("Successfully retrieved \(posts.count) posts.")
           // TODO: Do something with posts...
            }
         }
         ```
      - (Create/POST) Create a new like on a post
      - (Delete) Delete existing like
      - (Create/POST) Create a new comment on a post
      - (Delete) Delete existing comment
      - (GET) Get GPS map location of event
      - (GET) Ability to share the post
      - (Create/POST/GET) Reviews of event if the event happens on a regular basis and has happened before
   - Create Post Screen
      - (Create/POST) Create a new post object
      - (Create/POST) Add location of event
      - (Edit) Ability to edit the post
      - (Create/POST) Expected party size of event
      - (Add) Add other hosts
      - (Create/POST) Date and time of the event
   - Profile Screen
      - (Read/GET) Query logged in user object
      - (Update/PUT) Update user profile imageb and name
      - (Update) Update user settings
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
