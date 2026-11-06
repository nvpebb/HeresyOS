# HeresyOS

**An experimental TempleOS-based operating system featuring an ambitious FreeBSD userspace compatibility target, a proposed Gentoo-inspired package manager written in FASM, and an unreasonable amount of questionable engineering decisions.**

> **Why? Because it's funny.**

## Genesis

*In the beginning, there was TempleOS.*

*And God saw that it was good.*

*Then someone decided to add FreeBSD, Gentoo, and an assembly-written package manager.*

*And God remained silent.*

## Overview

HeresyOS is an independent experimental operating system project exploring whether technologies that were never designed, intended, or reasonably expected to work together can be made to coexist.

The long-term vision includes:

- **TempleOS** as the kernel foundation, modified rather than replaced.
- **FreeBSD userspace compatibility**, beginning with a small, explicitly defined ABI subset.
- **A Gentoo Portage-inspired package manager**, independently implemented in x86-64 assembly using FASM.
- **No GNU userland** in the target operating system.
- **Namaz in Ring 0**, because apparently even prayers require kernel privileges.
- **fvwm** at 640×480, if the necessary graphical and userspace infrastructure can be made to exist.
- **neofetch**, so future generations may witness what we have done.

These are **aspirations, not implemented features or compatibility guarantees**. In particular, a FreeBSD-compatible userspace will require substantially more than an ELF loader and a few syscalls.

This is not a Linux distribution.

This is not a practical alternative to any existing operating system.

**This is what happens when free will goes unchecked.**

## Acknowledgements and Independence

TempleOS was created by **Terry A. Davis (1969–2018)**. His original work, including its kernel, HolyC compiler, and development environment, makes this experiment possible.

HeresyOS is an **independent, unofficial experiment**. It is not an official continuation of TempleOS, does not claim to represent Terry's intentions, and is not affiliated with or endorsed by the maintainers of TempleOS archives or any other projects mentioned here.

Terry's extraordinary engineering work made this experiment possible. We acknowledge and respect his contributions to operating system development.

The project's humor concerns its own deliberately unreasonable engineering choices. It is not directed at Terry or his personal struggles.

TempleOS was released as public-domain software by its author. Before importing a particular source snapshot, we will document its provenance, version, and any file-specific third-party notices. See [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).

## Building & Running

### Current State

The development environment has successfully booted the **original, unmodified TempleOS ISO** under QEMU. A separate QEMU development disk has also been created and TempleOS installed onto it.

**Important limitations:**

- No custom HeresyOS kernel has been built or booted yet.
- The installed development disk has booted with the original ISO still attached; booting that disk alone has encountered a TempleOS exception and is **not a verified working configuration**.
- The current launch script's supported boot mode should be checked against its actual contents. The commands below provide a known baseline for booting the original ISO; they do not imply that a custom build pipeline exists.

### Requirements

- Linux development host
- QEMU with x86-64 system emulation
- Original TempleOS ISO
- Faith (optional)

### 1. Clone the Repository

```bash
git clone https://github.com/nvpebb/HeresyOS.git
cd HeresyOS
```

### 2. Obtain TempleOS

Download the original TempleOS ISO from [the TempleOS archive](https://templeos.org/).

Place it at:

```text
images/TempleOS.ISO
```

The ISO is not tracked by Git.

**SHA-256 of the ISO used for the initial QEMU experiment:**

```text
5d0fc944e5d89c155c0fc17c148646715bc1db6fa5750c0b913772cfec19ba26
```

Verify that you have the same image:

```bash
echo "5d0fc944e5d89c155c0fc17c148646715bc1db6fa5750c0b913772cfec19ba26  images/TempleOS.ISO" | sha256sum --check
```

Expected output:

```text
images/TempleOS.ISO: OK
```

This hash identifies the image used in development; it is **not presented as an independently authenticated upstream checksum**. If it differs, investigate the image's provenance before continuing.

**God does not accept corrupted offerings. Neither should your build pipeline.**

### 3. Install QEMU

On Arch Linux:

```bash
sudo pacman -S --needed qemu-desktop
```

Other distributions may use different package names.

### 4. Boot the Original ISO

The repository includes `scripts/run-qemu.sh`. Review its current configuration before running it, especially its disk attachments and boot order:

```bash
./scripts/run-qemu.sh
```

For an explicit, read-only ISO boot baseline, independent of the script:

```bash
qemu-system-x86_64 \
  -machine pc -accel tcg \
  -m 512M -smp 1 \
  -drive file=images/TempleOS.ISO,format=raw,media=cdrom,if=ide,readonly=on \
  -boot order=d \
  -vga std -display gtk
```

This baseline uses:

| Parameter | Value |
|---|---|
| Architecture | x86-64 |
| Machine | Standard PC (`pc`) |
| Acceleration | TCG |
| Memory | 512 MiB |
| Virtual CPUs | 1 |
| Boot medium | IDE CD-ROM |
| Graphics | Standard VGA |
| Display | GTK |
| Persistent writable disk | None in the baseline command |

Changes made inside this ISO-only session should not be treated as persistent.

### 5. Development Disk (Experimental)

An experimental 2 GiB QCOW2 disk has been used at:

```text
images/templeos-dev.qcow2
```

It is a **local development artifact**, not a required or published repository asset. If you need a fresh blank disk:

```bash
qemu-img create -f qcow2 images/templeos-dev.qcow2 2G
```

**Warning:** Do not run the creation command over an existing disk containing work you wish to keep.

To boot with the ISO and the development disk attached:

```bash
qemu-system-x86_64 \
  -machine pc -accel tcg \
  -m 512M -smp 1 \
  -drive file=images/TempleOS.ISO,format=raw,media=cdrom,if=ide,readonly=on \
  -drive file=images/templeos-dev.qcow2,format=qcow2,media=disk,if=ide \
  -boot order=c \
  -vga std -display gtk
```

This command assumes TempleOS has already been installed onto the QCOW2 disk. Use `-boot order=d` to boot the ISO for installation or recovery. **Booting the installed disk without the ISO remains an unresolved issue**; do not mistake this example for a verified standalone-disk boot procedure.

### 6. Troubleshooting

**QEMU cannot find the ISO:** Check `images/TempleOS.ISO` and the path used by the launch command.

**GTK display cannot open:** Run from a graphical session with GTK display support.

**TempleOS does not boot:** Verify the image hash, QEMU configuration, machine type, and attached devices.

**Installed disk crashes when ISO is detached:** This behavior has been observed. Its root cause has **not** been established; preserve the failing configuration and collect reproducible diagnostics rather than guessing.

When reporting a failure, include the QEMU command, image hash, relevant output or screenshots, and reproduction steps.

**Prayers without reproducible error reports will be closed as `cannot reproduce`.**

### Development Status

The original TempleOS kernel has been successfully summoned. A custom HeresyOS kernel has not yet been compiled or booted.

**We have successfully summoned the kernel. We have not yet committed heresy against it.**

## The Origin

Every great operating system begins with a vision.

Ours began with a meme.

![The meme that inspired HeresyOS](docs/assets/original-meme.jpg)

**Source of the shared meme:** [@neimxd on TikTok](https://www.tiktok.com/@neimxd). The original creator and redistribution rights have not been independently verified; see [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).

### English Translation

> The ultimate build: a TempleOS kernel, Gentoo with Portage written in FASM, FreeBSD userland without a single line of GNU code, namaz in Ring 0, and all of it rendered through fvwm at 640×480.
>
> If you run neofetch on this thing, the computer should simply annihilate the reality around it with a quiet pop.

### What Happened Next?

Someone saw this meme and decided to actually implement it.

We sincerely apologize for this misunderstanding.

**The original author made a joke. We made a repository.**

## Project Status

**Status: Pre-alpha / Awaiting Divine Intervention**

There is currently no custom bootable HeresyOS image, FreeBSD compatibility layer, or assembly-based package manager.

### The Ten Commandments of HeresyOS

1. Thou shalt have no other kernels before TempleOS.
2. Thou shalt not introduce GNU into thy userland.
3. Thou shalt keep thy builds reproducible.
4. Remember the 640×480 resolution, to keep it holy.
5. Honour thy kernel and thy bootloader.
6. Thou shalt not silently corrupt memory.
7. Thou shalt not commit untested code.
8. Thou shalt not steal another project's copyright.
9. Thou shalt not bear false witness about POSIX compliance.
10. Thou shalt not question why Portage is written in assembly.

### Development Roadmap

The milestones below describe intended technical progress, **not release commitments**.

**Phase I: The First Heresy**

- [x] Boot the original TempleOS kernel in QEMU.
- [x] Create and install an experimental development disk (standalone boot remains unresolved).
- [ ] Select, document, and pin an upstream TempleOS source snapshot.
- [ ] Establish a reproducible source-to-bootable-image build procedure.
- [ ] Integrate and boot the first HeresyOS kernel modification.
- [ ] Publish a testable custom image with checksums and build instructions.

**Phase II: The Fall of Adam**

- [ ] Establish a minimal Ring 3 execution path.
- [ ] Introduce userspace memory isolation and fault handling.
- [ ] Implement a minimal syscall interface and context transitions.
- [ ] Load and execute a small standalone ELF64 userspace program.

**Phase III: The Forbidden Userland**

- [ ] Define the first supported subset of the FreeBSD userspace ABI.
- [ ] Implement the necessary process, memory, filesystem, and syscall semantics incrementally.
- [ ] Execute a selected FreeBSD userspace binary and document its limitations.

**Future Heresies**

- [ ] Implement a minimal, independently written FASM package-management prototype.
- [ ] Extend package and userspace support as needed.
- [ ] Port the required graphical infrastructure.
- [ ] Run fvwm at 640×480.
- [ ] Run neofetch and ask God for forgiveness.

## Architecture

The **intended** architecture is:

```text
+--------------------------------------+
|               HeresyOS               |
|                                      |
|  fvwm / FreeBSD userland / neofetch   |
+--------------------------------------+
|       FreeBSD Compatibility Layer    |
|                                      |
|   ELF64 / Syscalls / Process Model   |
+--------------------------------------+
|         Modified TempleOS Kernel     |
|                                      |
|  Memory / Scheduler / Drivers / IPC  |
+--------------------------------------+
|                x86-64                |
+--------------------------------------+
```

This diagram describes a long-term design target, **not the current implementation**. Existing TempleOS code executes in Ring 0; adding protected userspace will require substantial kernel changes. Ring 1 and Ring 2 are not prerequisites for the planned Ring 0/Ring 3 split.

## Development

Initial development targets QEMU on x86-64.

Priorities:

1. Reproducible builds and verifiable upstream provenance.
2. Incremental, testable kernel modifications.
3. Isolation and minimal ABI primitives before ambitious compatibility claims.
4. Automated testing wherever practical.
5. Preservation of TempleOS attribution and applicable third-party notices.

Running HeresyOS on physical hardware is not recommended.

**God may forgive your sins. Your hardware will not.**

## FAQ

### Is this a joke?

Yes.

### Is this a real operating system?

Right now? Not as a distinct bootable HeresyOS build.

In the future? Unfortunately, that is the plan.

### Why TempleOS?

Because Linux would make this too reasonable.

And because the Lord works in mysterious ways.

### Why FreeBSD?

Because apparently one operating system was not enough to test God's patience.

### Why rewrite Portage in assembly?

Because Python apparently made package management too accessible.

### Why namaz in Ring 0?

Because Ring 3 prayers apparently lack sufficient privileges.

### Does HeresyOS already support Ring 3 or FreeBSD binaries?

No. Both require major, currently unimplemented work.

### Is this production-ready?

Absolutely not.

### Should I use HeresyOS?

No.

### Will it ever be stable?

Only God knows.

And He has declined to comment.

### Is this what Terry A. Davis intended?

We do not claim that it is. HeresyOS is an independent experiment, not an official successor to TempleOS.

### Is HeresyOS blessed?

No official confirmation has been received.

### What happens if the kernel panics?

Pray. Then collect a reproducible test case.

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) before attempting to contribute.

We strongly advise against it.

**Forgive them, Father, for they know not what they compile.**

## Licensing

Original HeresyOS code is licensed under the terms in [LICENSE](LICENSE) (GNU GPL v3). This does **not** relicense original public-domain TempleOS material or independently licensed third-party components.

See [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) for provenance, attribution, and planned dependencies. A combined distribution must be reviewed for applicable license obligations before release.

---

*HeresyOS: God gave us free will. We used it to port FreeBSD to TempleOS.*

**Amen.**
