# Intune for Archlinux

There are two levels of Intune Setup. 

After installing level-1, you can access everything with certificate copied from a level-2 machine.   
After installing level-2, you can actually enroll the machine. 

## Install Level-1

1. Install 

## Install Level-2 and enroll

> Installing level-2 components will make your machine managed. You must satisfy password requirements, and disk-encryption requirements. 

TBD

<!--
1. install intune-portal and its dependencies (pwquality)
2. copy /etc/os-release from ubuntu 2004 to archlinux
3. make sure you followed procedure of official doc
-->

## Move certificates from Level-2 machine to Level-1 machine

Copy the following files from enrolled Level-2 machine to unenrolled Level-1 machine: 

```
/var/lib/msft-identity-device-broker/1000.db
/etc/machine-id
/etc/os-release # Note: this is a symbol-link in ubuntu
/home/YourName/.config/msft-identity-broker/account-data.db
/home/YourName/.config/msft-identity-broker/broker-data.db
/home/YourName/.config/msft-identity-broker/cookies.db
/home/YourName/.local/share/keyrings/login.keyring
```

Reboot, and your level-1 machine can access CORPNET resources! 

