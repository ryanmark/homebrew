actions :cask, :uncask, :install, :uninstall
default_action :install

attribute :name,
  name_attribute: true,
  kind_of: String,
  regex: /^[\w-]+$/

attribute :options,
  kind_of: String

def casked?
  `/usr/local/bin/brew cask list 2>/dev/null`.split.include?(name)
end
