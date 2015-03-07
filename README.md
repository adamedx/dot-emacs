dot-emacs
=========

This is my raw Emacs configuration.

Installation
------------

 1. Clone this repository somewhere under your user profile -- we'll refer to this director as *$MYEMACS* below
 2. If you're not sure where your Emacs configuration file exists, you
   can find out with the command below executed in Emacs with `M-x`:
```
describe-variable user-init-file
```
   This will show you where Emacs expects to find your configuration file.
 3. Open the file in Emacs (or create it if it doesn't exist)
 4. If the file exists, you can back it up...
 5. Edit the file's contents as shown below and replace *$MYEMACS* with
the location given above for your git checkout of this repo:
```lisp
   (add-to-list 'load-path "$MYEMACS/.emacs-autoload")
   (load-library "$MYEMACS/.emacs")
```
 6. Save the file
 7. Exit and restart emacs
 8. You should see a message saying *".emacs loaded successfully."*
(you can check the **<i>\*Messages\*</i>** buffer for this message if you
miss it in the mini-buffer). If you see any errors, you should
investigate and also make sure that the paths above in your `.emacs` are
correct.

## Extra credit
Automate the steps above. :)

## Why did you put your Emacs configuration on Github?
I did it for the following reasons:

1. Mostly so I could easily use the same configuration on multiple
workstations
2. Also just to back it up -- I once lost an, old, old configuration
that had been with me since college. It was rather old and outdated,
but sentimentally it was a huge loss.
3. So I can modify it with all the safety / documentation  benefits of
source control
4. And I can eventually fully automate it

# License

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

