
rule PUA_VULN_Driver_MSI_NTIOLibsys_NTIOLib_8hRj {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 736c4b85ce346ddf3b49b1e3abb4e72a.bin, 8d63e1a9ff4cafee1af179c0c544365c.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "2bbe65cbec3bb069e92233924f7ee1f95ffa16173fceb932c34f68d862781250"
		hash = "e68d453d333854787f8470c8baef3e0d082f26df5aa19c0493898bcf3401e39a"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]004e00540049004f004c0069006200200046006f00720020004d0053004900530069006d0070006c0065005f004f0043 } /* FileDescription NTIOLib For MSISimple_OC */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]004d00530049 } /* CompanyName MSI */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002e0030002e0030002e0032 } /* FileVersion 1.0.0.2 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002e0030002e0030002e0032 } /* ProductVersion 1.0.0.2 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]004e00540049004f004c00690062002e007300790073 } /* InternalName NTIOLib.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]004e00540049004f004c00690062 } /* ProductName NTIOLib */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]004e00540049004f004c00690062002e007300790073 } /* OriginalFilename NTIOLib.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000280043002900200032003000310031002d00320030003100320020004d00530049002e00200041006c006c0020007200690067006800740073002000720065007300650072007600650064002e } /* LegalCopyright Copyright (C) 2011-2012 MSI. All rights reserved. */
	condition:
		all of them
}
