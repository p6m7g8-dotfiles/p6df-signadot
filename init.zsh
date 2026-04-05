# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::signadot::deps()
#
#>
######################################################################
p6df::modules::signadot::deps() {

  # shellcheck disable=2034
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-kubernetes
  )
}

######################################################################
#<
#
# Function: p6df::modules::signadot::aliases::init()
#
#>
######################################################################
p6df::modules::signadot::aliases::init() {

  local _module="$1"
  local _dir="$2"
  p6_alias "sdsl"  "p6df::modules::signadot::sandbox::list"
  p6_alias "sdsg"  "p6df::modules::signadot::sandbox::get"
  p6_alias "sdsa"  "p6df::modules::signadot::sandbox::apply"
  p6_alias "sdsd"  "p6df::modules::signadot::sandbox::delete"

  p6_alias "sdrgl" "p6df::modules::signadot::routegroup::list"
  p6_alias "sdrgg" "p6df::modules::signadot::routegroup::get"

  p6_alias "sdcl"  "p6df::modules::signadot::cluster::list"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::signadot::external::brews()
#
#>
######################################################################
p6df::modules::signadot::external::brews() {

  p6df::core::homebrew::cli::brew::install signadot/signadot-cli/signadot-cli

  p6_return_void
}

######################################################################
#<
#
# Function: str str = p6df::modules::signadot::profile::mod()
#
#  Returns:
#	str - str
#
#>
######################################################################
p6df::modules::signadot::profile::mod() {

  local str

  p6_return_str "$str"
}

######################################################################
#<
#
# Function: p6df::modules::signadot::sandbox::list()
#
#>
######################################################################
p6df::modules::signadot::sandbox::list() {

  p6_run_code "signadot sandbox list"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::signadot::sandbox::get(name)
#
#  Args:
#	name -
#
#>
######################################################################
p6df::modules::signadot::sandbox::get() {
  local name="$1"

  p6_run_code "signadot sandbox get $name"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::signadot::sandbox::apply(file)
#
#  Args:
#	file -
#
#>
######################################################################
p6df::modules::signadot::sandbox::apply() {
  local file="$1"

  p6_run_code "signadot sandbox apply -f $file"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::signadot::sandbox::delete(name)
#
#  Args:
#	name -
#
#>
######################################################################
p6df::modules::signadot::sandbox::delete() {
  local name="$1"

  p6_run_code "signadot sandbox delete $name"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::signadot::routegroup::list()
#
#>
######################################################################
p6df::modules::signadot::routegroup::list() {

  p6_run_code "signadot routegroup list"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::signadot::routegroup::get(name)
#
#  Args:
#	name -
#
#>
######################################################################
p6df::modules::signadot::routegroup::get() {
  local name="$1"

  p6_run_code "signadot routegroup get $name"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::signadot::cluster::list()
#
#>
######################################################################
p6df::modules::signadot::cluster::list() {

  p6_run_code "signadot cluster list"

  p6_return_void
}

