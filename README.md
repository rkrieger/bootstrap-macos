# macOS Bootstrap Ansible Playbook

[![CI][badge-CI]][link-CI]

This Ansible playbook installs and configures most of the software that I use on my macOS devices for day-to-day work as well as web and software development. Since some things in macOS are somewhat hard to automate, this file contains a few manual installation/setup steps to ensure that at least my documentation is complete.


## Installation steps

The installation steps are straightforward:
  1. Clone or download this repository
  2. On a fresh system, run the `bootstrap.sh` shell script
  3. Ensure the Ansible environment is up to date
  4. Run the Ansible playbook
  5. Finish with manual configuration

The following is a shell script equivalent:
```bash
$ git clone https://github.com/rkrieger/bootstrap-macos.git
$ ./bootstrap.sh
$ ansible-galaxy install -r requirements.yml
$ ansible-playbook main.yml
```

> Note: If some Homebrew commands fail, you may need to agree to the Xcode licence or fix other Brew issues. Run `brew doctor ` for diagnosis and a fix.


## Manual configuration steps

No items documented yet.


## Testing the playbook

This project is [continuously tested on GitHub's Actions' macOS infrastructure](link-CI).


## Author

This project was created by Rogier Krieger, inspired by Jeff Geerling's [mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook).

[badge-CI]: https://github.com/rkrieger/bootstrap-macos/actions/workflows/ci.yml/badge.svg?event=push
[link-CI]:  (https://github.com/rkrieger/bootstrap-macos/actions/workflows/ci.yml
