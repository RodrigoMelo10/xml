<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <html>
        <head>
            <title>Parnnel Shop</title>
            <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
            ...
        </head>
            <body>
                <h2>
                    <img src="javaco_tea_logo.gif" alt="Javaco Tea Logo" width="200" height="20" />Welcome to Parnnel Shop</h2>
                <p>Check our products and prices.</p>
                <table id="menuTable" border="1" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">Parnnel Shop Menu</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>Item</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/shopmenu/section">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            
                    </tbody>
                </table>
                <form class="indent">
                    <p>
                        <input type="button" name="btnCalcBill" value="Calculate Bill" id="calcBill" />
                Total: €
                <input type="text" name="txtBillAmt" /><input type="checkbox" name="cbOpts" value="isVeg" id="showVeg" /><label for="showVeg"></label></p>
                </form>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
