
Meteor
======

General Usage
-------------

Template

.. code-block:: javascript

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

.. code-block:: javascript

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

.. code-block:: javascript

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

.. code-block:: javascript

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

References
----------
http://docs.meteor.com/
https://github.com/meteor/meteor/tree/devel/packages/spacebars
