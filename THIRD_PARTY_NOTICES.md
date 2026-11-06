# Third-Party Software Notices

HeresyOS is an independent experimental operating system project based on TempleOS, with planned compatibility and integration work involving FreeBSD, Gentoo-inspired package management, FASM, and other software.

**Important:** Listing a project here does **not** imply that its source code or binaries are currently included in this repository. The status of each component must be updated when it is actually imported or distributed.

Third-party components retain their applicable copyright notices, license conditions, and attribution requirements. The repository's GPL-3.0 license for original HeresyOS code does not automatically replace those terms.

## 1. TempleOS

- **Project:** TempleOS
- **Original author:** Terry A. Davis (1969–2018)
- **Archive:** https://templeos.org/
- **Licensing:** Original TempleOS was released into the public domain by its author. Review the provenance and any third-party material of the specific snapshot imported.
- **Current status:** Original ISO used as a development and test environment; a pinned source snapshot has not yet been documented as incorporated into HeresyOS.

TempleOS is the intended kernel foundation. HeresyOS aims to modify and extend it rather than replace it with Linux or another kernel.

HeresyOS is **not** an official continuation or successor to TempleOS and is not affiliated with or endorsed by its original author, estate, or archive maintainers.

When a source snapshot is imported, record at minimum:

- Archive or repository URL.
- Release/version and immutable commit or artifact identifier, if available.
- Archive checksum or other provenance evidence.
- Included files and any third-party notices requiring separate treatment.
- A description of changes made by HeresyOS.

The original TempleOS credits themselves mention certain third-party-derived material. Do not assume every file can be treated identically merely because the overall system was described as public domain.

## 2. FreeBSD

- **Project:** FreeBSD
- **Website:** https://www.freebsd.org/
- **License:** Primarily BSD-family licenses, with file- and component-specific exceptions.
- **Status:** Planned userspace compatibility; no FreeBSD source incorporation is asserted here.

HeresyOS intends to implement a **selected subset** of FreeBSD userspace behavior and ABI conventions. Compatibility does not itself imply inclusion of FreeBSD code.

If FreeBSD files or binaries are incorporated, review each component's license, dependencies, and required copyright notices before distribution.

## 3. Gentoo Portage

- **Project:** Gentoo Portage
- **Website:** https://www.gentoo.org/
- **Source:** https://github.com/gentoo/portage
- **License:** Generally GPL-2.0; verify the applicable version and terms for any files actually used.
- **Status:** Planned independently written, Portage-inspired package manager in x86-64 assembly.

HeresyOS does not currently claim to implement or distribute Portage.

An independently written package manager inspired by Portage's concepts is not automatically a derivative of Portage's source code. If existing Portage source is copied, translated, or adapted, the resulting licensing obligations must be evaluated before incorporation.

The project is not affiliated with or endorsed by Gentoo.

## 4. Flat Assembler (FASM)

- **Project:** Flat Assembler
- **Website:** https://flatassembler.net/
- **Author:** Tomasz Grysztar
- **License:** Refer to the terms accompanying the exact FASM distribution or component used.
- **Status:** Planned assembly-language development tool.

Using FASM as a build tool does not by itself mean its source or binaries are redistributed with HeresyOS. If they are bundled, their applicable terms must be reviewed.

## 5. fvwm

- **Project:** fvwm
- **Website:** https://www.fvwm.org/
- **License:** GPL-family licensing; verify the exact version and component-specific terms for the release selected.
- **Status:** Planned graphical environment, not yet integrated.

Running fvwm requires a substantial userspace and graphical compatibility effort. Any incorporated code must retain the notices and license obligations applicable to the selected version.

## 6. neofetch

- **Project:** neofetch
- **Original author:** Dylan Araps
- **Source:** https://github.com/dylanaraps/neofetch
- **License:** MIT
- **Status:** Planned system information utility, not yet integrated.

If neofetch is incorporated or redistributed, preserve its applicable license and copyright notices.

The project acknowledges that running neofetch may have consequences beyond the scope of conventional software testing.

## 7. Original Meme

- **File:** `docs/assets/original-meme.jpg`
- **Shared source:** https://www.tiktok.com/@neimxd
- **Status:** Included as an illustration of the project's inspiration, subject to rights review.

The identity of the original image creator and its copyright status have not been independently verified. Attribution to an account that shared the meme does not itself grant redistribution rights.

The image is **not** covered by the GPL-3.0 license for original HeresyOS code. Remove or replace it if the necessary rights cannot be established.

## 8. Licensing Policy

Original HeresyOS source code is licensed as specified in the repository's `LICENSE` file (currently GNU GPL version 3).

That license statement applies to material the HeresyOS contributors are entitled to license under those terms. It does **not** claim exclusive ownership of public-domain TempleOS code or relicense independently copyrighted third-party components merely by listing them here.

Before incorporating or distributing third-party material:

1. Identify its source and the exact version or revision.
2. Verify the applicable license and any file-specific exceptions.
3. Assess license compatibility for the way the material will be combined and distributed.
4. Preserve required copyright, attribution, and modification notices.
5. Include required license texts and corresponding source where applicable.
6. Document any modifications and the provenance of imported files.
7. Update this document to distinguish **planned**, **included**, and **distributed** components.

Where appropriate, original source files should carry accurate SPDX license identifiers. Do not add `GPL-3.0-only` to original public-domain TempleOS files merely because they reside in the same repository.

**No GNU userland** is a technical design constraint for the eventual target system, not a prohibition on GPL-licensed project code or GNU tools used on a development host.

## 9. Disclaimer

HeresyOS is an independent experimental project.

References to TempleOS, FreeBSD, Gentoo, FASM, fvwm, and neofetch do not imply affiliation, sponsorship, or endorsement by their respective authors, estates, maintainers, or organizations.

---

*May all dependencies be resolved, all licenses be respected, and all kernel panics be reproducible.*

**Amen.**
