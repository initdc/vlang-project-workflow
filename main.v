module main

import v.pref { get_host_arch, get_host_os }
import v.util.version { full_v_version }

fn info() string {
	os := get_host_os()
	// https://github.com/vlang/v/blob/master/vlib/v/pref/os.v#L128
	os_str := os.str()

	arch := get_host_arch()
	// https://github.com/vlang/v/blob/master/vlib/v/pref/pref.v#L896
	arch_str := arch.str()
	arch_str_ptr := &arch_str

	// https://github.com/vlang/v/blob/master/vlib/v/util/version/version.v#L28
	ver := full_v_version(false)

	return 'OS: $os_str\n' + 'Architecture: ${*arch_str_ptr}\n' + 'Version: $ver\n'
}

fn main() {
	print(info())
}
