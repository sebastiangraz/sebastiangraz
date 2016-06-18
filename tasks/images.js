var gulp       = require('gulp');
var fs = require('fs');
var config = JSON.parse(fs.readFileSync('./config.json'));

var source_dir = config.src_dir + config.images.src_dir;
var dest_dir = config.dest_dir + config.images.dest_dir;

gulp.task('images', gulp.series(function(done) {
  gulp.src(source_dir + '**/*')
    .pipe(gulp.dest(dest_dir));
  done();
}));
