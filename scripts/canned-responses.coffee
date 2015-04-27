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

    res.send "Hello " + res.message.user.name + "! Lets be friends!"

  robot.hear /agile/i, (res) ->

    res.send "Are you sure it's not WAGILE?!"

  robot.hear /debug/i, (res) ->

    console.log(res);

    res.send "Debug"

  robot.hear /scrum/i, (res) ->

    res.send "Preparing for SCRUMerfall..."
    
  robot.hear /drunk/i, (res) ->
  	
  	res.send "Are you doosdronk?"
