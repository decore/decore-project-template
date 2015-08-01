gutil = require 'gulp-util'

module.exports = (error) ->
	gutil.log [
		(error.name + ' in ' + error.plugin).bold.red,
		'',
		error.message,
		''
	].join '\n'

	# Run with `--mute`
	if !gutil.env.mute
		gutil.mute()

	# Keep gulp from hanging on this task
	this.emit 'end'
