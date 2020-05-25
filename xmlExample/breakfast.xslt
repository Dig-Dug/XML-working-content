<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="/">
  <html>
  <head>
  <title>Breakfast Menu</title>
 <style type="text/css" media="screen">
         
table {
	margin: 1em;
	padding: 1em;
	border: 1px blue }
h3  {
	font-size: large;
	background-color: silver;
	border-bottom: 3px black 
}
tr {
background-color: #d85a4c4f;
}
td {
background-color: #a09290;
}
      </style>
  </head>
  <body>
  <h3>Breakfast Menu</h3>
   
  <table width="820" border="1" cellspacing="5" cellpadding="10">
          <tr>
            <th>name</th>
            <th>price</th>
            <th>description</th>
            <th>calories</th>
          </tr>
          <xsl:call-template name="food"/>
        </table>
   </body>
   </html>
   </xsl:template>
  <xsl:template name="food">
  
    <xsl:for-each select="//food">
     <xsl:sort select="concat(substring(price,7,4),substring(price,4,2),substring(price,1,2))" order="ascending" data-type="text"/>

    
      <tr>
        <td width="80" height="9">
           
          <xsl:value-of select="name"/>
        </td>
       <td width="80" height="9">
           
          <xsl:value-of select="price"/>
         <img src="price.gif" alt="nice picture" style="width:118px;height:90px;"/>
        </td>
        
         <td width="80" height="9">
         
          <xsl:value-of select="description"/>
        </td>
         <td width="2" height="9">
          <xsl:value-of select="calories"/>
        </td>
      </tr>
     
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>