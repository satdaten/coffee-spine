# CoffeeSpine Brunch

[Brunch](http://brunch.io/) skeleton that uses CoffeeScript and Spine. jQuery and Underscore.js comes included in its base. Brunch does not have to be installed or used directly to get started.

* Language: [CoffeeScript](http://coffeescript.org/)
* Lint: [CoffeeLint](http://www.coffeelint.org/)
* Framework: [Spine](http://spinejs.com/)
* Templating: [Eco](http://github.com/sstephenson/eco)
* Styling: [LESS](http://lesscss.org/)
* Testing:
  * [Mocha](http://visionmedia.github.com/mocha/)
  * [Chai](http://chaijs.com/)
  * [Sinon](http://sinonjs.org/) (using [Sinon-Chai](http://github.com/domenic/sinon-chai))
* Libraries and Utilities:
  * [jQuery](http://jquery.com/)
  * [Zepto](http://zeptojs.com/) (replaces jQuery for mobile)
  * [Bootstrap](http://twitter.github.com/bootstrap)
  * [Modernizr](http://modernizr.com/) (included in test)
  * [Normalize](http://necolas.github.com/normalize.css/)
  * [Typeset.css](http://joshuarudd.github.com/typeset.css/)
  * [Underscore](http://underscorejs.org/)
* Other Brunch Plugins:
  * [Appcache](http://github.com/brunch/appcache-brunch)
  * [Auto Reload](http://github.com/brunch/auto-reload-brunch) (included in test)


## Installation Instrctions

* Install [Node](http://nodejs.org/) if you have not done so already.
* Download the skeleton and run `npm install` from within the skeleton folder.
* Alternatively, you can also install CoffeeScript to use the `cake` command: `npm install -g coffee-script`


## Tasks

* If you are familiar with Brunch, you can just use that with no issues.
* If you rather not use or install Brunch globally, or leverage some other tasks (ex. project initialization) then you can use one of the following:
  * `npm` - You can run tasks using `npm run-script [task]`. To see all tasks available just run `npm start`.
  * `cake` - If you have CoffeeScript installed you can also use the Cakefile to run tasks using `cake [task]`. Run `cake` to see all available tasks.


## FAQ

* Why `npm` and `cake`?
  * By specifying Brunch in `package.json` you can keep things consistent when working with others on a project in case of upgrades and changes.
  * It is easier for one to get someone started on an existing project if they are unfamiliar with some of these tools. For me I can get them to install Node.js, download the project, install dependencies and use `npm run-script` or `cake`.
  * Cakefile is used to write possible advanced tasks in the future and can be used cross-platform.
* Why have Modernizr under testing only?
  * That Modernizr is the complete version that can be used for feature detection during testing. Download Modernizr from their [website](http://modernizr.com/) to create a custom build based on your requirements to keep things lightweight for production.


## Notes

* Adding mobile through brunch/npm/cake replaces the contents of jQuery with Zepto.
* Normalize.css and Typeset.css are not included when using Bootstrap.


### More information and features coming soon!