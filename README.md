# jQuery keyboard event
## About
This jQuery extension allow you trigger native keyboard event on target
## Usage
Call jquery `simulateKeyboardEvent([options])`. Options may contain:

* `type`: `'keydown'`, `'keyup'`, `'keypress'`, default: `'keydown'`

Example:

```` javascript
$('div').simulateKeyboardEvent({type: 'keypress'});
````
## Dependencies

* jQuery

## Compatibility
Tested on:

* Chrome 29
* Firefox 23
* Safari 6

## Test
You need to install npm and run `npm install` to install karma and required extension.
Then simply run:

````
karma start
````
