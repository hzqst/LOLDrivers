
rule PUA_VULN_Driver_Dell_DBUtil_5w37 {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - d104621c93213942b7b43d65b5d8d33e.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "71fe5af0f1564dc187eea8d59c0fbc897712afa07d18316d2080330ba17cf009"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00440042005500740069006c } /* FileDescription DBUtil */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]00440065006c006c } /* CompanyName Dell */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0032002e0037002e0030002e0030 } /* ProductVersion 2.7.0.0 */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00440042005500740069006c } /* ProductName DBUtil */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]00a900200032003000320031002000440065006c006c00200049006e0063002e00200041006c006c0020005200690067006800740073002000520065007300650072007600650064002e0020 } /* LegalCopyright © 2021 Dell Inc. All Rights Reserved.  */
	condition:
		all of them
}
