module.exports = function (grunt) {
  'use strict'

  grunt.initConfig({
    accessibility: {
      options: {
        accessibilityLevel: 'WCAG2A'
      },
      test: {
        src: ['./_site/**/*.html']
      }
    }
  })

  grunt.loadNpmTasks('grunt-accessibility')
  grunt.registerTask('default', ['accessibility'])
}
