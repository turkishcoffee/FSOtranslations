# FreeSO Translation
FreeSO Translation is designed to offer The Sims Online and FreeSO (or derivatives) to be avaiable in other languages and countries. This is maintained by Zack Casey and the FreeSO community. 

Object translation is not possible yet until an Edith replacement is written.

## How to Contribute
* Install The Sims Online ([Download here](http://largedownloads.ea.com/pub/misc/tso/))
* Fork the FSOTranslations repository
* Make a new directory of the language you wish to translate known as [language].dir
* Copy any .cst from Online\TSOClient\gamedata\uitext\english.dir to your directory as a template
* Translate the words between the [carets](https://en.wikipedia.org/wiki/Caret) from English to said language
* Push the patch back here

†On 64bit systems, this will be in Program Files(x86). **IF** you choose to install it there.

## Guidelines
* Translate everything that isn't clearly a Sims 1 concept
* Use accents instead of special characters.
* Latin script-based languages only. [Natural](https://en.wikipedia.org/wiki/Natural_language) or [constructed](https://en.wikipedia.org/wiki/Constructed_language).

### Object translation
Object translation with [Volcanic](https://dl.dropboxusercontent.com/u/12239448/Volcanic.pdf) is not apart of this project, at present. I'm looking into a way to incorporating this into the project.

## Seeing your changes
Put [your language].dir in the same directory as english.dir. Then change the following lines in **freeso.exe.config**:
```XML
<setting name="CurrentLang" serializeAs="String">
                <value>[your language]</value>
```
However, this is not a permanent solution. Your changes will be lost next time you update your client.

# Licenses
Content is licensed under public domain. The installation script is licensed under the GPL 2.

## GNU Public License 2
> This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.
>
> This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
>
> You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

## CC0 1.0 Universal
> No Copyright
>
> The person who associated a work with this deed has dedicated the work to the public domain by waiving all of his or her rights to the work worldwide under copyright law, including all related and neighboring rights, to the extent allowed by law.
>
> You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission. See Other Information below.
>
> Other Information
>
> * In no way are the patent or trademark rights of any person affected by CC0, nor are the rights that other persons may have in the work or in how the work is used, such as publicity or privacy rights.
>
> * Unless expressly stated otherwise, the person who associated a work with this deed makes no warranties about the work, and disclaims liability for all uses of the work, to the fullest extent permitted by applicable law.
>
> * When using or citing the work, you should not imply endorsement by the author or the affirmer.
