Ebben a kurzusban a legtöbb technológiához használhatjuk a <a href="https://code.visualstudio.com" target="_blank">Visual Studio Code</a> szerkesztőt, néhány előre telepített extension segítségével.

Az alábbi fejezetek bemutatják, hogyan tudjuk használni a különböző technológiákat, és kitérnek arra is, hogy esetleg még milyen szoftvereket érdemes telepítenünk.

## XDM, ER, UML, relációs diagramok

A különböző típusú diagramokat bármilyen grafikus szerkesztővel megrajzolhatjuk, de akár a <a href="https://graphviz.org" target="_blank">Graphviz</a>t is használhatjuk hozzá, ami egyszerűen telepíthető a népszerű operációs rendszerek alatt. Ilyenkor *.dot* kiterjesztésű fájlokat kell írnunk, amelyek egy jól definiált nyelv segítségével írják le a diagramjainkat.

A <a href="https://marketplace.visualstudio.com/items?itemName=joaompinto.vscode-graphviz" target="_blank">Graphviz (dot) language support for Visual Studio Code</a> nevű VSCode extension segítségével egyszerűen legenerálhatjuk a képeket a szöveges fájlokból, de akár parancssorban is megtehetjük ugyanezt a következő parancs segítségével:

<pre class="prettyprint">dot $FILENAME -Tpng -O</pre>

## XML, DTD, XML séma

XML fájlok szerkesztéséhez telepítsük az <a href="https://marketplace.visualstudio.com/items?itemName=redhat.vscode-xml" target="_blank">XML</a> extensiont a VSCode-ban. Ez a kiterjesztés lehetővé teszi XML fájlok egyszerű validációját is DTD és XML séma alapján.

## Markdown

A Markdown fájlok előnézetének megtekintéséhez telepítsük a <a href="https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced" target="_blank">Markdown Preview Enhanced</a> VSCode extensiont.

## Java

Java alkalmazások futtatásához bármilyen Java IDE-t használhatunk, például

* Visual Studio Code-ot a <a href="https://marketplace.visualstudio.com/items?itemName=redhat.java" target="_blank">Language Support for Java(TM) by Red Hat</a> extensionnel, vagy
* az <a href="https://www.jetbrains.com/idea" target="_blank">IntelliJ IDEA</a> fejlesztőeszközt.

## C#

C# alkalmazások futtatásához bármilyen C# IDE-t használhatunk, például

* Visual Studio Code-ot a <a href="https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csharp" target="_blank">C#</a> extensionnel, vagy
* a <a href="https://visualstudio.microsoft.com" target="_blank">Visual Studio</a> fejlesztőeszközt.

A C# alkalmazásainkat Windows, Linux és macOS operációs rendszeren is futtathatjuk a <a href="https://dotnet.microsoft.com/download" target="_blank">.NET Core</a> segítségével, ami egy platformfüggetlen .NET platform implementáció. <a href="https://code.visualstudio.com/docs/languages/dotnet" target="_blank">Ez a tutorial</a> elmagyarázza, hogyan használhatjuk a .NET Core-t Visual Studio Code-ban.

## Vue

A <a href="/courses/xml/labs/9" target="_blank">9. gyakorlat</a> megoldásában a webes kliens alkalmazás a Vue keretrendszer segítségével íródott. A maximális editor supporthoz telepítsük a Visual Studio Code <a href="https://marketplace.visualstudio.com/items?itemName=octref.vetur" target="_blank">Vetur</a> extensionjét.

## XPath

Az XPath kifejezések kiértékeléséhez telepítsük az <a href="https://marketplace.visualstudio.com/items?itemName=DotJoshJohnson.xml" target="_blank">XML Tools</a> VSCode extensiont, amely XPath 1.0 kompatibilis.

Néhány feladat megoldásához szükségünk lesz egy XPath 2.0 engine-re, amelyet például az <a href="https://www.oxygenxml.com" target="_blank">Oxygen XML Editor</a>ban találhatunk.

## XSLT

XSLT fájlok végrehajtásához először le kell töltenünk a <a href="https://www.saxonica.com/download/java.xml" target="_blank">Saxon-HE</a> Java libraryt. A feladatok megoldásainak írásakor a legfrissebb verzió a 10-es volt.

Ezek után telepítsük az <a href="https://marketplace.visualstudio.com/items?itemName=WashirePie.vscode-xsl-transform" target="_blank">XSL Transform</a> VSCode extensiont és állítsuk be a leírása alapján, hogy megtalálja a fenti JAR fájlt.

Ezen kívül használhatjuk az <a href="https://www.oxygenxml.com" target="_blank">Oxygen XML Editor</a> beépített XSLT funkcionalitását.

## XQuery

Ahhoz, hogy az összes szükséges XQuery funkcionalitást használni tudjuk, két lehetőségünk van:

* Használhatjuk az <a href="https://www.oxygenxml.com" target="_blank">Oxygen XML Editor</a>t.
* Használhatjuk az <a href="http://mxquery.org" target="_blank">MXQuery</a> libraryt saját bash scripttel.

Az MXQuery egy vékony XQuery motor, amit JAR fájlként publikáltak.

A szükséges bash script a következő:

<pre class="prettyprint">#!/usr/bin/env bash

java \
  -jar \
  mxquery.jar \
  --xquery11Mode \
  --updateMode \
  --updateFiles \
  --backupUpdates \
  --queryFile $1
</pre>

A script input paramétere az XQuery fájl elérési útja. A fenti konfigurációval a script vagy a standard kimenetre fogja kiírni az eredmény XML-t, vagy módosító műveletek esetén felülírja az eredeti XML fájlt, és annak tartalmát lementi egy <i>*.bak</i> fájlba.

## XML DB

Az XML DB gyakorlat megoldásához először telepítenünk kell az <a href="https://www.oracle.com/database/technologies/xe-downloads.html" target="_blank">Oracle Database XE</a> adatbázist. A feladatok megoldásainak írásakor a 18c XE verziót használtam.

Kliensként használhatjuk az <a href="https://www.oracle.com/tools/downloads/sqldev-downloads.html" target="_blank">Oracle SQL Developer</a> eszközt, vagy a Visual Studio Code-ot az <a href="https://marketplace.visualstudio.com/items?itemName=Oracle.oracledevtools" target="_blank">Oracle Developer Tools for VS Code</a> extensionnel.
