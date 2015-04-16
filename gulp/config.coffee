module.exports = {
  browserSync:
    port: 4567
    server:
      baseDir: './build'
  browserify: [
    {
      input      : ['./source/javascripts/main.js']
      output     : 'main.js'
      extensions : ['.js']
      destination: './build/javascripts/'
    }
  ]
  watch:
    sass: './source/stylesheets/**/*.scss'
    css: './source/stylesheets/**/*.css'
  compass:
    design: {
      src: './source/stylesheets/style.scss'
      css: 'source/stylesheets'
      sass: 'source/stylesheets'
    }
    development: {
      src: './source/stylesheets/development.scss'
      css: 'source/stylesheets'
      sass: 'source/stylesheets'
    }
  jsLibConcat:
    name: 'lib.js'
    srcs: [
      './bower_components/react/react-with-addons.js'
      './bower_components/lodash/dist/lodash.js'
      './bower_components/jquery/dist/jquery.js'
      './bower_components/velocity/jquery.velocity.js'
      './bower_components/jquery.easing/js/jquery.easing.js'
      './bower_components/lo/lo.js'
    ]
    dest: './build/javascripts/'
  cssConcat:
    name: 'all.css'
    srcs: [
      './source/stylesheets/sanitize.css'
      './source/stylesheets/style.css'
      './source/stylesheets/development.css'
    ]
    dest: './build/stylesheets/'
}

