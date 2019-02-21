require 'asciidoctor/extensions'

include Asciidoctor

# Ein Plugin um AsciiDoctor mit Custom-Admonition-Blocks zu erweitern.
#
# Syntax
#
#   [ARCHITEKTURREGEL]
#   ====
#   Lorem Ipsum
#   ====
#
# oder
#
#   [ARCHITEKTURREGEL]
#   Lorem Ipsum
#
class ArchitekturAdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :ARCHITEKTURREGEL
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'architekturregel'
    attrs['caption'] = 'Architekturregel'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end

end

class StyleguideAdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :STYLEGUIDE
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'styleguide'
    attrs['caption'] = 'Styleguide'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end

end

class AnwendungsanforderungAdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :ANWENDUNGSANFORDERUNG
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'anwendungsanforderung'
    attrs['caption'] = 'Anwendungsanforderung'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end

end

class SicherheitAdmonitionBlock < Extensions::BlockProcessor
     use_dsl
     named :SICHERHEIT
     on_contexts :example, :paragraph

     def process parent, reader, attrs
       attrs['name'] = 'sicherheit'
       attrs['caption'] = 'Sicherheit'
       create_block parent, :admonition, reader.lines, attrs, content_model: :compound
     end

   end

class InfoAdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :INFO
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'info'
    attrs['caption'] = 'Info'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end

end

class CustomAdmonitionBlock < Extensions::BlockProcessor
  use_dsl
  named :HILFE
  on_contexts :example, :paragraph

  def process parent, reader, attrs
    attrs['name'] = 'hilfe'
    attrs['caption'] = 'Hilfe'
    create_block parent, :admonition, reader.lines, attrs, content_model: :compound
  end

end


class CustomAdmonitionBlockDocinfo < Extensions::DocinfoProcessor
  use_dsl

  def process doc
    '<style>
.admonitionblock td.icon .icon-info:before {content:"\f05a";color:#003D86;}
.admonitionblock td.icon .icon-note:before {content:"\f0f6";color:#003D86;}
.admonitionblock td.icon .icon-tip:before {content:"\f0eb";color:#003D86;}
.admonitionblock td.icon .icon-important:before {content:"\f0a1";color:#003D86;}
.admonitionblock td.icon .icon-warning:before {content:"\f071";color:#003D86;}
.admonitionblock td.icon .icon-caution:before {content:"\f06a";color:#003D86;}
.admonitionblock td.icon .icon-architekturregel:before {content:"\f19c";color:#003D86;}
.admonitionblock td.icon .icon-sicherheit:before {content:"\f132";color:#003D86;}
.admonitionblock td.icon .icon-styleguide:before {content:"\f1fc";color:#003D86;}
.admonitionblock td.icon .icon-anwendungsanforderung:before {content:"\f085";color:#003D86;}
</style>'
  end
end

