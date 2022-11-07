[Deutsch] [Englisch](https://github.com/daywalk3r666/Termux_url_opener_all_in_one_downloader/blob/dev/README_en.md)

# All-in-one Download Script für Termux ([URL Opener](https://wiki.termux.com/wiki/Intents_and_Hooks))

Abhängingkeiten: `ffmpeg, youtube-dl, python, wget, spotdl, yt-dlp, you-get, termux-api`

[Termux:API](https://wiki.termux.com/wiki/Termux:API) [APK](https://f-droid.org/packages/com.termux.api/) (Und sein gleichnamiges Termux pkg) werden *eventuell* benötigt, um die streamingfähige URL (der Medien-URL, die Sie anvisieren) bequem mit jeder kompatiblen Anwendung (wie z. B. einem Media Player) zu teilen. 

![https://github.com/daywalk3r666/Termux_url_opener_all_in_one_downloader/blob/dev/screenshot.png](/screenshot.png)

# Benutzung
Ziel URL über das [Android Teilen-Menü](https://developer.android.com/training/sharing/send) an Termux senden.

![https://github.com/daywalk3r666/Termux_url_opener_all_in_one_downloader/blob/dev/share_icon.png](/share_icon.png)


# Installation
Starte Termux, dann:

<details><summary>Downloade und führe das Installationscript aus</summary>
<p>
  
```
curl -s "https://raw.githubusercontent.com/daywalk3r666/Termux_url_opener_all_in_one_downloader/dev/install.sh" > install.sh && bash install.sh
```
  
</p>
</details>

* _oder_ führe das Script aus [Schritt für Schritt](https://raw.githubusercontent.com/daywalk3r666/Termux_url_opener_all_in_one_downloader/dev/install.sh)

# FAQ
Dieses Skript ist leerzeichenabhängig. Daher werden die Optionen "3" und "3 " unterschiedlich behandelt. Während die erste Option die Option 3 auslöst, ist die zweite ungültig und löst die _Standardoption_ aus.

# Hinweise

Spotdl verwendet YouTube oder YouTube Music als Quelle. Spotify wird nur für Metadaten (Tagging) verwendet.

Für Root-Benutzer: spotdl fügt den Liedtext ein und den Download-Link als Kommentar hinzu. Wenn du dies nicht wünschst, kannst du dies durch bearbeiten zweier Dateien entfernen.
* Für die Liedtexte: Entferne die 3 Liedtext Quellen in /data/data/com.termux/files/home/.spotdl/config.json
![photo_2022-10-09_08-13-01](https://user-images.githubusercontent.com/15938117/194741161-641999ec-55c7-4ec3-b95b-1594838e77a6.jpg)
* Für den Kommentar Tag: Entferne die Zeilen 124 - 125 in /data/data/com.termux/files/usr/lib/python3.10/site-packages/spotdl/utils/metadata.py
<br>![Screenshot 2022-10-09 082009](https://user-images.githubusercontent.com/15938117/194741322-d9fe69e0-d029-4a09-8cfe-73a176ba7006.jpg)

# Update der Abhängigkeiten

python3 -m pip install --upgrade yt-dlp youtube-dl spotdl you-get rapidfuzz beautifulsoup4

# Dankesagung

Diese Script basiert auf [Termux_url_opener_all_in_one_downloader](https://github.com/bboymega/Termux_url_opener_all_in_one_downloader)

# Changelog
```
Updated on Nov 06 2022: Remove RedBull TV and Bandcamp because no longer working
Updated on Oct 03 2022: Changed output path and add mp3 tagging

```
