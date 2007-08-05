# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

# Define metadata
name           'Acme-Aspartame';
all_from       'lib/Acme/Aspartame.pm';

build_requires 'Test::More';
build_requires 'Filter::Util::Call'; # builds source filters
build_requires 'Filter::Simple'; # builds source filters
build_requires 'Bloom::Filter'; # module with Filter in it that isn't Filter::
build_requires 'Switch';        # uses a source filter

auto_install;
WriteAll;

