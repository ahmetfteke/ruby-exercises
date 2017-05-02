class InstallSoftware
	def initialize
		@where_to_install = Proc.new{
			#implement
		}
		@install_extra_packages = Proc.new{
			#implement
		}
		@install_documentation = Proc.new{
			#implement
		}
		@replace_old_files = Proc.new{
			#implement
		}
		@put_into_backup_folder = Proc.new{
			#implement
		}
	end
	def run
		whereToInstall
		if(@extra)
			installExtraPAckages
		end
		if(@documentation)
			installDocumentation
		end
		if(@isReplace)
			replaceOldFiles
		else
			putIntoBackupFolder
		end
	end
	def whereToInstall
		#ask path
		@where_to_install.call 
	end
	def installExtraPAckages
		@install_extra_packages.call
	end
	def installDocumentation
		@install_documentation.call
	end
	def replaceOldFiles
		@replace_old_files.call
	end
	def putIntoBackupFolder
		@put_into_backup_folder.call
	end
end
