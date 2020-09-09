var concat, gulp, gutil, jade, stylus, coffeescript;

gulp = require('gulp');

stylus = require('gulp-stylus');

gutil = require('gulp-util');

concat = require('gulp-concat');

jade = require('gulp-jade-php');

coffeescript = require('gulp-coffee');

gulp.task('watch', function() {
  gulp.watch('src/stylus/**/*.styl', gulp.series('stylus'));
  gulp.watch('src/jade/**/*.jade', gulp.series('jade'));
  return gulp.watch('src/coffee/**/*.coffee', gulp.series('coffee_admin'));
});

gulp.task('jade', function() {
  return gulp.src('src/jade/**/*.jade').pipe(jade({pretty:'\t'})).pipe(gulp.dest('html/'));
});

gulp.task('stylus', function() {
  return gulp.src('src/stylus/style.styl').pipe(stylus({
    compress: false
  })).pipe(gulp.dest('./'));
});

gulp.task('coffee_admin', function() {
  return gulp.src('src/coffee/**/*.coffee').pipe(coffeescript({
    bare: true
  })).on('error', gutil.log).pipe(concat('all.js')).pipe(gulp.dest('js'));
});