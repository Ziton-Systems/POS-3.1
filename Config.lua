local module = {
	L = [[
 _____   _ __                 _____            __                     
/__  /  (_) /_____  ____     / ___/__  _______/ /____  ____ ___  _____
  / /  / / __/ __ \/ __ \    \__ \/ / / / ___/ __/ _ \/ __ `__ \/ ___/
 / /__/ / /_/ /_/ / / / /   ___/ / /_/ (__  ) /_/  __/ / / / / (__  ) 
/____/_/\__/\____/_/ /_/   /____/\__, /____/\__/\___/_/ /_/ /_/____/  
 2025 - POS 3.1                 /____/     
]],
	
Payment = {
		Currency = '£',
		CardValue = 'DebitCard',
		CheckCash = function(Player:Player, Amount)
			return true 
		end,
	},
Login = {
 Whitelist = function(Player:Player)
		return true
 end,
 Accounts = {
  [1] = {
	['Account Type'] = 'Employee', -- View Documentation for setup
	['Refrance User'] = 'Employee Account',
	['Permissions'] = {Void = true, PowerCycle = false, ManagementRequest = false, AdministratorMode = false},
	['POS Group'] = 0, 
   },
[2] = {
    ['Account Type'] = 'Manager', -- View Documentation for setup
	['Refrance User'] = 'Manager Account',
	['Permissions'] = {Void = true, PowerCycle = true, ManagementRequest = false, AdministratorMode = false},
	['POS Group'] = 0, 
   },  
 },
[3] = {
	['Account Type'] = 'Administrator', -- View Documentation for setup
	['Refrance User'] = 'Administrator Account',
	['Permissions'] = {Void = true, PowerCycle = true, ManagementRequest = true, AdministratorMode = true},
	['POS Group'] = 0, 
   },  
 },
Equipment = {
	ReciptPrinterFuncs = {PrintDebugCard = true, PrintClockinCards = false, PrintClockoutCards = false},
	CardSettings =       {IgnoreNFCTap = false, RelayonAPIPay = false},
	API =                {AllowAPIPayment = true, },
	Terminal =           {CafePOS = false}
}

}

return module
