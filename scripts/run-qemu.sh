#!/usr/bin/env bash
set -euo pipefail

# Forgive them, Father, for they know not what they start.

PROJECT_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"

qemu-system-x86_64 \
  -machine pc \
  -accel tcg \
  -m 512M \
  -smp 1 \
  -drive "file=${PROJECT_ROOT}/images/TempleOS.ISO,format=raw,media=cdrom,if=ide,readonly=on" \
  -drive "file=${PROJECT_ROOT}/images/templeos-dev.qcow2,format=qcow2,media=disk,if=ide" \
  -boot order=d \
  -vga std \
  -display gtk
