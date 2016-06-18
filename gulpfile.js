var gulp       = require('gulp');
var requireDir = require('require-dir');

// Import tasks
requireDir('./tasks');

// Default task
gulp.task('default', gulp.series('clean', 'templates', 'styles', 'scripts', 'fonts', 'images' ,'watch', function(done) {
    // default task code here
    console.log('finished build');
    done();
}));
