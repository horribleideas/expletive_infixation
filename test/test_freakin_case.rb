$: << 'lib/'
require 'expletive_infixation'
require_relative 'serious_thing'
require_relative 'wow'

make_sure "SeriousThing.is_freakin_true?"
make_sure "SeriousThing.new.is_freakin_true?"
no_way    "SeriousThing.is_freakin_false?"

ExpletiveInfixation.expletive_infix = 'gosh_darn'

make_sure "SeriousThing.is_gosh_darn_true?"
make_sure "SeriousThing.new.is_gosh_darn_true?"
no_way    "SeriousThing.is_freakin_true?"
