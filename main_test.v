module main

import regex { RE }

// https://github.com/vlang/v/blob/master/vlib/regex/regex_util.v#L19
fn create_re(pattern string) RE {
	mut re := regex.regex_opt(pattern) or { panic(err) }
	return re
}

fn match_line(pattern string, line string) {
	mut re := create_re(pattern)
	// https://github.com/vlang/v/blob/master/vlib/regex/regex_util.v#L127
	_, end := re.match_string(line)
	assert end == line.len
}

fn test_info() {
	got := info()

	os := 'OS: '
	// https://github.com/vlang/v/blob/master/examples/regex/regex_example.v#L23
	os_re := r'\w+(\: \w+)?(\(\w+\))?'

	arch := 'Architecture: '
	arch_re := r'_?([a-z]{1,4})(\d{0,3})(_?[a-z]{0,12})'

	ver := 'Version: '
	ver_re := r'V \d\.\d\.\d [0-9a-f]{7}'

	mut new_line := create_re('\n')
	lines := new_line.split(got)

	match_line(os + os_re, lines[0])
	match_line(arch + arch_re, lines[1])
	match_line(ver + ver_re, lines[2])
}
