# VagrantForNode
A minimal Vagrant sandbox for Node and MongoDB development

## Features from Vagrant:
1. Edit client and server code in your favorite tools in your host OS
2. Keep all configuration isolated to the virtual machine. EX: version of node, mongodb configuration, global npm packages. No leakage into other projects!

## Special Sauce from this Project
1. Run mongoDB, node and node-inspector as services on the Guest OS and expose to Host OS

# Getting started

## Install VirtualBox
https://www.virtualbox.org/<br/>
tested with 4.3.12 with Windows as the Host OS

## Install Vagrant
https://www.vagrantup.com/<br/>
tested with 1.7.2

## Start Up Vagrant
1. Clone this project
2. Open a terminal or CMD window to the repo directory
3. host &gt; vagrant up   # coffee break?
4. Browse to http://localhost:33000/yo
5. You should see a hello message
6. Browse to http://localhost:8080/debug?port=5858
7. You should see node-inspector
8. host &gt; vagrant ssh
9. guest &gt; mongo
10. You should see the CLI for mongoDB  # exit
11. From the host OS edit app.js so the yo route says something else
12. Refresh the browser and note that the message didn't change
13. guest &gt; sudo restart app
14. Refresh the browser and note that the message did change


# TODOs
1. Supply a web based interface to mongoDB
2. run nodemon instead of node
