+++
date = "2016-02-24T20:54:40+01:00"
draft = false
title = "Angular by example"
categories = ["javascript", "programming"]
+++

# Environment Setup

Use NVM
Use Node js

## Scaffold a WebApp with YeoMan

source [YeoMan Guide](http://yeoman.io/codelab/) and [Meet Yeoman](http://yeoman.io/codelab/meet-yeoman.html)

Install yo, grunt-cli, bower, generator-angular and generator-karma

    npm install -g grunt-cli bower yo generator-karma generator-angular

I am opinionated in how I use Ruby in my system. I use [rbenv](https://github.com/rbenv/rbenv#installation) and [ruby-build](https://github.com/rbenv/ruby-build#readme)

Install the compass gem:

	gem install compass

Either clone my github page or if you really want to learn, do it from scratch.

	mkdir my-angular-project && cd $_

Run `yo angular` , optionally passing in an app name:

	yo angular [app-name]

Go through the options

	1. Choose Grunt
	2. Use Sass
	3. Include Bootstrap
	4. Use Sass version of Bootstrap
	5. Choose Angular modules needed
	6. Profit

Now run the initial app with `grunt serve` .

    grunt serve

This should automatically open a browser window

I always use source control

    git init
    git add .
    git commit -am "initial project commit"


Now lets do some actual work..

---
# Basic Project

Open `app/index.html`

```html
<!doctype html>
<html>
  <head>
.
.
.
  </head>
  <body ng-app="myAngularProjectApp">
.
.
.

    <div class="container">
    <div ng-view=""></div>
    </div>
.
.
.
</body>
</html>

```

 - what does [ng-app]() do, is it an angular or custom directive?
 - what does [ng-view]() do, is it an angular or custom directive?

open `app/script.js`

```javascript
'use strict';

/**
 * @ngdoc overview
 * @name myAngularProjectApp
 * @description
 * # myAngularProjectApp
 *
 * Main module of the application.
 */
angular
  .module('myAngularProjectApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl',
        controllerAs: 'main'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl',
        controllerAs: 'about'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
```

we can see [$routeprovider]() function - what does it do?

Ahh - welcome back, so basically read `when` in the `root` url `'/'`, render `views/main.html`, derived from `templateUrl`, define controller and aliases.

Brilliant, thus let's see this beauty in action.


Open `app/views/main.html` and replace with this

```html
    <div class="jumbotron">
      <h1>Bitcoin Investment<br>Calculator</h1>
      <br>
      <h3>How many Bitcoins do you have?</h3>
      <!-- model -->
      <input type="number" ng-model="somenumber" placeholder="20">
      <br><br>
      <h4>You have <span class="number">{{ somenumber }}</span> Bitcoins - nice!</h4>
    </div>
```

Lets look at the diff

```diff
 <div class="jumbotron">
-  <h1>'Allo, 'Allo!</h1>
-  <p class="lead">
-    <img src="images/yeoman.png" alt="I'm Yeoman"><br>
-    Always a pleasure scaffolding your apps.
-  </p>
-  <p><a class="btn btn-lg btn-success" ng-href="#/">Splendid!<span class="glyphicon glyphicon-ok"></span></a></p>
-</div>
-
-<div class="row marketing">
-  <h4>HTML5 Boilerplate</h4>
-  <p>
-    HTML5 Boilerplate is a professional front-end template for building fast, robust, and adaptable web apps or sites.
-  </p>
-
-  <h4>Angular</h4>
-  <p>
-    AngularJS is a toolset for building the framework most suited to your application development.
-  </p>
-
-  <h4>Karma</h4>
-  <p>Spectacular Test Runner for JavaScript.</p>
+      <h1>Bitcoin Investment<br>Calculator</h1>
+      <br>
+      <h3>How many Bitcoins do you have?</h3>
+      <!-- model -->
+      <input type="number" ng-model="somenumber" placeholder="20">
+      <br><br>
+      <h4>You have <span class="number">{{ somenumber }}</span> Bitcoins - nice!</h4>
 </div>
```


 -Defining a model
Here we are defining the [ng-model]() in the input box as the `ng-model="someumber"`. By doing so, we have bound the value within the input box to the model, so when the input value changes, Angular automatically updates the model. This is [two-way-binding]() in action.

-Using a model
We wrap the model value, `somenumber` in double curly braces, this is an example of Angular service component [interpolate]() The double curly brace notation {{ }} to bind expressions to elements is built-in Angular markup

[source](https://code.angularjs.org/1.5.0/docs/api/ng/provider/SinterpolateProvider)

## Module and Controllers

### Controllers


Controllers are 'classes or 'constructor functions'

Going back to `app/scripts/app/js` note this

```javascript
.when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl',
        controllerAs: 'main'
      })
```

note that for the `main.html` a controller is defined `MainCtrl`. This has already been generated by yeoman - so go ahead and open `app/scripts/controllers/main.js`.
Is there anything special about the name? How did we get to inject this into our app?

```html
        <script src="scripts/app.js"></script>
        <script src="scripts/controllers/main.js"></script>
        <script src="scripts/controllers/about.js"></script>
```

So the name we created.. whats important is the content..

```javascript
angular.module('myAngularProjectApp')
  .controller('MainCtrl', function () {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
```

We define a controller constructor function `MainCtrl` within our module `myAngularProjectApp` . Note that we have actually created a directive in our App.js when we defined a templateUrl and controller, this is a major source of confusion with Angular js beginners as there a more than one of `doing things`.

We could easily have defined our controller within our index.html

    <html ng-app="myAngularProjectApp" ng-controller="MainCtrl">

But this is inextensible and makes it difficult to extend our app.

Replace mainjs with this

```javascript
angular.module('myAngularProjectApp')
  .controller('MainCtrl', ['$scope', function ($scope) {
       // attaching 0 to the DOM
      $scope.somenumber = 320;
  }]);
```

You should have Grunt running to detect changes so once saved, the screen should refresh and update.
Notice the usage of $scope, Angular uses a lot of DI Dependency Injection [DI](https://docs.angularjs.org/guide/di), it generally takes this shape for controllers:

```javascript
someModule.controller('MyController', ['$scope', 'dep1', 'dep2', function($scope, dep1, dep2) {
  ...
  $scope.aMethod = function() {
    ...
  }
  ...
}]);
```

Go read more on [scopes](https://docs.angularjs.org/guide/scope). Controllers are always generally associated with an element in the DOM (the V and C in MVC) and are thus provided with a scope.

### Changes

app/scripts/controllers/main.js

```diff
@@ -8,7 +8,19 @@
  * Controller of the myAngularProjectApp
  */
 angular.module('myAngularProjectApp')
-  .controller('MainCtrl', ['$scope', function ($scope) {
-       // attaching 0 to the DOM
-      $scope.somenumber = 320;
-  }]);
+  .controller('MainCtrl', function ($scope, $http) {
+          
+     // calling the api, grabbing the value for USD, appending it to the dom
+     $http.get("https://bitpay.com/api/rates")
+          .success(function(data){
+            $scope.rates = data;
+            for(var i=0;i<data.length;i++){
+              if (data[i].code == "USD"){
+                $scope.currRate = data[i].rate;
+              }
+            }
+            $scope.initalAmt  = 5000;
+            $scope.newAmt     = function(price){return price/$scope.currRate * $scope.initalAmt;}
+            $scope.profit     = function(price){return price/$scope.currRate * $scope.initalAmt - $scope.initalAmt;}
+      });      
+  });
```

Looking at app/views/main.html

```diff
@@ -1,9 +1,58 @@
 <div class="jumbotron">
-      <h1>Bitcoin Investment<br>Calculator</h1>
-      <br>
-      <h3>How many Bitcoins do you have?</h3>
-      <!-- model -->
-      <input type="number" ng-model="somenumber" placeholder="20">
-      <br><br>
-      <h4>You have <span class="number">{{ somenumber }}</span> Bitcoins - nice!</h4>
+
+      <div class="row">
+        <div class="col-sm-12">
+          <h1>Bitcoin Investment Calculator</h1>
+          <br><br>
+          <form role="form">
+            <label for="starting-investment">Initial Investment (USD)</label>
+            <input type="number" ng-model="initalAmt" class="form-control" placeholder="{{initalAmt}}">
+          </form>
+          <br>
+          <p>Current Price (USD): <span class="number">{{currRate | currency }}</span></p>
+        </div>
+      </div>
+      <div class="row">
+        <div class="col-sm-12">
+          <br><br>
+          <table class="table table-bordered">
+            <thead>
+              <tr>
+                <th>Price of 1 BTC</th>
+                <th>Starting Investment</th>
+                <th>Profit</th>
+              </tr>
+            </thead>
+              <tbody>
+                <tr>
+                  <td>$1,000</td>
+                  <td>{{ newAmt(1000) | currency }}</td>
+                  <td>{{ profit(1000) | currency }}</td>
+                </tr>
+                <tr>
+                  <td>$5,000</td>
+                  <td>{{ newAmt(5000) | currency }}</td>
+                  <td>{{ profit(5000) | currency }}</td>
+                </tr>
+                <tr>
+                  <td>$10,000</td>
+                  <td>{{ newAmt(10000) | currency }}</td>
+                  <td>{{ profit(10000) | currency }}</td>
+                </tr>
+                <tr>
+                  <td>$25,000</td>
+                  <td>{{ newAmt(25000) | currency }}</td>
+                  <td>{{ profit(25000) | currency }}</td>
+                </tr>
+                <tr>
+                  <td>$50,000</td>
+                  <td>{{ newAmt(50000) | currency }}</td>
+                  <td>{{ profit(50000) | currency }}</td>
+                </tr>
+              </tbody>
+          </table>
+          <span>* IF the price of 1 Bitcoin reaches X, THEN your starting investment becomes X AND your profit becomes X.</span>
+        </div>
+      </div>
+
 </div>
```

> Written with [Love](https://stackedit.io/).
