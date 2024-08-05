.PHONY: check-profile check-env infra infra-diff

check-profile:
ifndef AWS_PROFILE
	$(error AWS_PROFILE is not set)
endif

check-env:
ifndef ENV
	$(error ENV is not set)
endif

infra: check-profile check-env
	@echo "aws --profile $(AWS_PROFILE) cloudformation deploy--stack-name infra --template-file $(ENV).yaml --capabilities CAPABILITY_NAMED_IAM"

infra-diff: check-profile check-env
	@echo "aws --profile $(AWS_PROFILE) cloudformation deploy --stack-name mad --template-file $(ENV).yaml --capabilities CAPABILITY_NAMED_IAM --no-execute-changeset | some magic | xargs aws -- profile $(AWS_PROFILE) cloudformation describe-change-set --change-set-name"
