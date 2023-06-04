
rule PUA_VULN_Driver_Sysinternalswwwsysinternalscom_procexpsys_ProcessExplorer_39rm {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - fea9319d67177ed6f36438d2bd9392fb.bin, 92927c47d6ff139c9b19674c9d0088f6.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "16a2e578bc8683f17a175480fea4f53c838cfae965f1d4caa47eaf9e0b3415c1"
		hash = "98a123b314cba2de65f899cdbfa386532f178333389e0f0fbd544aff85be02eb"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00500072006f00630065007300730020004500780070006c006f007200650072 } /* FileDescription Process Explorer */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]0053007900730069006e007400650072006e0061006c00730020002d0020007700770077002e0073007900730069006e007400650072006e0061006c0073002e0063006f006d } /* CompanyName Sysinternals - www.sysinternals.com */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]00310036002e00340032 } /* FileVersion 16.42 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]00310036002e00340032 } /* ProductVersion 16.42 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]00700072006f0063006500780070002e007300790073 } /* InternalName procexp.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00500072006f00630065007300730020004500780070006c006f007200650072 } /* ProductName Process Explorer */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]00700072006f0063006500780070002e005300790073 } /* OriginalFilename procexp.Sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f007000790072006900670068007400200028004300290020004d00610072006b002000520075007300730069006e006f007600690063006800200031003900390036002d0032003000320031 } /* LegalCopyright Copyright (C) Mark Russinovich 1996-2021 */
	condition:
		all of them
}
