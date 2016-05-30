## Carousel

The purpose of this homework is to leverage views, view properties, and events to create a high fidelity prototype that is difficult to distinguish from a production app. We're going to use the techniques from this week to implement the Carousel app from the signed out state to the basic signed in state.

Time spent: `7 hours`

### Features

#### Required

- [x] Static photo tiles on the initial screen.
- [x] Sign In.
  - [x] Tapping on email/password reveals the keyboard and shifts the scrollview and Sign In button up.
  - [x] User sees an error alert when no email is present or no password is present.
  - [x] User sees a activity indicator upon tapping the Sign In button.
  - [x] User sees an error alert when entering the wrong email/password combination.
  - [x] User is taken to the tutorial screens upon entering the correct email/password combination.
- [x] Tutorial Screens.
  - [x] User can page between the screens.
- [x] Image Timeline.
  - [x] Display a scrollable view of images.
  - [x] User can tap on the conversations button to see the conversations screen (push).
  - [x] User can tap on the profile image to see the settings view (modal from below).
- [x] Settings.
  - [x] User can dismiss the settings screen.
  - [x] User can log out.


  #### Optional

  - [ ] Photo tiles move with scrolling.
  - [ ] Sign In
    - [ ] When the keyboard is visible, if the user pulls down on the scrollview, it will dismiss the keyboard
    - [ ] On appear, scale the form up and fade it in.
  - [ ] Sign Up
    - [ ] Tapping in the form reveals the keyboard and shifts the scrollview and "Create a Dropbox" button up.
    - [ ] Tapping the Agree to Terms checkbox selects the checkbox.
    - [ ] Tapping on Terms shows a webview with the terms.
    - [ ] User is taken to the tutorial screens upon tapping the "Create a Dropbox" button.
  - [x] Tutorial Screens.
    - [x] User can page between the screens with updated dots.
    - [x] Upon reaching the 4th page, hide the dots and show the "Take Carousel for a Spin" button.
  - [ ] Learn more about Carousel.
    - [ ] Show the "Learn more about Carousel" button in the photo timeline.
    - [ ] Tap the X to dismiss the banner.
    - [ ] Track the 3 events:
      - [ ] View a photo full screen.
      - [ ] Swipe left and right.
      - [ ] Share a photo.
    - [ ] Upon completion of the events, mark them green.
    - [ ] When all events are completed, dismiss the banner.

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. automatically trigger animations like bounce or scroll
2. more animation types or exercises with transform

### Video Walkthrough

Here's a walkthrough of implemented user stories:

![Demo GIF](assets/demo.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

I found manipulating layers in Storyboard frustrating given hovering an element over a group (such as a Scroll View) automatically embeds the layer inside the parent. Using the CMD key to "unbind" the elements when dragging helped a lot. 

## License

Copyright 2016 Jonathan E. Chen

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
