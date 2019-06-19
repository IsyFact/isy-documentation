require 'asciidoctor/extensions'

# Ein Plugin um AsciiDoctor mit Custom-Admonition-Blocks zu erweitern.
#
# Syntax
#
#   [ARCHITEKTURREGEL]
#   ====
#   Lorem Ipsum
#   ====
#
class ArchitekturAdmonitionBlock < Asciidoctor::Extensions::BlockProcessor
  use_dsl
  named :ARCHITEKTURREGEL
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'architekturregel'
    attrs['caption'] = 'Architekturregel'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end

end

class StyleguideAdmonitionBlock < Asciidoctor::Extensions::BlockProcessor
  use_dsl
  named :STYLEGUIDE
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'styleguide'
    attrs['caption'] = 'Styleguide'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end

end

class AnwendungsanforderungAdmonitionBlock < Asciidoctor::Extensions::BlockProcessor
  use_dsl
  named :ANWENDUNGSANFORDERUNG
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'anwendungsanforderung'
    attrs['caption'] = 'Anwendungsanforderung'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end

end

class SicherheitAdmonitionBlock < Asciidoctor::Extensions::BlockProcessor
  use_dsl
  named :SICHERHEIT
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'sicherheit'
    attrs['caption'] = 'Sicherheit'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end

end

class IsyFactAdmonitionBlockDocinfo < Asciidoctor::Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>
.admonitionblock td.icon .icon-architekturregel:before {content:"\f19c";color:#003D86;}
.admonitionblock td.icon .icon-sicherheit:before {content:"\f132";color:#003D86;}
.admonitionblock td.icon .icon-styleguide:before {content:"\f1fc";color:#003D86;}
.admonitionblock td.icon .icon-anwendungsanforderung:before {content:"\f085";color:#003D86;}
</style>'
  end
end

Asciidoctor::Extensions.register do
  block ArchitekturAdmonitionBlock
  block StyleguideAdmonitionBlock
  block AnwendungsanforderungAdmonitionBlock
  block SicherheitAdmonitionBlock
  docinfo_processor IsyFactAdmonitionBlockDocinfo
end
