module integ_test

import lib.hello { hello }
import lib.world { hello_world }

fn test_hello() {
	assert hello() == 'Hello, '
}

fn test_hello_world() {
	assert hello_world() == 'Hello, World!'
}
