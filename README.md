# f0ck.org

f0ck.org is an image board engine inspired by services such as Danbooru,
Gelbooru and Moebooru dedicated for small and medium communities. Its name [has
its roots in Polish language and has onomatopeic meaning of scraping or
scrubbing](https://sjp.pwn.pl/sjp/;2527372). It is pronounced as *shoorubooru*.

## Features

- Post content: images (JPG, PNG, GIF, animated GIF), videos (MP4, WEBM), Flash animations
- Ability to retrieve web video content using [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- Post comments
- Post notes / annotations, including arbitrary polygons
- Rich JSON REST API ([see documentation](doc/API.md))
- Token based authentication for clients
- Rich search system
- Rich privilege system
- Autocomplete in search and while editing tags
- Tag categories
- Tag suggestions
- Tag implications (adding a tag automatically adds another)
- Tag aliases
- Pools and pool categories
- Duplicate detection
- Post rating and favoriting; comment rating
- Polished UI
- Browser configurable endless paging
- Browser configurable backdrop grid for transparent images

## Installation

It is recommended that you use Docker for deployment.
[See installation instructions.](doc/INSTALL.md)

## License

[GPLv3](LICENSE.md).
