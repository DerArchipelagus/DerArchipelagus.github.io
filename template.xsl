<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:html="http://www.w3.org/1999/xhtml" exclude-result-prefixes="xs tei html" version="2.0">
  <xsl:output method="html" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
  <xsl:template match="tei:TEI">
    <html>
      <head>
        <title>H:DA | Edition</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.slim.min.js" />
        <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" />
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
        <script type="text/javascript" src="./res/main.js" />
        <link rel="stylesheet" type="text/css" href="./res/main.css" />
      </head>
      <body>
        <nav class="navbar fixed-top navbar-expand-lg navbar-light border-bottom">
          <a class="navbar-brand" href="./index.html">
            Hölderlin: Der Archipelagus</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link" href="./edition.html">Edition</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Dokumentation
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="./pages/einf.html">Einführung</a>
                  <a class="dropdown-item" href="./pages/funkt.html">Funktionalität</a>
                  <a class="dropdown-item" href="./pages/textz.html">Textzeugen</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="./pages/bib.html">Bibliographie &amp; Links</a>
                  <a class="dropdown-item" href="./pages/lizenz.html">Lizenz &amp; Zitieren</a>
                </div>
              </li>
            </ul>
          </div>
        </nav>
        <div class="overlay"></div>
        <a class="btnSidebar openSidebar">Optionen</a>
        <div class="sidebar">
          <a href="./pages/funkt.html" target="blank" id="info">&#x24D8;</a>
          <div id="accordion">
            <div class="acc-section">
              <div>
                <a class="acc-link" data-toggle="collapse" href="#collapseOne" aria-expanded="true">
                  Anzeigeanpassung
                </a>
              </div>
              <div id="collapseOne" class="collapse show" data-parent="#accordion">
                <div class="acc-body">
                  <div class="input-list-head">
                    Textdarstellung
                  </div>
                  <div class="input-list">
                    <div>
                      <input type="checkbox" name="input-placename" id="input-placename"></input>
                      <label for="input-placename">Ortsnamen hervorheben</label>
                    </div>
                    <div>
                      <input type="checkbox" name="input-persname" id="input-persname"></input>
                      <label for="input-persname">Personennamen hervorheben</label>
                    </div>
                    <div>
                      <input type="checkbox" name="input-choice" id="input-choice"></input>
                      <label for="input-choice">Schriftzeichen normalisieren</label>
                    </div>
                  </div>
                  <div class="input-list-head">
                    Interaktionen
                  </div>
                  <div class="input-list">
                    <div>
                      <input type="checkbox" name="input-app" id="input-app" checked="checked"></input>
                      <label for="input-app">Textkritischen Apparat anzeigen</label>
                    </div>
                    <div>
                      <input type="checkbox" name="input-note" id="input-note" checked="checked"></input>
                      <label for="input-note">Editorische Kommentare anzeigen</label>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="acc-section">
              <div>
                <a class="acc-link collapsed" data-toggle="collapse" href="#collapseTwo">Digitalisate</a>
              </div>
              <div id="collapseTwo" class="collapse" data-parent="#accordion">
                <div class="acc-body">
                  <div class="facs">
                    <xsl:apply-templates select=".//tei:facsimile" />
                  </div>
                  <a href="./pages/textz.html">
                    <i>Zu den Textzeugenbeschreibungen</i>
                  </a>
                </div>
              </div>
            </div>
            <div class="acc-section">
              <div>
                <a class="acc-link collapsed" data-toggle="collapse" href="#collapseThree">Download-Formate</a>
              </div>
              <div id="collapseThree" class="collapse" data-parent="#accordion">
                <div class="acc-body">
                  <div class="dl-links">
                    <a target="blank" href="./edition.xml">XML (TEI)</a>
                    <br />
                    <a target="blank" href="./download/Der_Archipelagus_orig.txt">Plain Text</a>
                    <br />
                    <a target="blank" href="./download/Der_Archipelagus_reg.txt">Plain Text (normalisiert)</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div>
          <xsl:apply-templates select=".//tei:body" />
        </div>
        <footer class="page-footer small text-muted border-top">
          <div class="py-2 px-3 mx-0">
            <div class="row align-items-center">
              <div class="col-md-6">
                <a href="https://creativecommons.org/licenses/by/4.0/deed.de" target="blank">
                  <img class="float-left mr-2 mt-1 border-0" src="./img/cc_by.png" width="90px" />
                </a>
                <p class="mb-0 small licence">
                  Alle Inhalte dieser Seite unterstehen einer CC BY 4.0 Lizenz. Die Rechte an den gezeigten Bilddigitalisaten, soweit nicht anders gekennzeichnet, liegen bei den besitzenden Bibliotheken; mehr Informationen
                  <a href="./pages/lizenz.html">hier</a>
                  .
                </p>
              </div>
              <div class="logo-section col-md-6 text-center">
                <a href="https://www.gs.uni-heidelberg.de/" target="blank">
                  <img class="logo" src="./img/logo_uni_hd.png" />
                </a>
                <a href="https://www.wlb-stuttgart.de/" target="blank">
                  <img class="logo" src="./img/logo_wlb.jpg" />
                </a>
                <a href="https://tei-c.org/" target="blank">
                  <img class="logo" src="./img/logo_tei.jpg" />
                </a>
                <a href="https://github.com/DerArchipelagus/DerArchipelagus.github.io" target="blank">
                  <img class="logo" src="./img/logo_github.png" />
                </a>
              </div>
            </div>
          </div>
        </footer>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="tei:body">
    <div class="main-content">
      <xsl:apply-templates select="node()" />
    </div>
  </xsl:template>
  <xsl:template match="tei:back"></xsl:template>
  <xsl:template match="tei:head">
    <h1>
      <xsl:apply-templates select="node()" />
    </h1>
  </xsl:template>
  <xsl:template match="tei:div">
    <div>
      <xsl:apply-templates select="node()" />
    </div>
  </xsl:template>
  <xsl:template match="tei:p">
    <p>
      <xsl:apply-templates select="node()" />
    </p>
  </xsl:template>
  <xsl:template match="tei:lg">
    <p class="line-group">
      <xsl:apply-templates select="node()" />
    </p>
  </xsl:template>
  <xsl:template match="tei:l">
    <xsl:variable name="num" select="./@n" />
    <p class="line">
      <span class="line-num">
        <xsl:value-of select="$num" />
      </span>
      <span class="line-content">
        <xsl:apply-templates select="node()" />
      </span>
      <xsl:variable name="app-entry" select="//tei:app[@loc=$num or (contains(@loc, '-') and number(tokenize(@loc, '-')[1]) &lt;= $num and number(tokenize(@loc, '-')[2]) &gt;= $num)]"></xsl:variable>
      <span class="inline-app">
        <xsl:for-each select="$app-entry">
          <xsl:variable name="lem" select="./tei:lem" />
          <xsl:variable name="rdg" select="./tei:rdg" />
          <xsl:variable name="witdetail" select="./tei:witDetail" />
          <xsl:if test="$witdetail">
            <xsl:for-each select="./tei:witDetail">
              <span class="tei-witdetail">
                <span class="tei-wit">
                  <xsl:text>&#65279;</xsl:text>
                  <xsl:value-of select="./replace(replace(replace(replace(replace(replace(@wit, '1', '&#185;'), '2', '&#178;'), '3', '&#179;'), '4', '&#8308;'), ' ', '&#160;'), '#', '')" />
                  <xsl:text>&#160;</xsl:text>
                </span>
                <xsl:for-each select="./node()">
                  <xsl:choose>
                    <xsl:when test="self::text()">
                      <xsl:value-of select="." />
                    </xsl:when>
                  </xsl:choose>
                </xsl:for-each>
                <br />
              </span>
            </xsl:for-each>
          </xsl:if>
          <xsl:if test="$lem">
            <xsl:for-each select="./tei:lem">
              <span class="tei-lem">
                <span class="tei-wit">
                  <xsl:text>&#65279;</xsl:text>
                  <xsl:value-of select="./replace(replace(replace(replace(replace(replace(@wit, '1', '&#185;'), '2', '&#178;'), '3', '&#179;'), '4', '&#8308;'), ' ', '&#160;'), '#', '')" />
                  <xsl:text>&#160;</xsl:text>
                </span>
                <xsl:variable name="lem-del" select=".//tei:del" />
                <xsl:variable name="lem-add" select=".//tei:add" />
                <xsl:for-each select="./node()">
                  <xsl:choose>
                    <xsl:when test="self::text()">
                      <xsl:value-of select="." />
                    </xsl:when>
                    <xsl:when test="self::tei:del">
                      <span class="tei-del">
                        <xsl:value-of select="." />
                      </span>
                    </xsl:when>
                    <xsl:when test="self::tei:add">
                      <span class="tei-add">
                        <xsl:value-of select="." />
                      </span>
                    </xsl:when>
                    <xsl:when test="self::tei:note">
                      <span class="tei-note">
                        <xsl:text>(</xsl:text>
                        <xsl:value-of select="." />
                        <xsl:text>)&#32;</xsl:text>
                      </span>
                    </xsl:when>
                  </xsl:choose>
                </xsl:for-each>
              </span>
            </xsl:for-each>
            <xsl:if test="$rdg">
              <span class="lem-br">]&#160;</span>
            </xsl:if>
            <xsl:if test="not($rdg)">
              <br />
            </xsl:if>
          </xsl:if>
          <xsl:for-each select="./tei:rdg">
            <span class="tei-rdg">
              <span class="tei-wit">
                <xsl:text>&#65279;</xsl:text>
                <xsl:value-of select="./replace(replace(replace(replace(replace(replace(@wit, '1', '&#185;'), '2', '&#178;'), '3', '&#179;'), '4', '&#8308;'), ' ', '&#160;'), '#', '')" />
                <xsl:text>&#160;</xsl:text>
              </span>
              <xsl:variable name="rdg-del" select=".//tei:del" />
              <xsl:variable name="rdg-add" select=".//tei:add" />
              <xsl:for-each select="./node()">
                <xsl:choose>
                  <xsl:when test="self::text()">
                    <xsl:value-of select="." />
                  </xsl:when>
                  <xsl:when test="self::tei:del">
                    <span class="tei-del">
                      <xsl:value-of select="." />
                    </span>
                  </xsl:when>
                  <xsl:when test="self::tei:add">
                    <span class="tei-add">
                      <xsl:value-of select="." />
                    </span>
                  </xsl:when>
                  <xsl:when test="self::tei:lb">
                    <xsl:text>&#160;|&#32;</xsl:text>
                  </xsl:when>
                  <xsl:when test="self::tei:note">
                    <span class="tei-note">
                      <xsl:text>(</xsl:text>
                      <xsl:value-of select="." />
                      <xsl:text>)&#32;</xsl:text>
                    </span>
                  </xsl:when>
                </xsl:choose>
              </xsl:for-each>
              <xsl:text>&#160;</xsl:text>
            </span>
          </xsl:for-each>
          <xsl:if test="$rdg">
            <br />
          </xsl:if>
        </xsl:for-each>
      </span>
    </p>
  </xsl:template>
  <xsl:template match="tei:persName">
    <span class="tei-persname">
      <xsl:apply-templates select="node()" />
    </span>
  </xsl:template>
  <xsl:template match="tei:placeName">
    <span class="tei-placename">
      <xsl:apply-templates select="node()" />
    </span>
  </xsl:template>
  <xsl:template match="tei:choice">
    <span class="tei-choice">
      <xsl:apply-templates select="node()" />
    </span>
  </xsl:template>
  <xsl:template match="tei:orig">
    <span class="tei-orig">
      <xsl:apply-templates select="node()" />
    </span>
  </xsl:template>
  <xsl:template match="tei:reg">
    <span class="tei-reg">
      <xsl:apply-templates select="node()" />
    </span>
  </xsl:template>
  <xsl:template match="tei:add">
    <span class="tei-add">
      <xsl:apply-templates select="node()" />
    </span>
  </xsl:template>
  <xsl:template match="tei:del">
    <span class="tei-del">
      <xsl:apply-templates select="node()" />
    </span>
  </xsl:template>
  <xsl:template match="tei:facsimile">
    <xsl:apply-templates select="node()" />
  </xsl:template>
  <xsl:template match="tei:surface">
    <a>
      <xsl:attribute name="href">
        <xsl:value-of select="./@facs" />
      </xsl:attribute>
      <xsl:attribute name="target">blank</xsl:attribute>
      <img>
        <xsl:attribute name="src">
          <xsl:value-of select="./@facs" />
        </xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="./@xml:id" />
        </xsl:attribute>
        <xsl:attribute name="width">25px</xsl:attribute>
        <xsl:attribute name="loading">lazy</xsl:attribute>
      </img>
    </a>
  </xsl:template>
</xsl:stylesheet>