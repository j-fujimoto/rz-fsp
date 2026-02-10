## Overview

**This repository is used for early access to the next major release of FSP. Please understand that the next major release is under active development. This means you should expect issues and possible compatibility breaks in between versions. You can get the latest stable FSP release [here](https://github.com/renesas/rz-fsp).**

Flexible Software Package (FSP) for Renesas RZ.

FSP is the next generation Arm&reg; MPU software package from Renesas, that enables HMI devices and IoT connectivity through production ready peripheral drivers, Azure RTOS or FreeRTOS, and portable middleware stacks. FSP includes best-in-class HAL drivers with high performance and low memory footprint. Middleware stacks with Azure RTOS and FreeRTOS integration are included to ease implementation of complex modules like communication and security.
The e<sup>2</sup> studio IDE provides support with intuitive configurators and intelligent code generation to make programming and debugging easier and faster.

FSP uses an open software ecosystem and provides flexibility in using your preferred RTOS, legacy code, and third-party ecosystem solutions.

### Current Release

[FSP v4.0.0](https://github.com/renesas/rz-fsp/releases/tag/v4.0.0)

### Previous Release
* [RZ/A FSP](https://github.com/renesas/rza-fsp)
* [RZ/G FSP](https://github.com/renesas/rzg-fsp)
* [RZ/N FSP](https://github.com/renesas/rzn-fsp)
* [RZ/T FSP](https://github.com/renesas/rzt-fsp)
* [RZ/V FSP](https://github.com/renesas/rzv-fsp)

### Supported RZ MPU Kits

RZ/A series
* [RZ/A3UL Evaluation Board Kit](https://www.renesas.com/design-resources/boards-kits/rz-a3ul-evkit)
* [Evaluation Kit for RZ/A3M MPU](https://www.renesas.com/design-resources/boards-kits/ek-rz-a3m)

RZ/G series
* [Evaluation Board Kit for RZ/G2L MPU](https://www.renesas.com/design-resources/boards-kits/rz-g2l-evkit)
* [Evaluation Board Kit for RZ/G2LC MPU](https://www.renesas.com/design-resources/boards-kits/rz-g2lc-evkit)
* [Evaluation Board Kit for RZ/G2UL MPU](https://www.renesas.com/design-resources/boards-kits/rz-g2ul-evkit)
* [Evaluation Board Kit for RZ/G3S MPU](https://www.renesas.com/design-resources/boards-kits/rz-g3s-evkit)
* [Evaluation Board Kit for RZ/G3E MPU](https://www.renesas.com/design-resources/boards-kits/rz-g3e-evkit)

RZ/N series
* [Renesas Starter Kit+ for RZ/N2L](https://www.renesas.com/design-resources/boards-kits/rz-n2l-rsk)
* [RZ/N2H Evaluation Board Kit](https://www.renesas.com/design-resources/boards-kits/rz-n2h-evkit)

RZ/T series
* [Renesas Starter Kit+ for RZ/T2M](https://www.renesas.com/design-resources/boards-kits/rz-t2m-rsk)
* [Renesas Starter Kit+ for RZ/T2L](https://www.renesas.com/design-resources/boards-kits/rz-t2l-rsk)
* [Renesas Starter Kit+ for RZ/T2ME](https://www.renesas.com/design-resources/boards-kits/rz-t2me-rsk)
* [RZ/T2H Evaluation Board Kit](https://www.renesas.com/design-resources/boards-kits/rz-t2h-evkit)

RZ/V series
* [SMARC SOM Evaluation Kit for RZ/V2L MPU with AI Accelerator](https://www.renesas.com/design-resources/boards-kits/rz-v2l-evkit)
* [RZ/V2H Quad-core Vision AI MPU Evaluation Kit](https://www.renesas.com/design-resources/boards-kits/rz-v2h-evk)
* [RZ/V2N Quad-core Vision AI MPU Evaluation Kit](https://www.renesas.com/design-resources/boards-kits/rz-v2n-evk)

### Supported Software Packaged with FSP

For a list of software modules packaged with FSP, see [Supported Software](SUPPORTED_SOFTWARE.md).

### Product Security Advisories

[Product Security Advisories](https://github.com/renesas/rz-fsp/issues?q=label%3Aproduct_security_advisory) for FSP and third party software (where available) are tagged with the 'product_security_advisory' label. Please check these issues for information from the respective vendors for affected versions and a recommended workaround or patch upgrade.

### Known Issues

Refer to the release notes for each version.

### Setup Instructions
#### For existing users that are using FSP with e<sup>2</sup> studio

- FSP versions of 4.0.0 and later requires a minimum e<sup>2</sup> studio version of 2025-12.

If you have already installed a previous FSP release that included e<sup>2</sup> studio then you can download the packs separately. These are available for download under the Assets section for each release. There is a zipped version, FSP_Packs_\<version\>.zip, and an installer version, FSP_Packs_\<version\>.exe.

#### For new users that are using FSP with e<sup>2</sup> studio

1.	Download the FSP with e<sup>2</sup> studio Installer from the Assets section of the [current release](https://github.com/renesas/rz-fsp/releases/tag/v4.0.0).
2.	Run the installer. This will install the e<sup>2</sup> studio tool, FSP packs, GCC toolchain and other tools required to use this software. No additional installations are required.

#### If using FSP Smart Configurator (FSP SC) with IAR Embedded Workbench for ARM&reg; ####

1. Download the IAR Embedded Workbench for ARM&reg; installer from [IAR website](https://www.iar.com/embedded-development-tools/iar-embedded-workbench).
2. Download the FSP Smart Configurator Installer from the Assets section of the [current release](https://github.com/renesas/rz-fsp/releases/tag/v4.0.0).
3. Run each installer.


### Related Links

FSP Releases :  https://github.com/renesas/rz-fsp/releases

FSP Documentation : https://renesas.github.io/rz-fsp

FSP Webpage: www.renesas.com/software-tool/rz-flexible-software-package-fsp

RZ Product Information: www.renesas.com/rz

e<sup>2</sup> studio : www.renesas.com/e2studio

Example Projects: https://github.com/renesas/rz-fsp-examples

Knowledge Base : https://en-support.renesas.com/knowledgeBase/category/31243

Support: www.renesas.com/support

Renesas RZ MPU RenesasRulz site (Community posted and answered questions): https://community.renesas.com/rz/
