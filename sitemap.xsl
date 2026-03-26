<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sm="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:xhtml="http://www.w3.org/1999/xhtml"
  exclude-result-prefixes="sm xhtml">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Sitemap — CutTool</title>
  <style>
    body { font-family: 'Segoe UI', system-ui, sans-serif; background: #f5f6f8; color: #0e1218; margin: 0; padding: 32px 16px; }
    .container { max-width: 820px; margin: 0 auto; }
    h1 { font-size: 22px; font-weight: 700; margin-bottom: 6px; color: #0e1218; }
    .subtitle { font-size: 13px; color: #5c6a7a; margin-bottom: 28px; }
    table { width: 100%; border-collapse: collapse; background: #fff; border-radius: 10px; overflow: hidden; box-shadow: 0 1px 4px rgba(0,0,0,.08); }
    th { background: #08736d; color: #fff; text-align: left; padding: 10px 16px; font-size: 12px; font-weight: 600; letter-spacing: .5px; text-transform: uppercase; }
    td { padding: 10px 16px; border-bottom: 1px solid #eef0f3; font-size: 14px; vertical-align: top; }
    tr:last-child td { border-bottom: none; }
    tr:hover td { background: #f0faf9; }
    a { color: #08736d; text-decoration: none; font-weight: 500; }
    a:hover { text-decoration: underline; }
    .badge { display: inline-block; background: #e6f5f4; color: #08736d; border-radius: 4px; padding: 2px 8px; font-size: 11px; font-weight: 600; }
    .back { display: inline-block; margin-top: 20px; font-size: 13px; color: #5c6a7a; text-decoration: none; }
    .back:hover { color: #08736d; }
  </style>
</head>
<body>
<div class="container">
  <h1>CutTool — Sitemap</h1>
  <p class="subtitle"><xsl:value-of select="count(sm:urlset/sm:url)"/> pages indexed</p>
  <table>
    <tr>
      <th>URL</th>
      <th>Priority</th>
      <th>Change Frequency</th>
    </tr>
    <xsl:for-each select="sm:urlset/sm:url">
      <tr>
        <td><a href="{sm:loc}"><xsl:value-of select="sm:loc"/></a></td>
        <td><span class="badge"><xsl:value-of select="sm:priority"/></span></td>
        <td><xsl:value-of select="sm:changefreq"/></td>
      </tr>
    </xsl:for-each>
  </table>
  <a class="back" href="/">&#8592; Back to CutTool</a>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
