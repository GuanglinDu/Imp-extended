#  Imp-extended themes

Themes based on [Imp](https://github.com/igormp/Imp) to provide more prompt symbol options.
File imp.zsh-theme is Igor Moura's original one, which I used as a template.

## Installation

1. Follow the [oh-my-zsh instructions](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization#overriding-and-adding-themes) to install oh-my-zsh;
2. Follow the [Imp instructions](https://github.com/igormp/Imp) to install and configure the Imp theme;
3. And then run the following to install more prompt options:
```
mkdir -p $ZSH_CUSTOM/themes &&
for s1 in ampersand asterisk at-sign close-brace close-bracket close-parenthesis colon dollar exclamation-mark greater-than hash less-than open-brace open-bracket open-parenthesis percent-sign pipe plus question-mark semicolon tilde; do curl https://raw.githubusercontent.com/GuanglinDu/Imp-extended/master/imp-"$s1".zsh-theme -L -o "$ZSH_CUSTOM"/themes/imp-"$s1".zsh-theme; done
```
Then set the theme in your **.zshrc** file. By default, the pipe theme is selected.
Modify according to your case.

```
#ZSH_THEME="imp"
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
