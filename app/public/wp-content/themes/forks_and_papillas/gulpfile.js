//JS
var gulp = require("gulp");
const { src, dest, watch, series, parallel } = require("gulp");

// Requires plugin
// var livereload = require('gulp-livereload');
var sass = require("gulp-sass");
var uglify = require("gulp-uglify");
var cssmin = require("gulp-cssmin");
const sourcemaps = require("gulp-sourcemaps");
const concat = require("gulp-concat");
const postcss = require("gulp-postcss");
const autoprefixer = require("autoprefixer");
const cssnano = require("cssnano");
const babel = require("gulp-babel");
const browserSync = require("browser-sync").create();


const files = {
  scssPath: "./scss/styles.scss",
  scssGlobalPath: "scss/**/*.scss",
  jsPath: "./js/scripts/**/*.js",

};

//SASS
function scssTask() {
  return src(files.scssPath)
    .pipe(sourcemaps.init()) // initialize sourcemaps first
    .pipe(sass().on("error", sass.logError))
    .pipe(postcss([autoprefixer(), cssnano()]))
    .pipe(sourcemaps.write(".")) // write SM file in current directory
    .pipe(dest("./css"));
}

function jsTask() {
  return gulp
    .src(files.jsPath)
    .pipe(sourcemaps.init())
    .pipe(
      babel({
        presets: ["@babel/preset-env"],
      })
    )
    .pipe(concat("all.min.js"))
    .pipe(uglify())
    .pipe(sourcemaps.write("."))
    .pipe(gulp.dest("./js"))
    .pipe(
      browserSync.stream({
        stream: true,
      })
    );
}

function watchTask() {
  watch(
    [files.scssGlobalPath, files.jsPath],
    {
      interval: 1000,
      usePolling: true,
    }, //Makes docker work
    series(parallel(scssTask, jsTask))
  );
}


// Export the default Gulp task so it can be run
// Runs the scss and js tasks simultaneously
// then runs cacheBust, then watch task


exports.default = series(parallel(scssTask, jsTask), watchTask);
