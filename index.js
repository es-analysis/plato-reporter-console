
var fs = require('fs');
var path = require('path');

var async = require('async');

var Handlebars = require('./handlebars');

var templateDir = 'templates';
var templateExt = '.hb';

module.exports = function(config, batch, reports, logger, done) {
  config = config || {};
  
  function loadTemplates(reportTypes, done) {
    var loadFns = reportTypes.map(function(reportType) {
      return function(cb) {
        var baseDir = config.baseDir || templateDir;
        var template = config.templates && config.templates[reportType] || 
                       path.join(__dirname, baseDir, reportType + templateExt);
        logger.silly('reading template file %s', template);
        fs.readFile(template, 'utf8', function(err, source){
          if (err) return cb(err);
          logger.silly('successfully read file %s', template);
          cb(null, {
            id : reportType,
            source : source
          });
        })
      }
    });
    async.parallel(loadFns, done);
  }

  var templates = ['main'].concat(Object.keys(batch.reports));
  
  loadTemplates(templates, function(err, templateSources) {
    if (err) return done('error reading templates: ' + err);
    
    var main = templateSources.shift();
    var tmpl = Handlebars.compile(main.source);
    templateSources.forEach(function(template) {
      logger.silly('registering partial for report %s', template.id);
      Handlebars.registerPartial(template.id, Handlebars.compile(template.source));
    });

    var data = {batch: batch, reports: reports, partials: Object.keys(batch.reports)};
    var output = tmpl(data);
    done(null, output);
  });
};
