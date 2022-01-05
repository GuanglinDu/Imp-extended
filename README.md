#  Imp-extended themes

Themes based on [Imp](https://github.com/igormp/Imp) to provide more prompt symbol options, see below.

## Installation

Follow the [oh-my-zsh instructions](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization#overriding-and-adding-themes) or run the following:
```
  mkdir -p $ZSH_CUSTOM/themes &&
  symbols="ampersand asterisk at-sign close-brace close-bracket close-parenthesis " \
          "colon dollar exclamation-mark greater-than hash less-than open-brace " \
          "open-bracket open-parenthesis percent-sign pipe plus question-mark " \
          "semicolon tilde" &&
  for symbol in $symbols &&
  do curl https://raw.githubusercontent.com/GuanlginDu/Imp-extended/master/imp-"$symbol".zsh-theme -L -o $ZSH_CUSTOM/themes/imp-"$symbol".zsh-theme done
```
Then set the theme in your **.zshrc** file. By default, the pipe symbol is selected.
Modify according to your case.

```
#ZSH_THEME="imp-ampersand"
#ZSH_THEME="imp-asterisk"
#ZSH_THEME="imp-at-sign"
#ZSH_THEME="imp-close-brace"
#ZSH_THEME="imp-close-bracket"
#ZSH_THEME="imp-close-parenthesis"
#ZSH_THEME="imp-colon"
#ZSH_THEME="imp-dollar"
#ZSH_THEME="imp-exclamation-mark"
#ZSH_THEME="imp-greater-than"
#ZSH_THEME="imp-hash"
#ZSH_THEME="imp-less-than"
#ZSH_THEME="imp-open-brace"
#ZSH_THEME="imp-open-bracket"
#ZSH_THEME="imp-open-parenthesis"
#ZSH_THEME="imp-percent-sign"
ZSH_THEME="imp-pipe"
#ZSH_THEME="imp-plus"
#ZSH_THEME="imp-question-mark"
#ZSH_THEME="imp-semicolon"
#ZSH_THEME="imp-tilde"
```

And enjoy so many prompt symbol options!
