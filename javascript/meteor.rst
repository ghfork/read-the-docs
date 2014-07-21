======
Meteor
======

General Usage
-------------

Template

.. code-block:: html

    <!-- in myapp.html -->
    <body>
      <h1>Today's weather!</h1>
      {{> forecast}}
    </body>

    <template name="forecast">
      <div>It'll be {{prediction}} tonight</div>
    </template>

    // in client/myapp.js: reactive helper function
    Template.forecast.prediction = function () {
      return Session.get("weather");
    };

    // in the JavaScript console
    > Session.set("weather", "cloudy");
    > document.body.innerHTML
     => "<h1>Today's weather!</h1> <div>It'll be cloudy tonight</div>"

    > Session.set("weather", "cool and dry");
    > document.body.innerHTML
     => "<h1>Today's weather!</h1> <div>It'll be cool and dry tonight</div>"

Use {{#each}} to iterate array or database

.. code-block:: html

    <!-- in myapp.html -->
    <template name="players">
      {{#each topScorers}}
        <div>{{name}}</div>
      {{/each}}
    </template>

    // in myapp.js
    Template.players.topScorers = function () {
      return Users.find({score: {$gt: 100}}, {sort: {score: -1}});
    };

Helpers with arguments

.. code-block:: html

    // in a JavaScript file
    Template.players.leagueIs = function (league) {
      return this.league === league;
    };

    <!-- in a HTML file -->
    <template name="players">
      {{#each topScorers}}
        {{#if leagueIs "junior"}}
          <div>Junior: {{name}}</div>
        {{/if}}
        {{#if leagueIs "senior"}}
          <div>Senior: {{name}}</div>
        {{/if}}
      {{/each}}
    </template>

Helpers pass constant data.

.. code-block:: html

    // Works fine with {{#each sections}}
    Template.report.sections = ["Situation", "Complication", "Resolution"];

Evnets

.. code-block:: html

    <!-- myapp.html -->
    <template name="scores">
      {{#each player}}
        {{> playerScore}}
      {{/each}}
    </template>

    <template name="playerScore">
      <div>{{name}}: {{score}}
        <span class="givePoints">Give points</span>
      </div>
    </template>

    <!-- myapp.js -->
    Template.playerScore.events({
      'click .givePoints': function () {
        Users.update(this._id, {$inc: {score: 2}});
      }
    });

Namespacing

.. code-block:: javascript

    // File Scope. This variable will be visible only inside this
    // one file. Other files in this app or package won't see it.
    var alicePerson = {name: "alice"};

    // Package Scope. This variable is visible to every file inside
    // of this package or app. The difference is that 'var' is
    // omitted.
    bobPerson = {name: "bob"};

API
---

Meteor.startup:

.. code-block:: javascript

    // On server startup, if the database is empty, create some initial data.
    if (Meteor.isServer) {
      Meteor.startup(function () {
        if (Rooms.find().count() === 0) {
          Rooms.insert({name: "Initial room"});
        }
      });
    }

Publish & Subscribe:

http://docs.meteor.com/#publishandsubscribe

Collections:

.. code-block:: javascript

    // common code on client and server declares livedata-managed mongo
    // collection.
    Chatrooms = new Meteor.Collection("chatrooms");
    Messages = new Meteor.Collection("messages");

.. code-block:: javascript

    // return array of my messages
    var myMessages = Messages.find({userId: Session.get('myUserId')}).fetch();

    // create a new message
    Messages.insert({text: "Hello, world!"});

    // mark my first message as "important"
    Messages.update(myMessages[0]._id, {$set: {important: true}});

Deps
----

Create ``Dependency`` object.

.. code-block:: javascript

    var favoriteFood = "apples";
    var favoriteFoodDep = new Deps.Dependency;

    var getFavoriteFood = function () {
      favoriteFoodDep.depend();
      return favoriteFood;
    };

    var setFavoriteFood = function (newValue) {
      favoriteFood = newValue;
      favoriteFoodDep.changed();
    };

    getFavoriteFood();
    // "apples"

``Deps.autorun`` .

.. code-block:: javascript

    var handle = Deps.autorun(function () {
      console.log("Your favorite food is " + getFavoriteFood());
    });
    // "Your favorite food is apples"

    setFavoriteFood("mangoes");
    // "Your favorite food is mangoes"
    setFavoriteFood("peaches");
    // "Your favorite food is peaches"
    setFavoriteFood("bananas");
    // "Your favorite food is bananas"
    handle.stop();
    setFavoriteFood("cake");
    // (nothing printed)

.. code-block:: javascript

    <template name="weather">
      The weather here is {{forecast}}!
    </template>

    // In app.js
    Template.weather.forecast = function () {
      return forecasts.get("san-francisco");
    };
    
.. code-block:: javascript

    var forecasts = new ReactiveDict;
    forecasts.set("Chicago", "cloudy");
    forecasts.set("Tokyo", "sunny");
    
    var settings = new ReactiveDict;
    settings.set("city", "Chicago");
    
    $('body').html("The weather in <span class='city'></span> is <span class='weather'></span>.");
    Deps.autorun(function () {
      console.log("Updating");
      var currentCity = settings.get('city');
      $('.city').text(currentCity);
      $('.weather').text(forecasts.get(currentCity).toUpperCase());
    });
    // Prints "Updating"
    // Page now says "The weather in Chicago is CLOUDY."

    settings.set("city", "Tokyo");
    // Prints "Updating"
    // Page updates to "The weather in Tokyo is SUNNY."
    
    forecasts.set("Tokyo", "wet");
    // Prints "Updating"
    // Page updates to "The weather in Tokyo is WET."
    
    forecasts.set("Chicago", "warm");
    // Does *not* print "Updating"
    // No work is done
    
Autoruns Can Be Nested Inside Autoruns

.. code-block:: javascript

    var weather = new ReactiveDict;
    
    weather.set("sky", "sunny");
    weather.set("temperature", "cool");
    
    var weatherPrinter = Deps.autorun(function () {
      console.log("The sky is " + weather.get("sky"));
      var temperaturePrinter = Deps.autorun(function () {
        console.log("The temperature is " + weather.get("temperature"));
      });
    });
    // "The sky is sunny"
    // "The temperature is cool"
    
    weather.set("temperature", "hot");
    // "The temperature is hot"
    
    weather.set("sky", "stormy");
    // The sky is stormy
    // The temperature is hot

References
----------
https://www.meteor.com/learn-meteor
http://docs.meteor.com/
http://manual.meteor.com/
https://github.com/meteor/meteor/tree/devel/packages/spacebars


http://webdesignledger.com/
http://www.hongkiat.com/blog/web-design-trends-2014/
http://www.unheap.com/section/inputs-forms/page/2/
http://codepen.io/tag/svg/
http://webtoolsdepot.com/

https://github.com/awatson1978/meteor-cookbook

https://leanpub.com/meteortutorial/read
