# RA2Web Assets

Public asset mirror used by the **RA2Web Desktop** build.

- Desktop source code repository (private): `ts-redalert2-desktop`
- Release: [assets-v1](../../releases/tag/assets-v1)
- Release asset: `game-res.tar`
- Integrity file: `game-res.sha256`

## What is inside

`game-res.tar` contains only the game resources required by the desktop package:

```text
game-res/
├── ra2.mix
├── language.mix
├── multi.mix
├── Taunts/
├── music/
├── glsl.png
├── ra2ts_l.webm
└── manifest.json
```

Safety/audit note:

- No source code, launcher config, user data, replay files, build logs, tokens, passwords, private keys, or local paths.
- No `.md` files are included inside `game-res.tar`.
- The archive is generated from the game resource directory only.

## Copyright / risk notice

The game assets in this repository are **not open source**. They are the property of their respective rights holders, including **Electronic Arts Inc. (EA)**.

Public redistribution of these files may infringe copyright and may be subject to **DMCA takedown**.

This mirror is provided **only for fan research and non-commercial use**, with no warranty and no affiliation with EA.

Please read **[NOTICE.md](NOTICE.md)** before downloading or redistributing anything.

## License

Repository documentation/metadata is licensed under MIT; this **does not apply to the game assets**.
See **[LICENSE](LICENSE)** and **[NOTICE.md](NOTICE.md)** for the exact scope.
