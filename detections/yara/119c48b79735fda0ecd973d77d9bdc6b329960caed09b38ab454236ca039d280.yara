
rule PUA_VULN_Driver_ArthurLiberman_ALSysIOsys_ALSysIO_7UcE {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - afc2448b4080f695e76e059a96958cab.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "119c48b79735fda0ecd973d77d9bdc6b329960caed09b38ab454236ca039d280"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]0041004c0053007900730049004f00360034 } /* FileDescription ALSysIO64 */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]0041007200740068007500720020004c0069006200650072006d0061006e } /* CompanyName Arthur Liberman */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0032002e0030002e00310031002e0030 } /* FileVersion 2.0.11.0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0032002e0030002e00310031002e0030 } /* ProductVersion 2.0.11.0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]0041004c0053007900730049004f00360034002e007300790073 } /* InternalName ALSysIO64.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]0041004c0053007900730049004f00360034 } /* ProductName ALSysIO64 */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]0041004c0053007900730049004f00360034002e007300790073 } /* OriginalFilename ALSysIO64.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000280043002900200032003000300033002d003200300031003900200041007200740068007500720020004c0069006200650072006d0061006e } /* LegalCopyright Copyright (C) 2003-2019 Arthur Liberman */
	condition:
		all of them
}
