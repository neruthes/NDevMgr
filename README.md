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
NDLT7               | NDevLT6-Sirius            | Laptop #7, with nickname "Sirius". Xiaomi Mibook Pro 2019 15i.
NDMT6               | NDevMT6-Paris             | Mobiletop #6, with nickname "Paris". Apple iPhone 8.
NEKb1               | NDevExtKb1                | Keyboard #1.

## Component: TypeIndicator

Un type of device is identified by the TypeIndc.

TypeIndicator       | Description
------------------- | -----------
LT                  | Laptop.
MT                  | Mobiletop.
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

Un device may have un nickname if the type is LT ou MT.

### LT

The nickname should be un name of un star.

### MT

The nickname should be un name of un municipality.

## Adoptions

### Hostname

The hostname of un device should be its AbbrName.

### OpenPGP Device Public Key

The "Name" field should be `NDev-${AbbrName}-${Nickname}`.

The "Email" field should be `ndev.${AbbrName.toLowerCase()}`.

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
NDMT7               | NDevMT7-Busan             | Active            | Apple, iPad, Y2018.

### OS Naming

Name                            | Description
------------------------------- | -----------
NDLT7-Sirius                    | AOSC OS.
NDLT7-Windows                   | Windows 10.
NDLT7-WSL-Ubuntu                | WSL, Ubuntu 20.04.
NEPd2-Ubuntu                    | Ubuntu 20.04.

### Miscellaneous

AbbrName            | FullName                  | Status            | Description
------------------- | ------------------------- | ----------------- | -----------
NDCM2               | NDevCM2                   | Active            | SONY, NEX-5R.
NEKb2               | NDevExtKb2                | Active            | Dulex, Single-Hand Gaming Keyboard, Y2018.
NEKb3               | NDevExtKb3                | Active            | Apple, Magic Keyboard, Y2019.
NEMo3               | NDevExtMo3                | Active            | SteelSeries, Sensei 310, Y2018.
NEHp1               | NDevExtHp1                | Active            | AKG, K450, Y2014.
NEHp2               | NDevExtHp2                | Active            | Apple, EarPods (iPhone 8), Y2018.
NEHp3               | NDevExtHp3                | Lost              | Apple, AirPods, Y2019.
NEHp4               | NDevExtHp4                | Active            | Xiaomi, Redmi AirDots S, Y2020.
NESp1               | NDevExtSp1                | Active            | Xiaomi, SteelGun, Y2020.
NESp2               | NDevExtSp2                | Active            | Edifier, Stereo, Y2020.
NEPd1               | NDevExtPd1                | Lost              | Seagate, Mass USB HDD, 1TB. Nickname "Saber".
NEPd2               | NDevExtPd2                | Active            | WD, Mass USB HDD "My Passport", 2TB. Nickname "Archer".
NECh1               | NDevExtCh1                | Broken            | Apple, MagSafe, 85W.
NECh2               | NDevExtCh2                | Active            | Apple, MagSafe, 85W.
NECh3               | NDevExtCh3                | Active            | NetEase, 4 USB.
NECh4               | NDevExtCh4                | Active            | Xiaomi, USB Type-C PD, 65W.
NECh5               | NDevExtCh5                | Active            | Xiaomi, Design for MiBand 4.
NECh6               | NDevExtCh6                | Active            | Xiaomi, Design for MiBand 4.
NECh7               | NDevExtCh7                | Active            | Xiaomi, Standing Wireless Charger, 20W.
NECh8               | NDevExtCh8                | Active            | DSTE, Designed For SONY NP-FW50 Battery.
NEBa1               | NDevExtBa1                | Active            | MiPOW, Square Mobile Battery.
NEBa2               | NDevExtBa2                | Active            | Philips, Wireless Mobile Battery.
NEBa3               | NDevExtBa3                | Active            | Guaishou, Multi-Cable Mobile Battery.
NEBa4               | NDevExtBa4                | Active            | SONY, NP-FW50, Designed For SONY Camera.
NEBa5               | NDevExtBa5                | Active            | Unknown Manufacturer, Alt For NP-FW50, Designed For SONY Camera.
