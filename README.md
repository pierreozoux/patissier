Patissier
=========

Patissier is a set of tool to ease the provisioning of a Raspberry. Why patissier? Because chef will cook the Raspberry!

Here is written the goal of this repo, it is now in dev mode.

Scenarios:
----------
 - choose a set of recipes to apply to your RasPi (based on a text file 1st and then thou a web interface)
 - you want to recook your RasPi
  - update your recipe
  - cook from scratch
 - Create a base RaspChef SD card

How?
----

### Triple partition scheme

* A boot partition that contain the `bios` features - We call this partition `boot`
* A base partition with a `chef` installed  - We call this partition `RaspChef`
* An `other` partition that we will cook - We call this partition `CookedPartition`

### Dual boot

Based on a `bash` script, we have the possibility to switch from one partition to another one.

### Partitions comunicate together

With a simple Berksfile placed in the `boot`, the 2 partitions can communicate together.

To Do
-----

* Bash script `boot_partition`
** Take 1 argument : the partition to boot for the next reboot
* script : `prepare_partition` (with a chef recipe?)
** This script will prepare the partiion
** Debootstrap
** Install chef and the basics
* script : `cook_partition`
** 1 argument : Berksfile
** Aplly all the recipe from this Berksfile to the new partition in chroot
* script : `pastry-chef`
** The script that will start at boot of the `RaspChef`
** Chek if it has to cook (thou a comment in the Berksfile?)
*** If yes, launch `cook_partition`, then `boot_partition` and reboot in `CookedPartition`
*** If not, launch `boot_partition` and reboot in `CookedPartition`
