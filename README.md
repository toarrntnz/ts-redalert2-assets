# RA2Web Assets

Public game-resource repository for the RA2Web desktop package.

## Contents

- `game-res/` — game resources used by the desktop build.
- `game-res/ra2.mix.part00 ...` — `ra2.mix` is split because GitHub rejects single files larger than 100 MB.
- All other resource files are stored under their original names.
- Release `assets-v1` also provides a packaged `game-res.tar` for convenience.

This repository contains game resources only. It does not contain application source code,
configuration files, user data, replays, or logs.

## Rebuild `ra2.mix`

GitHub's 100 MB per-file limit prevents committing the original 269 MB `ra2.mix`.
After cloning, run one of these scripts from the repository root to rebuild it:

```bash
./join-game-res.sh
```

```powershell
.\join-game-res.ps1
```

Then `game-res/ra2.mix` will be usable by the desktop build.

## Copyright / DMCA notice

The game assets are **not open source**. They are the property of their respective rights
holders, including **Electronic Arts Inc. (EA)**. Public redistribution may infringe
copyright and may be subject to **DMCA takedown**.

They are provided for fan research and non-commercial use only. See **[NOTICE.md](NOTICE.md)**.

## License

Repository documentation and metadata are MIT-licensed. The MIT license does **not** apply
to any game asset. See **[LICENSE](LICENSE)** and **[NOTICE.md](NOTICE.md)**.
