# NDevMgr

## Introduction

## Device Name Structure

### AbbrName

Structure:

Component               | Description
----------------------- | -----------
Header                  | Static string "N".
CategoryIndicator       | "D" for normal device. "E" for extensive device (eg keyboard).
TypeIndicator           | Described in section "Component: TypeIndicator".
Sequence                | The sequence of adoption of the device, within the scope of the type.

### FullName

Structure:

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
NDLT6               | NDevLT6-Sirius            | Laptop #6, with nickname "Sirius". Xiaomi Mibook Pro 2019 15i.
NDMT7               | NDevMT7-Paris             | Mobiletop #7, with nickname "Paris". Apple iPhone 8.
NEKb1               | NDevExtKb1                | Keyboard #1.

## Component: TypeIndicator

Un type of device is identified by the TypeIndc.

TypeIndicator       | Description
------------------- | -----------
LT                  | Laptop.
MT                  | Mobiletop.
DT                  | Donald Trump.
NS                  | Network storage server.
Kb                  | Keyboard.
Mo                  | Mouse.
Sc                  | Screen. Monitor ou TV ou Projector.
Hp                  | Headphones.
Sp                  | Speaker.
Ed                  | Extension Dock.
Ch                  | Charger.

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
NDLT6               | NDevLT5-Betelgeuse        | Active            | Apple, MacBook Pro, Y2015, SCR 15.4in.
NDLT7               | NDevLT7-Sirius            | Active            | Xiaomi, MiBook Pro, Y2019, SCR 15.6in.

### MT

AbbrName            | FullName                  | Status            | Description
------------------- | ------------------------- | ----------------- | -----------
NDMT1               | NDevMT1                   | Sealed            | Apple, iPod touch G3.
NDMT2               | NDevMT2                   | Lost              | Apple, iPad G3, Y2012.
NDMT3               | NDevMT3                   | Broken            | Apple, iPhone 5c
NDMT4               | NDevMT4-Roseville         | Sold              | Apple, iPod touch
NDMT5               | NDevMT5-Rome              | Sealed            | Apple, iPhone SE
NDMT6               | NDevMT6-Athens            | Active            | Apple, iPhone 8
NDMT7               | NDevMT7-Busan             | Active            | Apple, iPad, Y2018, SCR 9.7in.

### Miscellaneous

AbbrName            | FullName                  | Status            | Description
------------------- | ------------------------- | ----------------- | -----------
NEKb2               | NDevExtKb1                | Active            | Colorfly, Single-Hand Gaming Keyboard, Y2018.
NEKb3               | NDevExtKb2                | Active            | Apple, Magic Keyboard, Y2019.
NEMo3               | NDevExtMo3                | Active            | SteelSeries, Sensei 310, Y2018.
NEHp1               | NDevExtHp1                | Active            | AKG, K450, Y2014.
NEHp2               | NDevExtHp2                | Active            | Apple, EarPods (iPhone 8), Y2018.
NEHp3               | NDevExtHp3                | Active            | Apple, AirPods, Y2019.
NEHp4               | NDevExtHp4                | Active            | Xiaomi, Redmi AirDots S, Y2020.
NESp1               | NDevExtSp1                | Active            | Xiaomi, UntitledModel, Y2020.
