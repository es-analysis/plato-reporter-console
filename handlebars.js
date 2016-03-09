

var Handlebars = module.exports = require('handlebars');
require('handlebars-chalk')(Handlebars);

function print(str) {
  return new Handlebars.SafeString(str);
}

Handlebars.registerHelper('ifAll', function(/*args*/) {
  var args = Array.prototype.slice.call(arguments);
  var options = args.pop();
  var result = args.reduce(function(p,n){return n && p},true);
  return result ? options.fn(this) : options.inverse(this);
});

Handlebars.registerHelper('ifnAll', function(/*args*/) {
  var args = Array.prototype.slice.call(arguments);
  var options = args.pop();
  var result = args.reduce(function(p,n){return !!(n && p)},true);
  return result ? options.fn(this) : options.inverse(this);
});

Handlebars.registerHelper('ifEqual', function(v1, v2, options) {
  if(v1 === v2) return options.fn(this);
  return options.inverse(this);
});

Handlebars.registerHelper('debug', function() {
  console.log('Current Context');
  console.log('====================');
  console.log(this);
});

Handlebars.registerHelper('echo', function(a) {
  return a;
});

Handlebars.registerHelper('toFixed', function(n, p) {
  return n.toFixed(p)
});

Handlebars.registerHelper('repeat', function(toRepeat, length) {
  if (length.length) length = length.length;
  var string = '';
  while (string.length < length) {
    string += toRepeat;
  }
  return print(string.substr(0, length));
});


