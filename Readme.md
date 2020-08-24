# isy-documentation

<div align="center">
    <img src="https://git.zssi.ivbb.bund.de/IsyFact/isy-documentation/badges/master/pipeline.svg" alt="build-badge"/>
</div>

`isy-documentation` enthält alle Dokumente wie beispielsweise Blaupausen, Konzepte und Nutzungsvorgaben des IsyFact Standards.

Die Dokumentation ist in Asciidoc geschrieben, pro Dokument wird immer eine HTML und eine PDF Version erzeugt.

## Dokumentation bauen

Die Dokumentation kann mit folgenden Befehlen gebaut werden.

```
$ git clone https://git.zssi.ivbb.bund.de/IsyFact/isy-documentation.git

$ cd isy-documentation

$ mvn clean compile
```

## Einzelnes Dokument bauen

Das Bauen eines einzelnen Dokuments (z.B. IsyFact-Whitepaper) ist ebenfalls möglich:

```
$ mvn compile -Pbuild-component -Dcomponent.name=IsyFact-Whitepaper -Dcomponent.src=src/docs/10_IsyFact-Standards/00_Allgemein/IsyFact-Whitepaper
```

Das Dokument befindet sich anschließend direkt im Zielverzeichnis für HTML oder PDF.

## Weiterentwicklung der Dokumentation

Eine Anleitung zur Erstellung und Pflege von Dokumenten steht im [Handbuch für technische Autoren](https://git.zssi.ivbb.bund.de/IsyFact/isy-documentation/-/blob/master/src/docs/10_IsyFact-Standards/50_Werkzeuge/Handbuch_fuer_technische_Autoren/master.adoc), welches ebenfalls Teil von `isy-documentation` ist.