# Third-Party Software Notices

SchizOS is an experimental operating system project based on TempleOS, with planned compatibility and integration work involving FreeBSD, Gentoo Portage, FASM, and other software.

This document records third-party projects relevant to SchizOS and their licensing considerations.

**Important:** Listing a project here does not imply that its source code or binaries are currently included in this repository.

Third-party components retain their applicable copyright notices and licensing requirements.

## 1. TempleOS

- **Project:** TempleOS
- **Original Author:** Terry A. Davis
- **Website:** https://templeos.org/
- **License:** Public Domain
- **Status:** Planned kernel foundation

TempleOS is the intended foundation of SchizOS.

The project aims to modify and extend the original TempleOS kernel rather than replace it with Linux or another operating system kernel.

The original TempleOS project was released into the public domain by its author.

SchizOS is an independent experimental project and is not an official continuation of TempleOS.

## 2. FreeBSD

- **Project:** FreeBSD
- **Website:** https://www.freebsd.org/
- **License:** Primarily BSD licenses, with component-specific exceptions
- **Status:** Planned userspace compatibility

SchizOS aims to implement compatibility with selected FreeBSD userspace components.

Individual FreeBSD source files and dependencies must be reviewed before inclusion.

Required copyright notices, license texts, and attribution must be preserved.

Compatibility with FreeBSD does not imply that FreeBSD source code has been incorporated.

## 3. Gentoo Portage

- **Project:** Gentoo Portage
- **Website:** https://www.gentoo.org/
- **Source:** https://github.com/gentoo/portage
- **License:** GNU GPL v2, subject to verification of individual components and files
- **Status:** Planned assembly-language reimplementation

SchizOS intends to develop an experimental package management subsystem inspired by Gentoo Portage, implemented using FASM.

The initial implementation is intended to be independently written.

If existing Portage source code is copied, translated, or adapted, the applicable license obligations must be reviewed and followed.

The planned implementation is not affiliated with or endorsed by the Gentoo project.

## 4. Flat Assembler (FASM)

- **Project:** Flat Assembler
- **Website:** https://flatassembler.net/
- **Author:** Tomasz Grysztar
- **License:** Refer to the applicable official distribution terms
- **Status:** Planned development tool

FASM is intended to be used for developing the assembly-language package management subsystem and potentially other low-level components.

Using FASM as a development tool does not, by itself, imply that FASM source code or binaries are redistributed with SchizOS.

If FASM components are included in distributed artifacts, their applicable licensing terms must be reviewed.

## 5. fvwm

- **Project:** fvwm
- **Website:** https://www.fvwm.org/
- **License:** GNU GPL v2 or later, subject to component-specific verification
- **Status:** Planned graphical environment

SchizOS aims to support fvwm at a resolution of 640×480.

This will require substantial graphical infrastructure and compatibility work.

Any incorporated fvwm code must retain its applicable copyright notices and license terms.

## 6. neofetch

- **Project:** neofetch
- **Original Author:** Dylan Araps
- **Source:** https://github.com/dylanaraps/neofetch
- **License:** MIT
- **Status:** Planned system information utility

SchizOS aims to support neofetch as a demonstration of the completed system.

If neofetch source code is incorporated or redistributed, its applicable license and copyright notices must be preserved.

The project acknowledges that running neofetch may have consequences beyond the scope of conventional software testing.

## 7. Original Meme

The image included at `docs/assets/original-meme.jpg` is a third-party meme that inspired the SchizOS project.

Its publication source is credited in the project README.

The identity of the original creator and the image's copyright status have not been independently verified.

The image is not covered by the license applicable to original SchizOS source code.

Attribution does not itself grant permission to redistribute copyrighted material. The image may need to be removed or replaced if the necessary rights cannot be established.

## 8. Licensing Policy

Original SchizOS source code is distributed under the license specified in the repository's `LICENSE` file.

Third-party software is not automatically relicensed under the SchizOS project license.

Before incorporating third-party code, contributors must:

1. Identify the applicable license.
2. Verify compatibility with the intended distribution.
3. Preserve required copyright and attribution notices.
4. Include required license texts when redistributing code.
5. Document modifications where required.
6. Update this file to reflect the components actually included.

Where appropriate, individual source files should contain SPDX license identifiers.

## 9. Disclaimer

SchizOS is an independent experimental project.

References to TempleOS, FreeBSD, Gentoo, FASM, fvwm, and neofetch do not imply affiliation, sponsorship, or endorsement by their respective authors or organizations.

---

*May all dependencies be resolved, all licenses be respected, and all kernel panics be reproducible.*

**Amen.**
