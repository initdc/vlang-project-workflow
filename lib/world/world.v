module world

import lib.hello { hello }

fn world() string {
	return 'World!'
}

pub fn hello_world() string {
	return hello() + world()
}
