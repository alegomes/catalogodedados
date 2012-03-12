require 'spec_helper'

describe Orgao do
	 it { should belong_to(:siorg) }
	
	it 'belongs to SIORG'
	it 'has one licence'
	it 'has many links'
end
