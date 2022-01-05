#  Imp-extended themes

Themes based on [Imp](https://github.com/igormp/Imp) to provide more prompt symbol options.
File imp.zsh-theme is Igor Moura's original one, which I used as a template.

## Installation

Follow the [oh-my-zsh instructions](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization#overriding-and-adding-themes) or run the following:
```
mkdir -p $ZSH_CUSTOM/themes &&
symbols="ampersand asterisk at-sign close-brace close-bracket close-parenthesis " \
        "colon dollar exclamation-mark greater-than hash less-than open-brace " \
        "open-bracket open-parenthesis percent-sign pipe plus question-mark " \
        "semicolon tilde" &&
for symbol in $symbols &&
do &&
curl https://raw.githubusercontent.com/GuanlginDu/Imp-extended/master/imp-"$symbol".zsh-theme -L -o ZSH_CUSTOM/themes/imp-"$symbol".zsh-theme &&
done
```
Then set the theme in your **.zshrc** file. By default, the pipe theme is selected.
Modify according to your case.

```
#ZSH_THEME="imp.zsh-theme"
#ZSH_THEME="imp-ampersand.zsh-theme"
#ZSH_THEME="imp-asterisk.zsh-theme"
#ZSH_THEME="imp-at-sign.zsh-theme"
#ZSH_THEME="imp-close-brace.zsh-theme"
#ZSH_THEME="imp-close-bracket.zsh-theme"
#ZSH_THEME="imp-close-parenthesis.zsh-theme"
#ZSH_THEME="imp-colon.zsh-theme"
#ZSH_THEME="imp-dollar.zsh-theme"
#ZSH_THEME="imp-exclamation-mark.zsh-theme"
#ZSH_THEME="imp-greater-than.zsh-theme"
#ZSH_THEME="imp-hash.zsh-theme"
#ZSH_THEME="imp-less-than.zsh-theme"
#ZSH_THEME="imp-open-brace.zsh-theme"
#ZSH_THEME="imp-open-bracket.zsh-theme"
#ZSH_THEME="imp-open-parenthesis.zsh-theme"
#ZSH_THEME="imp-percent-sign.zsh-theme"
ZSH_THEME="imp-pipe.zsh-theme"
#ZSH_THEME="imp-plus.zsh-theme"
#ZSH_THEME="imp-question-mark.zsh-theme"
#ZSH_THEME="imp-semicolon.zsh-theme"
#ZSH_THEME="imp-tilde.zsh-theme"
```
And enjoy so many prompt symbol options!
