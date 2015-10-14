#!/bin/sh
#
# Copyright (c) 2015 Jeromy Johnson
# MIT Licensed; see the LICENSE file in this repository.
#

test_description="test output of sysdiag command"

. lib/test-lib.sh

test_init_ipfs

test_expect_success "ipfs diag sys succeeds" '
	ipfs diag sys > output
'

test_expect_success "output contains some expected keys" '
	grep "virt" output &&
	grep "interface_addresses" output &&
	grep "arch" output
'

test_done
