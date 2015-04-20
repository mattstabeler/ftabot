# Description:
#   If you say this, then FTAbot will also say something.
#
# Notes:
#
#
#
#
#

module.exports = (robot) ->
  robot.respond /build (.*) (.*)/i, (res) ->

   	buildProj = res.match[1]
   	buildEnv = res.match[2]

   	projects = ["MIAP", "TemplateManager"]
   	envs = ["LIVE", "TEST", "DEV"]

   	if buildEnv in envs and buildProj in projects
	   	res.send "Building the #{buildEnv} environment for #{buildProj}!"

  robot.respond /hello/i, (res) ->

    res.send "Hello! Lets be friends!"



