
rule PUA_VULN_Driver_MiTACTechnologyCorporation_mtcBSvsys_MiTACSystemServiceProvider_7xV2 {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 9dfd73dadb2f1c7e9c9d2542981aaa63.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "c9cf1d627078f63a36bbde364cd0d5f2be1714124d186c06db5bcdf549a109f8"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]004d0069005400410043002000530079007300740065006d00200053006500720076006900630065002000500072006f00760069006400650072 } /* FileDescription MiTAC System Service Provider */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]004d006900540041004300200054006500630068006e006f006c006f0067007900200043006f00720070006f0072006100740069006f006e } /* CompanyName MiTAC Technology Corporation */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]00320031002c00200031002c00200034002c00200030 } /* FileVersion 21, 1, 4, 0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]00320031002c00200031002c00200034002c00200030 } /* ProductVersion 21, 1, 4, 0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]006d0074006300420053007600360034002e007300790073 } /* InternalName mtcBSv64.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]004d0069005400410043002000530079007300740065006d00200053006500720076006900630065002000500072006f00760069006400650072 } /* ProductName MiTAC System Service Provider */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]006d0074006300420053007600360034002e007300790073 } /* OriginalFilename mtcBSv64.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f00700079007200690067006800740020002800430029002000320030003000370020004d006900540041004300200054006500630068006e006f006c006f0067007900200043006f00720070006f0072006100740069006f006e } /* LegalCopyright Copyright (C) 2007 MiTAC Technology Corporation */
	condition:
		all of them
}
