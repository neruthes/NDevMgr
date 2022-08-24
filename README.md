# NDevMgr

## Introduction

This specification describe the naming of devices.

## Device Name Structure

### AbbrName

| Component         | Description                                                           |
| ----------------- | --------------------------------------------------------------------- |
| Header            | Static string "N".                                                    |
| CategoryIndicator | "D" for normal device. "E" for extensive device (eg keyboard).        |
| TypeIndicator     | Described in section "Component: TypeIndicator".                      |
| Sequence          | The sequence of adoption of the device, within the scope of the type. |

### FullName

| Component         | Description                                                           |
| ----------------- | --------------------------------------------------------------------- |
| Header            | Static string "N".                                                    |
| CategoryIndicator | "Dev" for normal device. "DevExt" for extensive device (eg keyboard). |
| TypeIndicator     | Described in section "TypeIndicator".                                 |
| Sequence          | The sequence of adoption of the device, within the scope of the type. |
| Hyphen1           | Static string "-".                                                    |
| Nickname          | Described in section "Component: Nickname"                            |


### Examples

| AbbrName | FullName       | Description                                                                  |
| -------- | -------------- | ---------------------------------------------------------------------------- |
| NDLT7    | NDevLT6-Sirius | Laptop #7, with nickname "Sirius". Xiaomi, Mi Laptop Pro, Y2019, SCR 15.6in. |
| NDMT6    | NDevMT6-Paris  | Mobiletop #6, with nickname "Paris". Apple, iPhone 8.                        |
| NEKb1    | NDevExtKb1     | Keyboard #1.                                                                 |

## Component: TypeIndicator

Un type of device is identified by the TypeIndc.

| TypeIndicator | Description                         |
| ------------- | ----------------------------------- |
| LT            | Laptop.                             |
| MT            | Cellphone & Tablet.                 |
| GC            | Gaming Console.                     |
| PS            | Physical Server.                    |
| VS            | Virtual Server.                     |
| VM            | Virtual Machine.                    |
| DT            | Donald Trump.                       |
| NS            | Network storage server.             |
| CM            | Camera.                             |
| Kb            | Keyboard.                           |
| Mo            | Mouse.                              |
| Sc            | Screen. Monitor ou TV ou Projector. |
| Hp            | Headphones.                         |
| Sp            | Speaker.                            |
| Ed            | Extension Dock.                     |
| Ch            | Charger.                            |
| Ba            | Battery.                            |
| Pd            | Portable Drive.                     |
| Wd            | Wearable device.                    |
| XX            | Uncategorized.                      |

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

The "Name" field should be like `NDev-NDLT7`.

The "Email" field should be `ndev.ndlt7@neruthes.xyz`.

### NTGE Device Public Key

The "Name" field should be like `NDLT7`.

## Device List

### LT

| AbbrName | FullName           | Status       | Description                               |
| -------- | ------------------ | ------------ | ----------------------------------------- |
| NDLT2    | NDevLT2            | Sealed       | Apple, MacBook Pro, Y2010, SCR 13.3in.    |
| NDLT3    | NDevLT3            | Sold         | Apple, MacBook Pro, Y2013, SCR 15.4in.    |
| NDLT4    | NDevLT4-Arcturus   | Sold         | Apple, MacBook Pro, Y2014, SCR 15.4in.    |
| NDLT5    | NDevLT5-Malfurion  | NeverWasMine | Apple, MacBook Pro, Y2015, SCR 15.4in.    |
| NDLT6    | NDevLT6-Betelgeuse | Active       | Apple, MacBook Pro, Y2015, SCR 15.4in.    |
| NDLT7    | NDevLT7-Sirius     | Active       | Xiaomi, Mi Laptop Pro, Y2019, SCR 15.6in. |

### MT

| AbbrName | FullName          | Status | Description                     |
| -------- | ----------------- | ------ | ------------------------------- |
| NDMT1    | NDevMT1           | Sealed | Apple, iPod touch G3.           |
| NDMT2    | NDevMT2           | Lost   | Apple, iPad G3, Y2012.          |
| NDMT3    | NDevMT3-Roseville | Broken | Apple, iPhone 5c.               |
| NDMT4    | NDevMT4-Rome      | Sold   | Apple, iPod touch, Y2016.       |
| NDMT5    | NDevMT5-Athens    | Sealed | Apple, iPhone SE.               |
| NDMT6    | NDevMT6-Paris     | Active | Apple, iPhone 8.                |
| NDMT7    | NDevMT7-Busan     | Sold   | Apple, iPad, Y2018.             |
| NDMT8    | NDevMT8-Wuhan     | Active | Apple, iPad Air 4, Y2020.       |
| NDMT9    | NDevMT9-Cupertino | Active | Xiaomi, Redmi K30 Ultra, Y2019. |

### PS

| AbbrName | FullName       | Status | Description      |
| -------- | -------------- | ------ | ---------------- |
| NDPS1    | NDevPS1-Medivh | Sealed | HP, T630, Y2020. |

### OS Naming

| Name     | Description                   |
| -------- | ----------------------------- |
| NDLT6    | Mac OS X 10.13.6 High Sierra. |
| NDLTG    | Gentoo.                       |
| NDLT7    | Gentoo.                       |
| NDLT7W   | Windows 10.                   |
| NDLT7WsA | WSL, AOSC OS 7 Gumblex.       |
| NDLT7WsU | WSL, Ubuntu 20.04.            |
| NEPd3A   | AOSC OS 7 Gumblex.            |


### Miscellaneous

| AbbrName | FullName | Status | Description                                  |
| -------- | -------- | ------ | -------------------------------------------- |
| NDRT1    | NDevRT1  | Active | Redmi, Router AX5, Y2020.                    |
| NDCM2    | NDevCM2  | Active | SONY, NEX-5R.                                |
| NDGC1    | NDevGC1  | Active | Sony, PlayStation 5 (without Optical Drive). |


## LAN DHCP

Scope: NDRT1 in MikroTik.

| AbbrName | IP           |
| -------- | ------------ |
| NDLT6    | 10.0.233.126 |
| NDLT7    | 10.0.233.127 |
| NDMT8    | 10.0.233.148 |
| NDMT9    | 10.0.233.149 |

## SSH Keys

Refer to `/ssh` directory.
