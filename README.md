# Instructions
  
This suite is broken down into various module commands based on the
kinds of commands that you might need to perform on your Linux
system. The commands are named such that their overall purpose is
clear, but will contain further comments that clarify their usage
within the modules themselves. 

# Installation
This suite requires the installation of some dependencies that may not
already be present on your Linux system. The `install.sh` script will
add them to your system, but you should review the list carefully
prior to installation. The list includes the following:

- bmon
- traceroute

# Package management
Package management is best handled by the system's built in package
manager. In this case of Ubuntu, packages can be added with the
command `apt install <package_name>` packages can be removed with the
command `apt remove <package_name>` updates can be performed by first
updating repositories with `apt update` and then updating packages
with `apt upgrade`. Apt is a fully featured package management system
that needs little supplement to perform package management tasks
ranging from the trivial to the most complex.
