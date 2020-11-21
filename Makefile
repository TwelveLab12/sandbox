# Paramétrages des commande make qui prendront des paramètres 
SUPPORTED_COMMANDS := stan

# MAKECMDGOALS => variable définie make - liste des motclés de commandes définie dans ce fichier 
SUPPORTS_MAKE_ARGS := $(findstring $(firstword $(MAKECMDGOALS)), $(SUPPORTED_COMMANDS))

ifneq "$(SUPPORTS_MAKE_ARGS)" ""
  COMMAND_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  $(eval $(COMMAND_ARGS):;@:)
endif

cssee: 
	./vendor/bin/phpcs ./

csfix:
	./vendor/bin/phpcbf
stan:
	./vendor/bin/phpstan analyse -c phpstan.neon
stanfolder:
	./vendor/bin/phpstan analyse $(COMMAND_ARGS)

	