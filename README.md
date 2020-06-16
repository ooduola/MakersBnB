  # MakersBnB specification

  We would like a web application that allows users to list spaces they have available, and to hire spaces for the night.

  ### Headline specifications

  - Any signed-up user can list a new space.
  ```
  As a host,
  so I can list a new space,
  I'd like to be able to sign-up to MakersBnB.
  ```

  ```
  As a host,
  so guest can view my listing,
  I'd like to list a new space.
  ```

  - Users can list multiple spaces.

  ```
  As a host,
  so I can list several properties,
  I'd like to be able to add multiple spaces.
  ```


  - Users should be able to name their space, provide a short description of the space, and a price per night.

  ```
  As a host,
  so guests can identify my property,
  I'd like to be able to name my space.
  ```
  ```
  As a host,
  so guests can see more information about my space,
  I'd like to add a short description of the space.
  ```
  ```
  As a host,
  so guest know what their visit will cost,
  I'd like to add a price per night.
  ```
  - Users should be able to offer a range of dates where their space is available.
  ```
  As a host,
  so guests can see availability,
  I'd like to be able to add a range of dates the space is available.
  ```

  - Any signed-up user can request to hire any space for one night, and this should be approved by the user that owns that space.

  ```
  As a guest,
  to book a space for one night,
  I'd like to be able to request to hire a space
  ```
  ```
  As a guest,
  to keep track of my requests,
  I'd like to be able to see requests I've made.
  ```
  ```
  As a host,
  to see booking requests,
  I'd like to be able to see requests
  ```
  ```
  As a host,
  to control bookings,
  I'd like to be able to accept or reject requests.
  ```

  - Nights for which a space has already been booked should not be available for users to book that space.

  ```
  As a user,
  to stop double bookings from occurring,
  I should be unable to select a booked date.
  ```

  - Until a user has confirmed a booking request, that space can still be booked for that night.

  ```
  As a user,
  so spaces aren't unavailable prematurely,
  I can select a date until a request for that date is confirmed.
  ```

<!-- ### Nice-to-haves

- Users should receive an email whenever one of the following happens:
 - They sign up
 - They create a space
 - They update a space
 - A user requests to book their space
 - They confirm a request
 - They request to book a space
 - Their request to book a space is confirmed
 - Their request to book a space is denied
- Users should receive a text message to a provided number whenever one of the following happens:
 - A user requests to book their space
 - Their request to book a space is confirmed
 - Their request to book a space is denied
- A ‘chat’ functionality once a space has been booked, allowing users whose space-booking request has been confirmed to chat with the user that owns that space
- Basic payment implementation though Stripe. -->

### Mockups

Mockups for MakersBnB are available [here](https://github.com/makersacademy/course/blob/master/makersbnb/makers_bnb_images/MakersBnB_mockups.pdf).


![Tracking pixel](https://githubanalytics.herokuapp.com/course/makersbnb/specification_and_mockups.md)
