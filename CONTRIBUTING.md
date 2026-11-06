# Contributing to HeresyOS

First of all, thank you for your interest in contributing to HeresyOS.

We are deeply sorry.

## Before You Begin

**Please do not contribute. Save yourself from ever using, reading, or understanding this project.**

HeresyOS is an experimental TempleOS-based operating system built upon a series of increasingly questionable engineering decisions.

Your time is valuable. Please consider spending it on literally anything else.

If you are still reading this, may God have mercy on your soul.

## Scope and Current Reality

The project currently boots the original TempleOS ISO under QEMU. An experimental development disk exists, but a reproducible custom kernel build and bootable HeresyOS image do not yet exist.

Do not describe planned FreeBSD compatibility, Ring 3 isolation, a FASM package manager, or graphical ports as implemented functionality.

Contributions should target the smallest demonstrable next step. A well-documented one-line kernel modification that actually boots is more useful than an untested compatibility layer with a heroic README.

## Contribution Guidelines

If you have ignored the previous warnings, please follow these guidelines:

1. Thou shalt write code that compiles.
2. Thou shalt not introduce unnecessary bugs. We already have enough.
3. Thou shalt document thy architectural changes.
4. Thou shalt keep thy contributions focused and testable.
5. Thou shalt have no other kernels before TempleOS.
6. Thou shalt preserve the project's fundamental lack of practical justification.
7. Thou shalt not introduce GNU into the **target userland**. Host-side development tools are a separate matter.
8. Thou shalt not question the divine necessity of FASM.
9. Thou shalt test thy code before committing, or clearly state why it could not be tested.
10. Thou shalt remember that segmentation faults are not divine revelations.

## Development Practices

- Keep the original TempleOS source snapshot identifiable. Document the upstream archive, revision or release, and any local modifications.
- Prefer small patches over wholesale source rewrites.
- Record exact build commands, QEMU arguments, test images, and checksums where relevant.
- Never commit local QCOW2 development disks, unreviewed third-party binaries, or machine-specific build artifacts.
- Add regression tests or repeatable manual verification steps whenever possible.
- Treat user/kernel boundaries, memory permissions, interrupts, and context switches as correctness-critical code.
- Preserve original author credits, license notices, and provenance metadata.
- Do not introduce copied third-party code without identifying its license and updating `THIRD_PARTY_NOTICES.md`.

A source file being available on GitHub does not automatically mean we can copy it without conditions. The Lord may be merciful. Copyright law tends to be less flexible.

## Bug Reports

Before reporting a bug, verify that it is not an intentional consequence of the architecture.

Known limitations include:

- A custom HeresyOS kernel does not exist yet.
- Standalone boot from the installed development disk has produced an exception in the tested setup; its cause remains unknown.
- Most of the proposed architecture is not implemented.
- The developers are aware of these limitations and have chosen to proceed anyway.

Actual, reproducible bugs are welcome.

Unfortunately.

Include:

- What you expected and what actually happened.
- Exact reproduction steps.
- The relevant commit or source snapshot.
- Host OS, QEMU version, and full VM launch command.
- Relevant console output, screenshots, and checksums where applicable.

### Kernel Panics

If you encounter a kernel panic:

1. Remain calm.
2. Record the circumstances.
3. Collect the relevant debugging information.
4. Pray.
5. Open an issue.

Divine intervention is not a substitute for a reproducible test case.

## Pull Requests

All pull requests should include:

- A clear description of the changes.
- A short explanation of the design and any tradeoffs.
- Instructions for testing and the actual results.
- Relevant documentation and licensing updates.
- Known limitations or unresolved questions.

The explanation of why these changes are necessary may be brief. We have already abandoned the larger philosophical argument.

Pull requests introducing Linux as a replacement kernel will be rejected.

**This is a TempleOS-based project. We intend to suffer correctly.**

## Code of Conduct

Be respectful to contributors and to the people whose work made this project possible.

Harassment, discrimination, personal attacks, and mockery of medical conditions are not acceptable.

Question the architecture, not the sanity of the people working on it.

## Final Warning

By contributing to HeresyOS, you acknowledge that you are voluntarily participating in an attempt to combine TempleOS, FreeBSD, Gentoo-inspired tooling, and x86-64 assembly into a single operating system.

No one made you do this.

No one is coming to stop you.

**Forgive them, Father, for they know not what they compile.**

*May God have mercy on your CPU.*

**Amen.**
