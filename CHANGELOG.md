# 2025

- [2025-02-12] [documentation-guide] `IFS-4492`: remove instruction to set displayVersion

# 2024

- [2024-12-05] [documentation-guide] `IFS-4249`: add definition for versioning through git and set explicit versioning deprecated
- [2024-11-12] [glossary] `IFS-4363`: fix glossary links, exclude old glossary page from search index
- [2024-11-06] [glossary] `IFS-4209`: removed obsolete glossary entries
- [2024-09-26] [glossary] `IFS-4186`: fix glossary links that broke during the 3.1 release 
- [2024-08-22] [documentation-guide] `IFS-4017`: add guide for creating Antora components
- [2024-06-19] [documentation-guide] `IFS-3823`: add guide for working with the glossary
- [2024-06-19] [glossary] `IFS-3823`: change glossary structure & introduce status model:
  - change glossary entries from definition lists to headlines with short paragraphs
  - add headlines for grouping entries by their first letter
  - add markup for marking terms as "proposed", "revised", "superseded" and "deprecated"
- [2024-06-12] [glossary] `IFS-3736`: revise term "IT-System", add new terms "IT-Systemtyp", "Backend", "Frontend" and revise term "Batch"
- [2024-06-12] [glossary] `IFS-3736`: mark term "Anwendungssystem" as superseded by "Anwendung" and revise terms "Anwendung", "Geschäftsanwendung" and "Querschnittsanwendung" accordingly
- [2024-06-11] [documentation-guide] `IFS-3735`: moving partials licence & deprecations from module glossary to documentation guide
- [2024-05-31] [documentation-guide] `IFS-3670`: add guides for managing content sources and versioning content
- [2024-05-07] [documentation-guide] `IFS-2593`: add markup for marking content changes (i.e. new and revised content)
- [2024-05-07] `IFS-2593`: add modules to the changelog
- [2024-05-03] [documentation-guide] `IFS-3665`: add documentation guide from isyfact-standards
- [2024-04-29] [glossary] `IFS-3676`: remove GUI component from the definition of an "IT-System"
- [2024-04-26] [glossary] `IFS-2816`: mark term "Blaupause" as obsolete & introduce new term "Referenzarchitektur"
- [2024-04-24] [glossary] `IFS-2784`: move module `literaturextern` to isyfact-standards 3.x and make it obsolete for 4.x
- [2024-04-18] `IFS-2797`: refactor content sources into [components with no versions](https://docs.antora.org/antora/latest/component-with-no-version/) & add the documentation guide:
  - changes to components with no versions become effective immediately
  - Antora won't assign a version to the glossary in the UI
  - the documentation guide will move from release 3 and 4 into its own component with no version
- [2024-04-18] `IFS-2797`: remove Maven build
- [2024-04-18] `IFS-2797`: shorten changelog and translate it to English:
  - many entries are obsolete as its contents aren't present anymore on this branch

# Before 2024

- `IFS-2273`: [glossary] add partials for deprecation warnings
- `IFS-1344`: introduce CI-Friendly builds
- `IFS-1793`: describe syntax highlighting for listings
- `IFS-593`: describe how to use tags & split documentation guide into pages
- `IFS-1278`: add template for new pages
- `IFS-241` & `IFS-331`: define custom admonition blocks with custom icons
- `IFS-212`: introduce "one sentence per line" rule
