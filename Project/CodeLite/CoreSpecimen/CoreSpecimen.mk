##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=CoreSpecimen
ConfigurationName      :=Debug
WorkspacePath          := "/home/valrandir/Desktop/Link to Core/Project/CodeLite"
ProjectPath            := "/mnt/hgfs/Core/Project/CodeLite/CoreSpecimen"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Valrandir
Date                   :=12-12-04
CodeLitePath           :="/home/valrandir/.codelite"
LinkerName             :=g++
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)CoreTargetLinux 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="/mnt/hgfs/Core/Project/CodeLite/CoreSpecimen/CoreSpecimen.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            := -l:CoreLib.lib -pthread 
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)../../../Include/ 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch)../../../Build/Linux 

##
## Common variables
## AR, CXX, CC, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := g++
CC       := gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects=$(IntermediateDirectory)/CoreSpecimen_CoreSpecimen$(ObjectSuffix) $(IntermediateDirectory)/CoreSpecimen_Main.Linux$(ObjectSuffix) $(IntermediateDirectory)/Time_Time$(ObjectSuffix) $(IntermediateDirectory)/Memory_Memory$(ObjectSuffix) $(IntermediateDirectory)/System_System$(ObjectSuffix) $(IntermediateDirectory)/Threading_IThread$(ObjectSuffix) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d ../../../../../../home/valrandir/Desktop/Link to Core/Project/CodeLite/.build-debug/CoreLib $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects) > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

../../../../../../home/valrandir/Desktop/Link to Core/Project/CodeLite/.build-debug/CoreLib:
	@echo stam > "../../../../../../home/valrandir/Desktop/Link to Core/Project/CodeLite/.build-debug/CoreLib"




$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/CoreSpecimen_CoreSpecimen$(ObjectSuffix): ../../../Source/CoreSpecimen/CoreSpecimen.cpp $(IntermediateDirectory)/CoreSpecimen_CoreSpecimen$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/mnt/hgfs/Core/Source/CoreSpecimen/CoreSpecimen.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CoreSpecimen_CoreSpecimen$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CoreSpecimen_CoreSpecimen$(DependSuffix): ../../../Source/CoreSpecimen/CoreSpecimen.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CoreSpecimen_CoreSpecimen$(ObjectSuffix) -MF$(IntermediateDirectory)/CoreSpecimen_CoreSpecimen$(DependSuffix) -MM "/mnt/hgfs/Core/Source/CoreSpecimen/CoreSpecimen.cpp"

$(IntermediateDirectory)/CoreSpecimen_CoreSpecimen$(PreprocessSuffix): ../../../Source/CoreSpecimen/CoreSpecimen.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CoreSpecimen_CoreSpecimen$(PreprocessSuffix) "/mnt/hgfs/Core/Source/CoreSpecimen/CoreSpecimen.cpp"

$(IntermediateDirectory)/CoreSpecimen_Main.Linux$(ObjectSuffix): ../../../Source/CoreSpecimen/Main.Linux.cpp $(IntermediateDirectory)/CoreSpecimen_Main.Linux$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/mnt/hgfs/Core/Source/CoreSpecimen/Main.Linux.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CoreSpecimen_Main.Linux$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CoreSpecimen_Main.Linux$(DependSuffix): ../../../Source/CoreSpecimen/Main.Linux.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CoreSpecimen_Main.Linux$(ObjectSuffix) -MF$(IntermediateDirectory)/CoreSpecimen_Main.Linux$(DependSuffix) -MM "/mnt/hgfs/Core/Source/CoreSpecimen/Main.Linux.cpp"

$(IntermediateDirectory)/CoreSpecimen_Main.Linux$(PreprocessSuffix): ../../../Source/CoreSpecimen/Main.Linux.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CoreSpecimen_Main.Linux$(PreprocessSuffix) "/mnt/hgfs/Core/Source/CoreSpecimen/Main.Linux.cpp"

$(IntermediateDirectory)/Time_Time$(ObjectSuffix): ../../../Source/CoreSpecimen/System/Time/Time.cpp $(IntermediateDirectory)/Time_Time$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/mnt/hgfs/Core/Source/CoreSpecimen/System/Time/Time.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Time_Time$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Time_Time$(DependSuffix): ../../../Source/CoreSpecimen/System/Time/Time.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Time_Time$(ObjectSuffix) -MF$(IntermediateDirectory)/Time_Time$(DependSuffix) -MM "/mnt/hgfs/Core/Source/CoreSpecimen/System/Time/Time.cpp"

$(IntermediateDirectory)/Time_Time$(PreprocessSuffix): ../../../Source/CoreSpecimen/System/Time/Time.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Time_Time$(PreprocessSuffix) "/mnt/hgfs/Core/Source/CoreSpecimen/System/Time/Time.cpp"

$(IntermediateDirectory)/Memory_Memory$(ObjectSuffix): ../../../Source/CoreSpecimen/System/Memory/Memory.cpp $(IntermediateDirectory)/Memory_Memory$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/mnt/hgfs/Core/Source/CoreSpecimen/System/Memory/Memory.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Memory_Memory$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Memory_Memory$(DependSuffix): ../../../Source/CoreSpecimen/System/Memory/Memory.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Memory_Memory$(ObjectSuffix) -MF$(IntermediateDirectory)/Memory_Memory$(DependSuffix) -MM "/mnt/hgfs/Core/Source/CoreSpecimen/System/Memory/Memory.cpp"

$(IntermediateDirectory)/Memory_Memory$(PreprocessSuffix): ../../../Source/CoreSpecimen/System/Memory/Memory.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Memory_Memory$(PreprocessSuffix) "/mnt/hgfs/Core/Source/CoreSpecimen/System/Memory/Memory.cpp"

$(IntermediateDirectory)/System_System$(ObjectSuffix): ../../../Source/CoreSpecimen/System/System.cpp $(IntermediateDirectory)/System_System$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/mnt/hgfs/Core/Source/CoreSpecimen/System/System.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/System_System$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/System_System$(DependSuffix): ../../../Source/CoreSpecimen/System/System.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/System_System$(ObjectSuffix) -MF$(IntermediateDirectory)/System_System$(DependSuffix) -MM "/mnt/hgfs/Core/Source/CoreSpecimen/System/System.cpp"

$(IntermediateDirectory)/System_System$(PreprocessSuffix): ../../../Source/CoreSpecimen/System/System.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/System_System$(PreprocessSuffix) "/mnt/hgfs/Core/Source/CoreSpecimen/System/System.cpp"

$(IntermediateDirectory)/Threading_IThread$(ObjectSuffix): ../../../Source/CoreSpecimen/System/Threading/IThread.cpp $(IntermediateDirectory)/Threading_IThread$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/mnt/hgfs/Core/Source/CoreSpecimen/System/Threading/IThread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Threading_IThread$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Threading_IThread$(DependSuffix): ../../../Source/CoreSpecimen/System/Threading/IThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Threading_IThread$(ObjectSuffix) -MF$(IntermediateDirectory)/Threading_IThread$(DependSuffix) -MM "/mnt/hgfs/Core/Source/CoreSpecimen/System/Threading/IThread.cpp"

$(IntermediateDirectory)/Threading_IThread$(PreprocessSuffix): ../../../Source/CoreSpecimen/System/Threading/IThread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Threading_IThread$(PreprocessSuffix) "/mnt/hgfs/Core/Source/CoreSpecimen/System/Threading/IThread.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/CoreSpecimen_CoreSpecimen$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CoreSpecimen_CoreSpecimen$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CoreSpecimen_CoreSpecimen$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/CoreSpecimen_Main.Linux$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/CoreSpecimen_Main.Linux$(DependSuffix)
	$(RM) $(IntermediateDirectory)/CoreSpecimen_Main.Linux$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Time_Time$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Time_Time$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Time_Time$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Memory_Memory$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Memory_Memory$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Memory_Memory$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/System_System$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/System_System$(DependSuffix)
	$(RM) $(IntermediateDirectory)/System_System$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Threading_IThread$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Threading_IThread$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Threading_IThread$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) "/home/valrandir/Desktop/Link to Core/Project/CodeLite/.build-debug/CoreSpecimen"


