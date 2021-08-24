### Requirement

The Take Home Challenge is due by 1600 EDT on 31 August 2021. Take Home Challenge responses received after the time and date listed will not be considered or evaluated for receipt of award. The Government will not be responsible for any failure of receipt of the submission or any failure of the Offeror to verify receipt of the submission. Offerors are to demonstrate their capability / functionality in the context of achieving the scenario that has been provided below. All Offerors have received the same Take Home Challenge scenario.

### Objective

Your challenge is to build out the frontend and backend components of an aircraft tracking application for the Federal Aviation Administration (FAA).

### Brief

Your task is to build out the project with the functionality outlined in **Expected Behavior**. Teams are only supposed to build out the desktop version of the assignment and it does not need to be responsive.

Please make sure that your application is able to be fully instantiated using Docker Compose and include all scripts and configurations within the git repository.

Expect to use third party containers like Keycloak, PostgreSQL, and RabbitMQ.
- Please make sure your application is configured with an SSO provider for this project please use Keycloak.
- Data should be persisted, your choice of technology, between application boots.
- ADS-B and Mode S data should be consumed from an available online source.
- Consumed data should then be exposed to a rabbitmq stream for consumption by other services.

When building your frontend please use Material-UI to construct a consistent user experience.

Feel free to architect your system how you see fit; you are not constrained to using a single application to solve the problem below.

This is a group project. The Government expects to see contribution from all team members, and all team members can intelligently discuss every part of the project. To share access to the project within your company’s team, you are allowed to share the "clone git" URL and password to allow the other members of your team to contribute.

### Tasks

Your end-users should be able to:
- Display current flight data, location, as it is streamed from a Automatic Dependent Surveillance-Broadcast (ads-b) and Mode S source
- Display historic flight data for specific flight when the aircraft is selected
- **Bonus**: Filter current aircraft by callword

### Expected Behaviour

User Facing Behavior
- User can log in with their Single Sign-On (sso) credentials
- Display current flight data
  - Show the user a map to view flight data on
  - Limit your flight data to a 100-mile radius around Boston Logan International Airport (KBOS)
  - Place an icon at the location of the aircraft facing the direction of the aircrafts path
  - Update the position of each aircraft when new data is received
- Display historic flight data
  - Allow the user to click a current flight
  - Hide other current flights
  - Show the historical path of the flight selected
- **Bonus** Filter current aircraft by callword
  - Allow the user to input a filter for callwords
  - Hide all current flights that don't match the filter

### The OpenSky Network API

To supply data to your assignment please use The OpenSky Network API, [documentation found here](https://opensky-network.org/apidoc).

We've created a single account for use during this assignment.  
Username: `endor_take_home`  
Password: `AE6t&7&MdFChe5yq`

Please limit your use of this API to a single request every 2 seconds and geographically bounded to the problem statement to prevent overloading the service.

### CodeSubmit

Please organize, design, test, and document your code as if it were going into production - then push your changes to the master branch. After you have pushed your code, you may submit the assignment on the assignment page.

The Air Force Team