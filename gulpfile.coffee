gulp = require 'gulp'
clean = require 'gulp-clean'
bowerFiles = require 'main-bower-files'
typescript = require 'gulp-tsc'

paths = {
  scripts: 'src/typescript/**/*.ts'
  dest: 'grails-app/assets/compiled-javascripts'
  vendorDest: 'grails-app/assets/vendor'
}

gulp.task 'default', ['build']

gulp.task 'copy-dependencies', ['clean-dependencies'], ->
  gulp.src bowerFiles()
    .pipe(gulp.dest paths.vendorDest)

gulp.task 'clean-dependencies', ->
  gulp.src(paths.vendorDest, { read: false })
    .pipe(clean())

gulp.task 'compile', ['clean'], ->
  gulp.src paths.scripts
    .pipe(typescript { emitError: false, noImplicitAny: true })
    .pipe(gulp.dest paths.dest)

gulp.task 'clean', ->
  gulp.src(paths.dest, { read: false })
    .pipe(clean())

gulp.task 'watch', ->
  gulp.run('build')
  gulp.watch(paths.scripts, ['compile'])
  gulp.watch('bower.json', ['copy-dependencies'])

gulp.task 'build', ['compile', 'copy-dependencies']
