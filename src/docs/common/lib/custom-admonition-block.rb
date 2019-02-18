RUBY_ENGINE == 'opal' ?
  (require 'custom-admonition-block/extension') :
  (require_relative 'custom-admonition-block/extension')

Extensions.register do
  block CustomAdmonitionBlock
  docinfo_processor CustomAdmonitionBlockDocinfo
  block ArchitekturAdmonitionBlock
  block StyleguideAdmonitionBlock
  block AnwendungsanforderungAdmonitionBlock
  block SicherheitAdmonitionBlock
  block InfoAdmonitionBlock
end
