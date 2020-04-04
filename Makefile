setup: link install

reset: clean link install

install:
	nvim +PlugClean! +PlugInstall +qa

update:
	nvim +PlugClean! +PlugInstall PlugUpdate +qa

link:
	ln -nfs ~/dotfiles/.bash_profile ~/.bash_profile
	ln -nfs ~/dotfiles/.tmux.conf ~/.tmux.conf
	ln -nfs ~/dotfiles/.vim ~/.vim
	ln -nfs ~/dotfiles/.asdf ~/.asdf
	ln -nfs ~/dotfiles/.asdf/.asdfrc ~/.asdfrc
	ln -nfs ~/dotfiles/.asdf/.tool-versions ~/.tool-versions
	ln -nfs ~/dotfiles/.asdf/.default-npm-packages ~/.default-npm-packages
	ln -nfs ~/dotfiles/.asdf/.default-gems ~/.default-gems
	ln -nfs ~/dotfiles/.railsrc ~/.railsrc
	ln -nfs ~/Dropbox/.wakatime.cfg ~/.wakatime.cfg
	heroku plugins:install heroku-accounts

clean:
	rm -rf ~/.bash_profile
	rm -rf ~/.tmux.conf
	rm -rf ~/.vim
	rm -rf ~/.asdf
	rm -rf ~/.asdfrc
	rm -rf ~/.tool-versions
	rm -rf ~/.default-npm-packages
	rm -rf ~/.default-gems
	rm -rf ~/.railsrc
	rm -rf ~/.wakatime.cfg
	heroku plugins:uninstall heroku-accounts