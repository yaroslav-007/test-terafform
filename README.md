Creat github tocken
Set it localy with export TF_VAR_github_token=

install rbenv
rbenv install 2.3.1
rbenv local 2.3.1
rbenv versions

in ~/.bashrc add the following

	eval "$(rbenv init -)"
	true
	export PATH="$HOME/.rbenv/bin:$PATH"

source ~/.bash_profile
gem install bundler
bundle install
in testing.tfvars set repo name
in  test/integration/default/default_test.rb in describe http put url of repo
#################################
		control 'check_website' do

		  describe http('https://github.com/VisitBG/example-kitchen') do
 		   its('status') { should cmp 200 }
 		   its('body') { should match 'My awesome codebase' }
 		 end

		end
###############################
bundle exec kitchen list
kitchen test

