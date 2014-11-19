#!/bin/sh

EXISTING_FIO=`git config --global --get user.name`
echo "Enter your first and lastname: [$EXISTING_FIO]"
read FIO

if [ "$FIO" == "" ]; then
    FIO=$EXISTING_FIO
fi

EXISTING_EMAIL=`git config --global --get user.email`
echo "Enter your e-mail: [$EXISTING_EMAIL]"
read EMAIL

if [ "$EMAIL" == "" ]; then
    EMAIL=$EXISTING_EMAIL
fi

git config --global user.name "$FIO"
git config --global user.email "$EMAIL"
git config --global github.user ixax

git config --global color.ui auto
git config --global color.diff auto
git config --global color.branch auto
git config --global color.grep auto
git config --global color.interactive auto
git config --global color.status auto

git config --global core.autocrlf input
git config --global core.editor vim
git config --global core.preloadindex true

git config --global diff.noprefix true
git config --global diff.renames true

git config --global push.default current
git config --global merge.log true

git config --global alias.co checkout
git config --global alias.st status
git config --global alias.di diff
git config --global alias.ci commit
git config --global alias.undo-commit "reset --soft HEAD^"
git config --global alias.hist "log --pretty=format:'%C(yellow)%h%C(reset) %ad | %C(75)%s%C(reset) %C(yellow)%d%C(reset) [%an]' --graph --date=short --branches --all"

git config --global --add hub.host github.yandex-team.ru

exit 0
