# FangOS

**Arch Linux, with teeth.**

FangOS is a custom Arch-based distro built for speed, style, and a polished KDE Plasma experience. It's one person's vision of what a desktop Linux should feel like out of the box: fast, green, and just a little bit feral.

![Arch-based](https://img.shields.io/badge/based_on-Arch_Linux-1793D1?style=flat-square&logo=archlinux&logoColor=white)
![Plasma](https://img.shields.io/badge/desktop-KDE_Plasma-1D99F3?style=flat-square&logo=kde&logoColor=white)
![Installer](https://img.shields.io/badge/installer-Calamares-2E7D5B?style=flat-square)

---

## What is this?

FangOS started as a bucket-list project: build a real Linux distro, from an Arch base all the way to a bootable ISO that installs on bare metal. It worked. Then it kept growing.

What you get is Arch Linux with the sharp edges thoughtfully filed down — a tuned Plasma desktop, a graphical installer that doesn't make you read a wiki first, FangOS branding baked in from boot to desktop, and `fang`, a package tool that makes pacman feel like it was designed by someone who actually likes you.

This is a personal distro with character, not a corporate product. It has opinions. They're good opinions.

## Who it's for

- **Arch-curious folks** who want the rolling-release goodness without the install gauntlet
- **Plasma lovers** who want a desktop that looks intentional on first boot
- **Tinkerers** who want a clean, fast base to make their own
- **Anyone** who thinks their package manager should have a little more personality

If you want a distro that holds your hand through everything and hides the terminal from you, this ain't it. If you want Arch with teeth — welcome home.

## Features

- **KDE Plasma desktop**, pre-tuned and ready — no "now spend three hours configuring" phase
- **Calamares graphical installer** — click through, reboot, done
- **fang, the FangOS package tool** — a friendly Python frontend for pacman with live progress bars rendered as fang teeth (▼), automatic sudo escalation, and zero confirm-prompt nagging
- **FangOS branding throughout** — Plymouth boot theme, wallpapers, and Kiefer Green (`#2E7D5B`) on near-black (`#0B0E0C`) everywhere it counts
- **Curated defaults** — Firefox, Konsole, NetworkManager, PipeWire audio, and the firmware/tooling you need for real hardware
- **Rolling release** — it's Arch underneath, so it never goes stale

## Quick start

### 1. Download

Grab the latest ISO from the [Internet Archive](https://archive.org/details/fangos-2026.09.14-x86_64). Check the [website](https://os.fangnet.me) for the current release and its published SHA-256.

### 2. Verify

```bash
sha256sum fangos-*.iso
```

Compare the output against the checksum published on the website. If it doesn't match, don't boot it — re-download.

### 3. Flash it

- **Windows:** [Rufus](https://rufus.ie) (DD mode) or [balenaEtcher](https://etcher.balena.io)
- **Linux:** balenaEtcher, or the classic:

```bash
sudo dd bs=4M if=fangos-*.iso of=/dev/sdX status=progress oflag=sync
```

Triple-check that `/dev/sdX` is your USB stick and not your hard drive. `dd` does not forgive.

### 4. Boot and install

Boot from the USB, and when the live desktop comes up, launch the installer. Calamares walks you through partitioning, user setup, and the rest — a few minutes later, reboot into your new FangOS system.

## Meet fang

`fang` is the FangOS package tool: pacman doing the heavy lifting, with a friendlier face on top.

```bash
fang install firefox vlc      # install packages (auto-sudo, no "are you sure?")
fang remove gimp              # remove packages and their orphans
fang update                   # full system update
fang search pdf               # search the repos
fang info plasma-desktop      # show package details
fang list                     # list installed packages
fang list nvidia              # filter installed packages
```

Things worth knowing:

- `install`, `remove`, and `update` re-run themselves under `sudo` automatically — no need to prefix anything.
- Progress bars stream live and render as rows of fang teeth: `[▼▼▼▼▼·····]`.
- `fang --version` tells you which fang you're running.

## Build it yourself

You can bake your own FangOS ISO straight from this repo with `mkarchiso`:

```bash
# Install the build tooling (on Arch)
sudo pacman -S archiso

# Clone the repo
git clone https://github.com/Kiefer-D-Hendricks/FangOS.git
cd FangOS

# Build (work dir and output dir are yours to choose)
sudo mkarchiso -v -w ./work -o ./out ./profile
```

The finished ISO lands in `./out/`. Fair warning: a full build takes a while and downloads a few gigabytes. Go make coffee.

Want to tweak what's in the ISO? Edit `profile/packages.x86_64` to change the package list, or drop files into `profile/airootfs/` to customize the live environment — anything in there gets overlaid onto the ISO's filesystem.

## Repo layout

```
FangOS/
├── profile/            # mkarchiso profile — this is what becomes the ISO
│   ├── airootfs/       # files overlaid onto the live environment
│   ├── packages.x86_64 # package list for the ISO
│   ├── profiledef.sh   # ISO metadata (name, labels, boot modes)
│   ├── pacman.conf     # pacman config used at build time
│   └── grub/ syslinux/ efiboot/  # bootloader configs
├── packages/           # source for FangOS's custom packages
│   ├── fang/           # the fang package tool (Python + PKGBUILD)
│   ├── fangos-branding/# wallpapers, Plymouth theme, installer hooks
│   └── calamares/      # FangOS's Calamares configuration
├── repo/               # built package repository (x86_64)
│   └── x86_64/         # fang, fangos-branding, calamares-fangos + db files
├── docs/               # the FangOS website (GitHub Pages + os.fangnet.me)
│   └── index.html
└── .gitignore
```

## Contributing

FangOS is a personal project, but good ideas are welcome. If something's broken or you've got an improvement:

1. Open an issue describing it — screenshots help.
2. Or just send a pull request. Small, focused PRs get the fastest response.

The one rule: don't commit unrelated files, and don't touch `docs/` website assets unless that's what your change is about.

## Links

- **Website:** https://os.fangnet.me
- **GitHub:** https://github.com/Kiefer-D-Hendricks/FangOS
- **ISO download:** [Internet Archive](https://archive.org/details/fangos-2026.09.14-x86_64)

---

*Built by Kiefer D. Hendricks. Arch underneath, teeth on top.* 🐺
