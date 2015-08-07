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

   	projects = ["CBUI-CORE"]
   	envs = ["LIVE", "TEST", "DEV"]

   	if buildEnv in envs and buildProj in projects
	   	res.send "Building the #{buildEnv} environment for #{buildProj}!"

  robot.respond /hello/i, (res) ->

    res.send "Hello " + res.message.user.name + "! Lets be friends!"

  robot.hear /debug/i, (res) ->

    console.log(res);

    res.send "Debug"

  robot.hear /fuck you/i, (res) ->

    res.send "Im sorry you feel that way :("

  robot.hear /damn you/i, (res) ->

    res.send "Im sorry you feel that way :("
