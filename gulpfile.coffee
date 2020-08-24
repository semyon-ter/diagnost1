#npm install gulp gulp-stylus gulp-util gulp-concat gulp-jade-php


gulp    = require('gulp');
stylus  = require('gulp-stylus');
gutil   = require('gulp-util');
concat  = require('gulp-concat');
jade    = require('gulp-jade-php');
coffeescript  = require('gulp-coffee');


gulp.task 'watch', ()->
  gulp.watch 'src/css/**/*.styl', gulp.series('stylus')
  gulp.watch 'src/jade/**/*.jade', gulp.series('jade')
  gulp.watch 'src/coffee/**/*.coffee', gulp.series('coffee_admin')


# JADE
gulp.task 'jade', ->
  gulp.src('src/jade/**/*.jade')
  .pipe(jade({pretty:'\t'}))
  .pipe(gulp.dest('html/'))

# STYLUS
gulp.task 'stylus', ()->
  gulp.src('src/stylus/style.styl').pipe(stylus({compress:true})).pipe(gulp.dest('./'))

# COFFEE SCRIPT
gulp.task 'coffee_admin', ()->
  gulp.src 'src/coffee/**/*.coffee'
  .pipe(coffeescript({bare:true})).on('error',gutil.log)
  .pipe(concat('all.js'))
  .pipe(gulp.dest('js'))