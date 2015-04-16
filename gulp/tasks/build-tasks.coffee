gulp = require 'gulp'
$ = require('gulp-load-plugins')()
runSequence = require 'run-sequence'

gulp.task 'local', ->
  global.isWatching = true
  global.isRelease = false

  runSequence 'js-lib-concat', 'browserify', 'compass', 'css-concat', 'browserSync', 'watch'

gulp.task 'product', ->
  global.isWatching = false
  global.isRelease = true

  runSequence 'js-lib-concat', 'browserify', 'compass', 'css-concat'
