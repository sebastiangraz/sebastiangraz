var gulp       = require('gulp');
var del        = require('del');
var fs = require('fs');
var config = JSON.parse(fs.readFileSync('./config.json'));
var dest_dir = config.dest_dir;

gulp.task('clean', function(done) {
    del(dest_dir, done());
});
