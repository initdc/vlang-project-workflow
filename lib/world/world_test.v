module world

import lib.hello { hello }

fn test_world() {
	assert world() == 'World!'
}

fn test_hello_world() {
	assert hello() + world() == 'Hello, World!'
}
