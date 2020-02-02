powershell -Command "Invoke-WebRequest -Uri 'http://docs.fitnesse.org/fitnesse-standalone.jar?responder=releaseDownload&release=20200128' -OutFile 'fitnesse-standalone.jar'"

mkdir plugins

powershell -Command "Invoke-WebRequest -Uri 'https://repo1.maven.org/maven2/nl/praegus/toolchain-fitnesse-plugin/1.20/toolchain-fitnesse-plugin-1.20.jar' -OutFile 'plugins\toolchain-fitnesse-plugin-1.20.jar'"
powershell -Command "Invoke-WebRequest -Uri 'https://repo1.maven.org/maven2/nl/praegus/fitnesse-autocomplete-responder/1.0.16/fitnesse-autocomplete-responder-1.0.16.jar' -OutFile 'plugins\fitnesse-autocomplete-responder-1.0.16.jar'"
powershell -Command "Invoke-WebRequest -Uri 'https://repo1.maven.org/maven2/com/github/tcnh/fitnesse-bootstrap-plus-theme/2.0.2/fitnesse-bootstrap-plus-theme-2.0.2.jar' -OutFile 'plugins\fitnesse-bootstrap-plus-theme-2.0.2.jar'"
