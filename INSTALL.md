# MOSS Mascot Codex Pet

## Install

### One-click install on Windows

1. Extract the zip file.
2. Double-click:

```text
install-windows.bat
```

3. Fully restart Codex.
4. Go to Settings -> Appearance -> Pet or Avatar.
5. Select `MOSS Mascot`.

### Install on macOS / Linux

1. Extract the zip file.
2. Open Terminal in the extracted folder.
3. Run:

```sh
sh install.sh
```

4. Fully restart Codex.
5. Go to Settings -> Appearance -> Pet or Avatar.
6. Select `MOSS Mascot`.

### Manual install

1. Close Codex completely.
2. Create this folder if it does not exist:

```powershell
C:\Users\<your-user>\.codex\pets\moss-mascot
```

3. Copy these files into that folder:

```text
pet.json
spritesheet.webp
preview.png
```

4. Reopen Codex.
5. Go to Settings -> Appearance -> Pet or Avatar.
6. Select `MOSS Mascot`.

## Expected Files

```text
C:\Users\<your-user>\.codex\pets\moss-mascot\pet.json
C:\Users\<your-user>\.codex\pets\moss-mascot\spritesheet.webp
C:\Users\<your-user>\.codex\pets\moss-mascot\preview.png
```

## State Test Checklist

Codex uses these 9 states in order:

1. `idle`
2. `running-right`
3. `running-left`
4. `waving`
5. `jumping`
6. `failed`
7. `waiting`
8. `running`
9. `review`

After installing, test:

- Select `MOSS Mascot` in Appearance.
- Hover the pet and confirm no extra body parts appear above or below it.
- Start a normal prompt and confirm the working/thinking state displays cleanly.
- Trigger a waiting/approval state if possible and confirm the pet stays centered.
- Switch away to another pet, then switch back to `MOSS Mascot` to clear cache.

## Package Contents

- `pet.json`: Codex pet manifest.
- `spritesheet.webp`: 8x9 animation atlas, `1536x1872`.
- `preview.png`: preview image.
- `install-windows.bat`: one-click Windows installer.
- `install.ps1`: PowerShell installer used by `install-windows.bat`.
- `install.sh`: macOS/Linux installer.
