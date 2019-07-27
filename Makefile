define do_terraform
  docker-compose run --rm terraform $1
endef

version:
	@$(call do_terraform,version)

init:
	@$(call do_terraform,init)

fmt:
	@$(call do_terraform,fmt)

plan:
	@$(call do_terraform,plan)

apply:
	@$(call do_terraform,apply)

destroy:
	@$(call do_terraform,destroy)
