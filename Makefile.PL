use inc::Module::Install;
name 'Statistics-Associations';
all_from 'lib/Statistics/Associations.pm';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
