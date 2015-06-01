# blp-bcpc-cookbook
![Release](http://img.shields.io/github/release/johnbellone/blp-bcpc-cookbook.svg)
[![Build Status](http://img.shields.io/travis/johnbellone/blp-bcpc-cookbook.svg)][8]
[![Code Coverage](http://img.shields.io/coveralls/johnbellone/blp-bcpc-cookbook.svg)][9]

Wrapper cookbook which installs and configures the
[Bloomberg Clustered Private Cloud][1].

This is a refactoring of [the original cookbook][1] which utilizes
[test-kitchen][2], [Berkshelf][3] and community cookbooks for
configuration.

# Requirements

## Laptop Testing
- [Vagrant][4]
- [VirtualBox][5]

## Operating System
- [CentOS 6.5][6]
- [Ubuntu 12.04][7]

[1]: https://github.com/bloomberg/chef-bcpc
[2]: https://github.com/test-kitchen
[3]: https://github.com/berkshelf
[4]: http://vagrantup.com
[5]: http://virtualbox.org
[6]: http://www.centos.org
[7]: http://releases.ubuntu.com/12.04
[8]: http://travis-ci.org/johnbellone/blp-bcpc-cookbook
[9]: https://coveralls.io/r/johnbellone/blp-bcpc-cookbook
