from pybuilder.core import init, use_plugin

use_plugin('python.core')
use_plugin('python.flake8')
use_plugin('python.unittest')
use_plugin('python.coverage')
use_plugin('python.install_dependencies')
use_plugin('python.distutils')

default_task = ['install_dependencies', 'analyze', 'publish']
name = "helloworld"
version = "0.0.1"

@init
def initialize(project):
    project.build_depends_on('mockito')
    project.set_property('flake8_break_build', True)
    project.set_property('coverage_threshold_warn', 95)
    project.set_property('coverage_branch_threshold_warn', 95)
    project.set_property('coverage_branch_partial_threshold_warn', 95)
