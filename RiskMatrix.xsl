<xsl:stylesheet xmlns:x="http://www.w3.org/2001/XMLSchema" xmlns:d="http://schemas.microsoft.com/sharepoint/dsp" version="1.0" exclude-result-prefixes="xsl msxsl ddwrt" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" xmlns:asp="http://schemas.microsoft.com/ASPNET/20" xmlns:__designer="http://schemas.microsoft.com/WebParts/v2/DataView/designer" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:SharePoint="Microsoft.SharePoint.WebControls" xmlns:ddwrt2="urn:frontpage:internal">
	<xsl:output method="html" indent="no"/>
	<xsl:decimal-format NaN=""/>
	
	<xsl:template match="/" xmlns:x="http://www.w3.org/2001/XMLSchema" xmlns:d="http://schemas.microsoft.com/sharepoint/dsp" xmlns:asp="http://schemas.microsoft.com/ASPNET/20" xmlns:__designer="http://schemas.microsoft.com/WebParts/v2/DataView/designer" xmlns:SharePoint="Microsoft.SharePoint.WebControls">

<!--
		Change the path to this CSS file if you locate it in a different place
-->
		<link rel="stylesheet" type="text/css" href="/Style Library/Custom/RiskMatrix.css"></link>

		<xsl:variable name="Rows" select="/dsQueryResponse/Rows/Row"/>

<!--
		If you use different column names or choices then amend these variables accordingly
		
		Note that the variable names represent cells in the matrix
-->
		<xsl:variable name="RM1A" select="count($Rows[@Consequence = 'Minor'][@Likelihood = 'Almost Certain'])"/>
		<xsl:variable name="RM1B" select="count($Rows[@Consequence = 'Moderate'][@Likelihood = 'Almost Certain'])"/>
		<xsl:variable name="RM1C" select="count($Rows[@Consequence = 'Severe'][@Likelihood = 'Almost Certain'])"/>
		<xsl:variable name="RM1D" select="count($Rows[@Consequence = 'Major'][@Likelihood = 'Almost Certain'])"/>
		<xsl:variable name="RM1E" select="count($Rows[@Consequence = 'Catastrophic'][@Likelihood = 'Almost Certain'])"/>
		<xsl:variable name="RM2A" select="count($Rows[@Consequence = 'Minor'][@Likelihood = 'Likely'])"/>
		<xsl:variable name="RM2B" select="count($Rows[@Consequence = 'Moderate'][@Likelihood = 'Likely'])"/>
		<xsl:variable name="RM2C" select="count($Rows[@Consequence = 'Severe'][@Likelihood = 'Likely'])"/>
		<xsl:variable name="RM2D" select="count($Rows[@Consequence = 'Major'][@Likelihood = 'Likely'])"/>
		<xsl:variable name="RM2E" select="count($Rows[@Consequence = 'Catastrophic'][@Likelihood = 'Likely'])"/>
		<xsl:variable name="RM3A" select="count($Rows[@Consequence = 'Minor'][@Likelihood = 'Possible'])"/>
		<xsl:variable name="RM3B" select="count($Rows[@Consequence = 'Moderate'][@Likelihood = 'Possible'])"/>
		<xsl:variable name="RM3C" select="count($Rows[@Consequence = 'Severe'][@Likelihood = 'Possible'])"/>
		<xsl:variable name="RM3D" select="count($Rows[@Consequence = 'Major'][@Likelihood = 'Possible'])"/>
		<xsl:variable name="RM3E" select="count($Rows[@Consequence = 'Catastrophic'][@Likelihood = 'Possible'])"/>
		<xsl:variable name="RM4A" select="count($Rows[@Consequence = 'Minor'][@Likelihood = 'Unlikely'])"/>
		<xsl:variable name="RM4B" select="count($Rows[@Consequence = 'Moderate'][@Likelihood = 'Unlikely'])"/>
		<xsl:variable name="RM4C" select="count($Rows[@Consequence = 'Severe'][@Likelihood = 'Unlikely'])"/>
		<xsl:variable name="RM4D" select="count($Rows[@Consequence = 'Major'][@Likelihood = 'Unlikely'])"/>
		<xsl:variable name="RM4E" select="count($Rows[@Consequence = 'Catastrophic'][@Likelihood = 'Unlikely'])"/>
		<xsl:variable name="RM5A" select="count($Rows[@Consequence = 'Minor'][@Likelihood = 'Rare'])"/>
		<xsl:variable name="RM5B" select="count($Rows[@Consequence = 'Moderate'][@Likelihood = 'Rare'])"/>
		<xsl:variable name="RM5C" select="count($Rows[@Consequence = 'Severe'][@Likelihood = 'Rare'])"/>
		<xsl:variable name="RM5D" select="count($Rows[@Consequence = 'Major'][@Likelihood = 'Rare'])"/>
		<xsl:variable name="RM5E" select="count($Rows[@Consequence = 'Catastrophic'][@Likelihood = 'Rare'])"/>
		<xsl:variable name="RM6A" select="count($Rows[@Consequence = 'Minor'][@Likelihood = 'Improbable'])"/>
		<xsl:variable name="RM6B" select="count($Rows[@Consequence = 'Moderate'][@Likelihood = 'Improbable'])"/>
		<xsl:variable name="RM6C" select="count($Rows[@Consequence = 'Severe'][@Likelihood = 'Improbable'])"/>
		<xsl:variable name="RM6D" select="count($Rows[@Consequence = 'Major'][@Likelihood = 'Improbable'])"/>
		<xsl:variable name="RM6E" select="count($Rows[@Consequence = 'Catastrophic'][@Likelihood = 'Improbable'])"/>

<!--
		Create a table to hold our matrix
-->
		<table class="RiskMatrix">
			<tr>
				<td colspan="2">
				</td>
				<td colspan="5" class="RiskMatrixHeading">
					Consequence Severity
				</td>
			</tr>
			<tr>
				<td colspan="2">
				</td>
				<td class="RiskMatrixHeading">
					Minor
					<br />
					(1)
				</td>
				<td class="RiskMatrixHeading">
					Moderate
					<br />
					(3)
				</td>
				<td class="RiskMatrixHeading">
					Severe
					<br />
					(10)
				</td>
				<td class="RiskMatrixHeading">
					Major
					<br />
					(30)
				</td>
				<td class="RiskMatrixHeading">
					Catastrophic
					<br />
					(100)
				</td>
			</tr>
			<tr>
				<td rowspan="6" class="RiskMatrixRowHeader">
					Likelihood
				</td>
				<td class="RiskMatrixRowHeader">
					Almost Certain (&gt;0.97)
				</td>
				<td class="RiskMatrixModerate" id="RM1A">
					<xsl:value-of select="$RM1A" />
				</td>
				<td class="RiskMatrixHigh" id="RM1B">
					<xsl:value-of select="$RM1B" />
				</td>
				<td class="RiskMatrixHigh" id="RM1C">
					<xsl:value-of select="$RM1C" />
				</td>
				<td class="RiskMatrixCritical" id="RM1D">
					<xsl:value-of select="$RM1D" />
				</td>
				<td class="RiskMatrixCritical" id="RM1E">
					<xsl:value-of select="$RM1E" />
				</td>
			</tr>
			<tr>
				<td class="RiskMatrixRowHeader">
					Likely (0.3)
				</td>
				<td class="RiskMatrixModerate" id="RM2A">
					<xsl:value-of select="$RM2A" />
				</td>
				<td class="RiskMatrixModerate" id="RM2B">
					<xsl:value-of select="$RM2B" />
				</td>
				<td class="RiskMatrixHigh" id="RM2C">
					<xsl:value-of select="$RM2C" />
				</td>
				<td class="RiskMatrixHigh" id="RM2D">
					<xsl:value-of select="$RM2D" />
				</td>
				<td class="RiskMatrixCritical" id="RM2E">
					<xsl:value-of select="$RM2E" />
				</td>
			</tr>
			<tr>
				<td class="RiskMatrixRowHeader">
					Possible (0.1)
				</td>
				<td class="RiskMatrixLow" id="RM3A">
					<xsl:value-of select="$RM3A" />
				</td>
				<td class="RiskMatrixModerate" id="RM3B">
					<xsl:value-of select="$RM3B" />
				</td>
				<td class="RiskMatrixModerate" id="RM3C">
					<xsl:value-of select="$RM3C" />
				</td>
				<td class="RiskMatrixHigh" id="RM3D">
					<xsl:value-of select="$RM3D" />
				</td>
				<td class="RiskMatrixHigh" id="RM3E">
					<xsl:value-of select="$RM3E" />
				</td>
			</tr>
			<tr>
				<td class="RiskMatrixRowHeader">
					Unlikely (0.03)
				</td>
				<td class="RiskMatrixLow" id="RM4A">
					<xsl:value-of select="$RM4A" />
				</td>
				<td class="RiskMatrixLow" id="RM4B">
					<xsl:value-of select="$RM4B" />
				</td>
				<td class="RiskMatrixModerate" id="RM4C">
					<xsl:value-of select="$RM4C" />
				</td>
				<td class="RiskMatrixModerate" id="RM4D">
					<xsl:value-of select="$RM4D" />
				</td>
				<td class="RiskMatrixHigh" id="RM4E">
					<xsl:value-of select="$RM4E" />
				</td>
			</tr>
			<tr>
				<td class="RiskMatrixRowHeader">
					Rare (0.01)
				</td>
				<td class="RiskMatrixLow" id="RM5A">
					<xsl:value-of select="$RM5A" />
				</td>
				<td class="RiskMatrixLow" id="RM5B">
					<xsl:value-of select="$RM5B" />
				</td>
				<td class="RiskMatrixLow" id="RM5C">
					<xsl:value-of select="$RM5C" />
				</td>
				<td class="RiskMatrixModerate" id="RM5D">
					<xsl:value-of select="$RM5D" />
				</td>
				<td class="RiskMatrixModerate" id="RM5E">
					<xsl:value-of select="$RM5E" />
				</td>
			</tr>
			<tr>
				<td class="RiskMatrixRowHeader">
					Improbable (&lt;0.001)
				</td>
				<td class="RiskMatrixLow" id="RM6A">
					<xsl:value-of select="$RM6A" />
				</td>
				<td class="RiskMatrixLow" id="RM6B">
					<xsl:value-of select="$RM6B" />
				</td>
				<td class="RiskMatrixLow" id="RM6C">
					<xsl:value-of select="$RM6C" />
				</td>
				<td class="RiskMatrixLow" id="RM6D">
					<xsl:value-of select="$RM6D" />
				</td>
				<td class="RiskMatrixLow" id="RM6E">
					<xsl:value-of select="$RM6E" />
				</td>
			</tr>
		</table>
		<br />

<!--
		This final section is a colour key but could be skipped if not required
-->
		<table style="width:100%">
			<tr class="RiskMatrixRowHeader">
				<td>
					Category
				</td>
				<td>
					Risk Rating
				</td>
			</tr>
			<tr>
				<td class="RiskMatrixCritical">
					Critical
				</td>
				<td>
					&gt;10
				</td>
			</tr>
			<tr>
				<td class="RiskMatrixHigh">
					High
				</td>
				<td>
					Between 3 and 10
				</td>
			</tr>
			<tr>
				<td class="RiskMatrixModerate">
					Moderate
				</td>
				<td>
					Between 0.3 and 1
				</td>
			</tr>
			<tr>
				<td class="RiskMatrixLow">
					Low
				</td>
				<td>
					&lt;0.3
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>
