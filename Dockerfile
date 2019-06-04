FROM ubuntu:18.04

LABEL "com.github.actions.name"="App Inventor Extension"
LABEL "com.github.actions.description"="Builds App Inventor extensions"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/pavi2410/AIX-Action"
LABEL "homepage"="http://github.com/pavi2410/AIX-Action"
LABEL "maintainer"="Pavitra"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
