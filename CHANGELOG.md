# 2.5.0
- `IFS-381`: Release 2.5.0
  - Enthält Backport der Dokumentation für DIN NORM 91379, IFS-1912, IFS-1467 und IFS-1628
  - Update aller AsciidoctorJ-Versionen
- `ISY-658`: Abschnitt "Anmerkung zum Parallelbetrieb von AufrufKontextVerwalter und MdcHelper" hinzugefügt

# 2.4.0
- `IFS-546`: Vorgaben für Properties zu komplexen Datentypen ergänzt
- `IFS-729`: Handbuch für techn. Autoren: Ursache und Lösungen für Fehler bei der Generierung von PDFs beschrieben
- `IFS-993`: Passagen zum Thema vor Logging-Konzept Version 3.0 wurde entfernt
- `IFS-536`: Die Überschriften wurden korrekt mit ASCIIDOC [[]] Klammern ausprogrammiert
- `IFS-624`: SAGA-Referenzen durch Architekturrichtlinie der IT des Bundes ersetzt
- `IFS-469`: Komponenten eines IT-Systems werden über eine Konfigurationsklasse im Stammpackage konfiguriert
- `IFS-543`: Vorgabe für die Verwendung von Dependency-Injection eingefügt
- `IFS-1162`: Interne Verschlüsselung als SOLL-Anforderung an eine Systemlandschaft beschrieben
- `IFS-1092`: Übertragungswege von Daten in der internen Servicekommunikation beschrieben
- `IFS-992`: Abschnitt "IsyFact-konforme Anwendungen" klarer beschrieben
- `IFE-354`: Veraltete Version von _Konzept Sicherheit Keycloak_ gelöscht

# 2.3.0
- `IFS-1109`: Nutzungsvorgaben Umgang mit Sonderzeichen:
  - Schnittstellenbeschreibung um neue Funktionen zum Erfassen von Metadaten ergänzt
  - Verwendung des Legacy-Transformators hinzugefügt
  - Tabelle mit Transformationsregeln zum Transformieren von DIN SPEC 91379 nach String Latin 1.1 eingefügt.
- `IFS-1035`: Beschreibung des Zeichen-Validators zu den Sonderzeichen-Nutzungsvorgaben hinzugefügt
- `IFS-994`: Passagen zum Thema ASV wurden entfernt
  
# 2.2.0
- `IFS-211`: Konventionen zur Quellcodeablage hinzugefügt
- `IFS-472`: Dokument IF-Einstieg überarbeiten
- `IFS-489`: Entferne beim Loggen deklarierte Throwables in Methodensignaturen
- `IFS-516`: Versionierungskonzept Schnittstellen mit "Best-Practices" + REST erweitern
- `IFS-542`: Ergänzung zu Aufnahmen der Korrelations-ID im Aufruf-Kontext in Detailkonzept_Komponente-Batch
- `IFS-597`: Verwendung der Klasse `IsyHttpInvokerServiceExporter` anstatt `HttpInvokerServiceExporter`
- `IFS-563`: Dokumentation MDC-Filter
- `IFS-658`: Vorgabe "Source-Code Kommentierung auf Englisch"
- `IFS-929`: 
    - Zusätzlichen Zeichen und Beschreibung der Komponente im Zuge der Umsetzung von DIN SPEC 91379 aktualisiert.
    - Tabelle mit Transkriptionsregeln im Zuge der Umsetzung von DIN SPEC 91379 eingefügt.
- `IFS-962`: Alte Tickets zur Anpassung der Dokumentation auf Aktualität geprüft und Dokumentation entsprechend angepasst.
- `IFE-223`: Umzug der Session-Dokumentation in den Baustein
  - *Nutzungsvorgaben isy-session* und *Konzept Sessionmanagement* sind jetzt in isy-session zu finden

# 2.1.0
- `IFS-326`: Anpassung der Task-Nutzungsvorgaben, um das Starten/Stoppen der Tasks
- `IFS-355`: Dokumententitel wurden verkürzt und ein Untertitel für den Dokumententyp ergänzt
- `IFS-263`: Hinweis zu Zwischenreleases für Änderungen bei Ressourcen in Versionierungskonzept aufgenommen
- `IFS-279`: Anleitung VS Code hinzugefügt und Ausführungsdefinitionen in der pom.xml erläutert
- `IFS-366`: Upgrade von asciidoctor-maven-plugin und asciidoctorj-pdf
- `IFS-363`: Maven Central in Tutorial integrieren
- `IFS-367`: Regelungen zu Präfixen bei Maven-Artefakten hinzugefügt
- `IFS-382`: Verweis auf CAMS aus Grafik entfernen
- `IFS-565`: Warning bei list item index behoben 
- `IFS-387`: Datei docinfo.adoc entfernen
- `IFS-409`: Namenskonventionen: Batchparameter eingefügt
- `IFS-433`: Handbuch für techn. Autoren angepasst: Auslagerung der Dokumentation in Bausteine integriert
- `IFS-419`: Dokumentation für Maven-Versionierungs-Plugin erstellt
- `IFS-436`: Überwachung: Konfiguration des HealthEndpoints statt ping-Methode hinzugefügt.
- `IFS-458`: Tidy-Plugin eingebunden, so dass immer ein Check ausgeführt wird. Alle pom.xml Dateien mit tidy:pom fortmatiert und getestet.
- `RF-316`: Detailkonzept Datenzugriff um Namenskonventionen für Datenbankschemas erweitert
- `IFS-571`: Erstellung eines Migrationsleitfadens IsyFact 1.8 nach IsyFact 2.x
- `IFS-293`: Zusammenfassung für das Management in Einleitung integriert
- `IFS-488`: Beschreibung der Order-Eingabe für 'stelltAufrufKontextBereitAdvisor' ergänzt
- `IFS-393`: Beschreibung der Behandlung von Fehlern aus Nachbarsystemen
- `IFS-376`: Vorgaben zu DAOs im Detailkonzept Persistenz zusammenfassen
- `IFS-618`: Dokumentenbuild auf AsciidoctorJ-Extensions umgestellt. Changelogs werden zukünftig ebenfalls von Markdown auf Ascii-Doc umgestellt.

# 2.0.0
- `IFS-228`: Einführung von Spring Boot in die Bausteine der IsyFact-Standards
- `IFS-353`: Ablösung von Dozer durch Orika beschrieben
- `IFS-354`: REST als Option für interne Schnittstellen beschrieben

# 1.8.1
- `IFS-417`: Abschnitt zur Korrelations-ID in Serivice-SST von Nutzungsvorgaben Sicherheit in Detailkonzept Service verschoben.

# 1.8.0
- `IFE-78`: Bausteindokumentation JSF (isy-web) angepasst
- `IFS-259`: DSGVO Anforderungen in Logging-Konzept integriert
- `IFS-263`: Hinweis zu Zwischenreleases für Änderungen bei Ressourcen in Versionierungskonzept aufgenommen
- `IFS-375`: Verweis auf Versionierungskonzept ergänzt und redundante Texte entfernt
- `IFS-409`: Namenskonventionen: Batchparameter eingefügt
- `IFS-419`: Dokumentation für Maven-Versionierungs-Plugin erstellt
- `IFS-458`: Tidy-Plugin eingebunden, so dass immer ein Check ausgeführt wird. Alle pom.xml Dateien mit tidy:pom formatiert und getestet.
- `IFS-468`: Anpassung Dozer-Link nach Umzug auf GitHub (ab Dozer 6.x)

# 1.7.0
- `IFE-11`: Beschreibungen der JSF-Komponenten erweitert
- `IFE-15`: Beschreibungen 4-Augen-Prinzip erweitert
- `IFE-16`: Unterstützung von IE8 eingestellt, Dokumentation angepasst und row-df Einträge entfernt
- `IFE-35`: Dokumentation von List Picker Filterung mit Servlets hinzugefügt.
- `IFE-39`: Dokumentation zu Breadcrumbs hinzugefügt
- `IFE-45`: Vorlagen um Colophon und PDF-Theme für Closed-Source-Dokumente erweitert
- `IFE-46`: ReadOnly-Hinweis bei DropDownWidgets aufgenommen
- `IFS-175`: Transaktionssteuerung auf Ebene des Anwendungskerns statt in der Nutzungsschicht
- `IFS-198`: Fehlerbehandlung außerhalb des Dialogablaufs ergänzt
- `IFS-212`: Handbuch für technische Autoren: Regel "Ein Satz pro Zeile" hinzugefügt
- `IFS-214`: Tabellensortierung - Screenshot ausgetauscht, Beschreibung konkretisiert
- `IFS-215`: Vorgaben zur Interaktion mit dem Hauptfenster integriert
- `IFS-222`: Filter Reihenfolge für Encoding angepasst
- `IFS-225`: Anpassung der Logging-Nutzungsvorgaben aufgrund Änderungen im Logging-Framework (Begrenzung Log-Länge)
- `IFS-239`: Migration weiterer Dokumente: Anleitung zur Arbeit mit Enterprise Architekt (aus der Vorlage zur Systemspezifikation), IsyFact-Whitepaper
- `IFS-240`: Verweis auf Änderungshistorie in jedes Dokument aufgenommen.
- `IFS-241` & `IFS-331`: Neue Admonition Blocks definiert, eigene Icons für alle Blocks festgelegt
- `IFS-270`: Hinweis zu Korrelations-IDs (UUID statt Batch-ID) bei Batches hinzugefügt
- `IFS-294`: Ablageorte der Referenzarchitektur sowie der Checkstyle-Konfiguration korrigiert
- `IFS-295`: Abschnitt "Erste Schritte" überarbeitet.
- `IFS-298`: Tutorial auf Maven Central umgestellt
- `IFS-299` & `IFS-374`: Kopfbereiche der HTML- und PDF-Dokumente neu gestaltet, neue Schriftart für PDF-Dokumente: Caladea
- `IFS-311`: Auf Nutzung isy-dokumentvorlagen umgestellt
- `IFS-360`: Ablageorte einzelner Dokumente korrigiert
- `IFS-361`: Template Anpassung Tutorial (Tabellenformatierung)

# 1.6.0
- `IFS-96`: Autoscroll-Funktion für Tab-Controls
- `IFS-150`: OptimisticLockHandler beschrieben
- `IFS-159`: Vorhalten von Skripten zum Aktualisieren von DB-Schemas konkretisiert 
- `IFS-177`: Betriebliche Behandlung von Batch-Logs
- `IFS-179`: Konzept "Grundlagen der internen Servicekommunikation" um Queue-Überwachung erweitert
- `IFS-187`: Überführung technischer Anteile aus Styleguide in Detailkonzept Web-GUI
- `IFS-189`: Dokumentation an neues Repository `isyfact-standards` angepasst
- `IFS-196`: "Leitfaden Entwicklungsumgebung" aufgelöst, Inhalte in "Einrichtung Entwicklungsumgebung" migriert
- `IFS-202`: Dokumentation DownloadHelper
- `IFS-205`: Dokumentation zu horizontaler Navigation hinzugefügt
- `IFS-218`: Hinweise zu DSGVO-Markern für das Logging hinzugefügt
- `IFS-269`: Einrichtung Entwicklungsumgebung: Gliederungsebenen korrigiert
