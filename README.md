# MOSS Mascot — Codex Desktop Pet

A green fuzzy MOSS-style desktop mascot for [OpenAI Codex](https://github.com/openai/codex).  
White shirt with an **M** mark, rosy cheeks, 9 animation states — including a sunglasses suit *review* mode.

![MOSS Mascot preview](preview.png)

---

## Quick Install

### Windows

1. Extract the zip.
2. Double-click `install-windows.bat`.
3. Fully restart Codex.
4. Go to **Settings → Appearance → Pet** and select `MOSS Mascot`.

### macOS / Linux

```sh
sh install.sh
```

Then restart Codex and select `MOSS Mascot` in **Settings → Appearance → Pet**.

### Manual

Copy these three files into `~/.codex/pets/moss-mascot/`:

```
pet.json
spritesheet.png
preview.png
```

Restart Codex and select `MOSS Mascot`.

---

## Animation States

| Row | State           | Frames | FPS |
|-----|-----------------|--------|-----|
| 1   | `idle`          | 6      | 6   |
| 2   | `running-right` | 8      | 12  |
| 3   | `running-left`  | 8      | 12  |
| 4   | `waving`        | 4      | 8   |
| 5   | `jumping`       | 5      | 10  |
| 6   | `failed`        | 8      | 8   |
| 7   | `waiting`       | 6      | 6   |
| 8   | `running`       | 6      | 12  |
| 9   | `review`        | 6      | 8   |

Spritesheet: `192×208` per frame, 8 columns × 9 rows (`1536×1872` total).

---

## Files

| File | Description |
|------|-------------|
| `pet.json` | Pet manifest with animation metadata |
| `spritesheet.png` | Full animation atlas |
| `preview.png` | Idle preview thumbnail |
| `install-windows.bat` | One-click Windows installer |
| `install.ps1` | PowerShell installer (called by .bat) |
| `install.sh` | macOS/Linux installer |

---

## License

MIT — feel free to use, modify, and share.
