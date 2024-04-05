{ pkgs, lib, config, inputs, ... }:

{
  languages.terraform.enable = true;
  languages.terraform.version = "1.7.5";

  # languages.opentofu.enable = true;

  pre-commit.hooks.terraform-format.enable = true;
  pre-commit.hooks.terraform-format.package = config.languages.terraform.package;
  # pre-commit.hooks.terraform-format.package = config.languages.opentofu.package;
}
