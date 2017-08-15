@echo
::Login to Tableau Server and Refresh Extracts in Workbook

:: CD to directory where tabcmd is installed 
CD D:\Programs\Tableau\Tableau Server\10.3\bin

::Login to the Server
tabcmd login --server https://a-tableau.vt.ch --site FR --username s2-dil-tableau --password-file s2-dil-tableau.txt

::Refresh Extracts in each of the workbooks below
tabcmd refreshextracts --synchronous --workbook "Credit Risk Daily" 
<#
tabcmd refreshextracts --workbook "Regulatory Reporting"
tabcmd refreshextracts --workbook "Credit Risk Dubai"
#>
tabcmd logout
echo