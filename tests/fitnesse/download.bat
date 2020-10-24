powershell -Command "Invoke-WebRequest -Uri 'http://docs.fitnesse.org/fitnesse-standalone.jar?responder=releaseDownload&release=20200501' -OutFile 'fitnesse-standalone.jar'"

mkdir plugins

powershell -Command "Invoke-WebRequest -Uri 'https://repo1.maven.org/maven2/nl/praegus/toolchain-fitnesse-plugin/2.0.9/toolchain-fitnesse-plugin-2.0.9.jar' -OutFile 'plugins\toolchain-fitnesse-plugin-2.0.9.jar'"
powershell -Command "Invoke-WebRequest -Uri 'https://repo1.maven.org/maven2/nl/praegus/fitnesse-autocomplete-responder/1.0.18/fitnesse-autocomplete-responder-1.0.18.jar' -OutFile 'plugins\fitnesse-autocomplete-responder-1.0.18.jar'"
powershell -Command "Invoke-WebRequest -Uri 'https://repo1.maven.org/maven2/nl/praegus/fitnesse-bootstrap-plus-theme/2.0.11/fitnesse-bootstrap-plus-theme-2.0.11.jar' -OutFile 'plugins\fitnesse-bootstrap-plus-theme-2.0.11.jar'"
