[German](https://github.com/daywalk3r666/Termux-Downloader-Script/blob/main/README.md) [English]

# All-in-one Download Script for Termux ([URL Opener](https://wiki.termux.com/wiki/Intents_and_Hooks))

Dependencies: `ffmpeg, youtube-dl, python, wget, spotdl, yt-dlp, you-get, termux-api`

[Termux:API](https://wiki.termux.com/wiki/Termux:API) [APK](https://f-droid.org/packages/com.termux.api/) (and its homonymus termux pkg) are *eventually* needed to comfortably share the streamable URL (of the media URL you target) with any compatible app (like a media player, for instance). 

![https://github.com/daywalk3r666/Termux-Downloader-Script/blob/main/screenshot.png](/screenshot.png)

# Usage
"Send" the target URL to Termux by [any Android native "sharing" intent you'd like](https://developer.android.com/training/sharing/send).

![https://github.com/daywalk3r666/Termux-Downloader-Script/blob/main/share_icon.png](/share_icon.png)


# Installation
Launch Termux, then:

<details><summary>download and run the install script</summary>
<p>
  
```
curl -s "https://raw.githubusercontent.com/daywalk3r666/Termux-Downloader-Script/main/install.sh" > install.sh && bash install.sh
```
  
</p>
</details>

* _or_ run the install script [line by line](https://github.com/daywalk3r666/Termux-Downloader-Script/blob/main/install.sh)

# FAQ
This script is blank sensitive. Therefore options `3` and `3 ` are treated differently, while the former will launch option 3 the latter is invalid and will launch the _default_ option.

# Notes

Spotdl use YouTube or YouTube Music as source. Spotify is only use for Metadata( Tagging )

For Root Users: spotdl includes lyrics and the download link as comment. If you don't want this. you can remove this by editing two files.
* For lyrics: Remove the 3 lyrics_providers in /data/data/com.termux/files/home/.spotdl/config.json
![photo_2022-10-09_08-13-01](https://user-images.githubusercontent.com/15938117/194741161-641999ec-55c7-4ec3-b95b-1594838e77a6.jpg)
* For the comment tag: Remove the lines 124 - 125 in /data/data/com.termux/files/usr/lib/python3.10/site-packages/spotdl/utils/metadata.py
<br>![https://github.com/daywalk3r666/Termux-Downloader-Script/blob/main/spotdl.png](/spotdl.png)

# Update dependencies

python3 -m pip install --upgrade yt-dlp youtube-dl spotdl you-get rapidfuzz beautifulsoup4

# Thanks

This script base on [Termux_url_opener_all_in_one_downloader](https://github.com/bboymega/Termux_url_opener_all_in_one_downloader)

# Changelog
```
Updated on Nov 06 2022: Remove RedBull TV and Bandcamp because no longer working
Updated on Oct 03 2022: Changed output path and add mp3 tagging


```
