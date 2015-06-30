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
  robot.hear /forever (.*)/i, (res) ->

   	alone = res.match[1]
    res.send "I'm so lonely!"
   	#res.send "/giphy forever " + alone + ""

  robot.hear /hello/i, (res) ->

    res.send "Hello " + res.message.user.name + "! Lets be friends!"
