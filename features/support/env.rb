PROJECT_ROOT = Pathname.new(File.expand_path(File.join(File.dirname(__FILE__), '../..')))

$LOAD_PATH.unshift PROJECT_ROOT + 'lib'

require PROJECT_ROOT + 'spec' + 'spec_helper'
