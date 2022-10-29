# create a "which" command to imitate subset of Windows where.exe functionality

# method 1 - function (this method, as it is, is limited in its functionality)
function Which($name) {
	(Get-Command -Name $name -CommandType Application -All).Definition
	Write-Output ""
}

# method 2 - alias
New-Alias which which.exe
