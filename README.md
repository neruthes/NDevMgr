# NDevMgr

## Introduction

This specification describe the naming of devices.

## Device Name Structure

### AbbrName

Component               | Description
----------------------- | -----------
Header                  | Static string "N".
CategoryIndicator       | "D" for normal device. "E" for extensive device (eg keyboard).
TypeIndicator           | Described in section "Component: TypeIndicator".
Sequence                | The sequence of adoption of the device, within the scope of the type.

### FullName

Component               | Description
----------------------- | -----------
Header                  | Static string "N".
CategoryIndicator       | "Dev" for normal device. "DevExt" for extensive device (eg keyboard).
TypeIndicator           | Described in section "TypeIndicator".
Sequence                | The sequence of adoption of the device, within the scope of the type.
Hyphen1                 | Static string "-".
Nickname                | Described in section "Component: Nickname"


### Examples

AbbrName            | FullName                  | Description
------------------- | ------------------------- | -----------
NDLT7               | NDevLT6-Sirius            | Laptop #7, with nickname "Sirius". Xiaomi, Mi Laptop Pro, Y2019, SCR 15.6in.
NDMT6               | NDevMT6-Paris             | Mobiletop #6, with nickname "Paris". Apple, iPhone 8.
NEKb1               | NDevExtKb1                | Keyboard #1.

## Component: TypeIndicator

Un type of device is identified by the TypeIndc.

TypeIndicator       | Description
------------------- | -----------
LT                  | Laptop.
MT                  | Mobiletop.
PS                  | Physical Server.
VS                  | Virtual Server.
VM                  | Virtual Machine.
DT                  | Donald Trump.
NS                  | Network storage server.
CM                  | Camera.
Kb                  | Keyboard.
Mo                  | Mouse.
Sc                  | Screen. Monitor ou TV ou Projector.
Hp                  | Headphones.
Sp                  | Speaker.
Ed                  | Extension Dock.
Ch                  | Charger.
Ba                  | Battery.
Pd                  | Portable Drive.
Wd                  | Wearable device.
XX                  | Uncategorized.

Generally, if the device can be used alone, it should not be considered un extensive device and the seq 2 character of its TypeIndicator should be uppercase.

## Component: Nickname

### Overview

Un device may have un nickname if the type is LT ou MT ou Pd.

### LT

The nickname should be un name of un star.

### MT

The nickname should be un name of un municipality.

### PS

The nickname should be un name of un character in WarCraft.

### Pd

The nickname should be selected among [ Saber, Archer, Rider, Lancer, Caster, Assassin, Berserker ].

## Adoptions

### Hostname

The hostname of un device should be its AbbrName.

### OpenPGP Device Public Key

The "Name" field should be like `NDev-NDLT7W`.

The "Email" field should be `ndev.ndlt7w@neruthes.xyz`.

### NTGE Device Public Key

The "Name" field should be like `NDLT7W`.

## Device List

### LT

AbbrName            | FullName                  | Status            | Description
------------------- | ------------------------- | ----------------- | -----------
NDLT2               | NDevLT2                   | Sealed            | Apple, MacBook Pro, Y2010, SCR 13.3in.
NDLT3               | NDevLT3                   | Sold              | Apple, MacBook Pro, Y2013, SCR 15.4in.
NDLT4               | NDevLT4-Arcturus          | Sold              | Apple, MacBook Pro, Y2014, SCR 15.4in.
NDLT5               | NDevLT5-Malfurion         | NeverWasMine      | Apple, MacBook Pro, Y2015, SCR 15.4in.
NDLT6               | NDevLT6-Betelgeuse        | Active            | Apple, MacBook Pro, Y2015, SCR 15.4in.
NDLT7               | NDevLT7-Sirius            | Active            | Xiaomi, Mi Laptop Pro, Y2019, SCR 15.6in.

### MT

AbbrName            | FullName                  | Status            | Description
------------------- | ------------------------- | ----------------- | -----------
NDMT1               | NDevMT1                   | Sealed            | Apple, iPod touch G3.
NDMT2               | NDevMT2                   | Lost              | Apple, iPad G3, Y2012.
NDMT3               | NDevMT3-Roseville         | Broken            | Apple, iPhone 5c.
NDMT4               | NDevMT4-Rome              | Sold              | Apple, iPod touch, Y2016.
NDMT5               | NDevMT5-Athens            | Sealed            | Apple, iPhone SE.
NDMT6               | NDevMT6-Paris             | Active            | Apple, iPhone 8.
NDMT7               | NDevMT7-Busan             | Sold              | Apple, iPad, Y2018.
NDMT8               | NDevMT8-Wuhan             | Active            | Apple, iPad Air 4, Y2020.
NDMT9               | NDevMT9-Cupertino         | Active            | Xiaomi, Redmi K30 Ultra, Y2019.

### PS

AbbrName            | FullName                  | Status            | Description
------------------- | ------------------------- | ----------------- | -----------
NDPS1               | NDevPS1-Medivh            | Sealed            | HP, T630, Y2020.

### OS Naming

Name                            | Description
------------------------------- | -----------
NDLT6                           | Mac OS X 10.13.6 High Sierra.
NDLT7                           | Gentoo.
NDLT7W                          | Windows 10.
NDLT7WsA                        | WSL, AOSC OS 7 Gumblex.
NDLT7WsU                        | WSL, Ubuntu 20.04.
NEPd3A                          | AOSC OS 7 Gumblex.

### Virtual Machines

Name                            | Host                              | Description
------------------------------- | --------------------------------- | -----------
NDVM1                           | NDLT7                             | AOSC OS.
NDVM2                           | NDLT7                             | Ubuntu 20.04.
NDVM3                           | NDLT7                             | AOSC OS (Retro).
NDVM4                           | NDLT7                             | AOSCLive.
NDVM5                           | NDLT7                             | Playground, EFI.
NDVM6                           | NDLT7                             | Playground, BIOS.
NDVM7                           | NDLT7                             | Windows Vista.
NDVM8                           | NDLT7                             | Void Linux.

### Miscellaneous

AbbrName            | FullName                  | Status            | Description
------------------- | ------------------------- | ----------------- | -----------
NDRT1               | NDevRT1                   | Active            | Redmi, Router AX5, Y2020.
NDCM2               | NDevCM2                   | Active            | SONY, NEX-5R.
NEKb2               | NDevExtKb2                | Active            | Dulex, Single-Hand Gaming Keyboard, Y2018.
NEKb3               | NDevExtKb3                | Broken            | Apple, Magic Keyboard, Y2019.
NEKb4               | NDevExtKb4                | Active            | Jingdong, Keychron K2, Y2020.
NEKb5               | NDevExtKb5                | Active            | Amork, Designed for iPad, Y2020.
NEKb6               | NDevExtKb6                | Active            | Xiaomi, Wireless Keyboard Combo Set, Y2020.
NEMo3               | NDevExtMo3                | Active            | SteelSeries, Sensei 310, Y2018.
NEMo4               | NDevExtMo4                | Active            | Xiaomi, Wireless Mouse, Y2020.
NEMo5               | NDevExtMo5                | Active            | SteelSeries, Rival 310, Y2020.
NEHp1               | NDevExtHp1                | Active            | AKG, K450, Y2014.
NEHp2               | NDevExtHp2                | Active            | Apple, EarPods (iPhone 8), Y2018.
NEHp3               | NDevExtHp3                | Lost              | Apple, AirPods, Y2019.
NEHp4               | NDevExtHp4                | Active            | Xiaomi, Redmi AirDots S, Y2020.
NESp1               | NDevExtSp1                | Active            | Xiaomi, SteelGun, Y2020.
NESp2               | NDevExtSp2                | Active            | Edifier, Stereo, Y2020.
NESp3               | NDevExtSp3                | Active            | Edifier, M380, Y2020.
NEPd1               | NDevExtPd1                | Lost              | Seagate, Mass USB HDD, 1TB. Nickname "Saber".
NEPd2               | NDevExtPd2                | Active            | WD, Mass USB HDD "My Passport", 2TB. Nickname "Archer".
NEPd3               | NDevExtPd3                | Active            | Toshiba, P300, 3TB. Nickname "Caster".
NECh1               | NDevExtCh1                | Broken            | Apple, MagSafe, 85W.
NECh2               | NDevExtCh2                | Active            | Apple, MagSafe, 85W.
NECh3               | NDevExtCh3                | Active            | NetEase, 4 USB.
NECh4               | NDevExtCh4                | Active            | Xiaomi, USB Type-C PD, 65W.
NECh5               | NDevExtCh5                | Active            | Xiaomi, Design for MiBand 4.
NECh6               | NDevExtCh6                | Active            | Xiaomi, Design for MiBand 4.
NECh7               | NDevExtCh7                | Active            | Xiaomi, Standing Wireless Charger, 20W.
NECh8               | NDevExtCh8                | Active            | DSTE, Designed For SONY NP-FW50 Battery.
NECh9               | NDevExtCh9                | Active            | Baseus, PD 3.0, 120 W.
NEBa1               | NDevExtBa1                | Active            | MiPOW, Square Mobile Battery.
NEBa2               | NDevExtBa2                | Active            | Philips, Wireless Mobile Battery.
NEBa3               | NDevExtBa3                | Active            | Guaishou, Multi-Cable Mobile Battery.
NEBa4               | NDevExtBa4                | Active            | SONY, NP-FW50, Designed For SONY Camera.
NEBa5               | NDevExtBa5                | Active            | Unknown Manufacturer, Alt For NP-FW50, Designed For SONY Camera.

## LAN DHCP

Scope: NDRT1 in MikroTik.

Allocation Strategy:

From                | To                        | Definition
------------------- | ------------------------- | -------------
2                   | 254                       | DHCP.

AbbrName            | IP                 
------------------- | -----------------------
NDLT6               | 10.0.233.26
NDLT7               | 10.0.233.27
NDMT8               | 10.0.233.48
NDMT9               | 10.0.233.49

## SSH Keys
Algorithm   | Public Key                                                            | Hostname
----------- | --------------------------------------------------------------------- | --------
ssh-ed25519 | AAAAC3NzaC1lZDI1NTE5AAAAIPxF1rweNbxf3Qbsv/IVwkdF5EU2WsNNvBR78P0V0+9e  | NDLT6
ssh-ed25519 | AAAAC3NzaC1lZDI1NTE5AAAAIPoPvHErCcKsYF3BrPdfmwgRICsx2XMl1fN9I3Jg1pPA  | NDLT7
ssh-ed25519 | AAAAC3NzaC1lZDI1NTE5AAAAIPkaNESM5YMEvQRN00MHNJH/SNfcjn9KJxuV/jwUveRH  | NDLT7W
ssh-ed25519 | AAAAC3NzaC1lZDI1NTE5AAAAIOQ4vSHP5RqsjNg8tImBFvIKKoSjD9ILgma6oh/Dw3PF  | NDMT7
ssh-ed25519 | AAAAC3NzaC1lZDI1NTE5AAAAIEtVWrLCyAC897SxMCqNOvuh8sc6QiJH6sPsSMxdjXAA  | NDMT8
