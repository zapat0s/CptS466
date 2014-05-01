#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Project5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Project5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c ConfigPerformance.c Source/tasks.c Source/portable/MPLAB/PIC32MX/port.c Source/portable/MPLAB/PIC32MX/port_asm.S Source/list.c Source/queue.c Source/portable/MemMang/heap_1.c Source/timers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/ConfigPerformance.o ${OBJECTDIR}/Source/tasks.o ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port.o ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o ${OBJECTDIR}/Source/list.o ${OBJECTDIR}/Source/queue.o ${OBJECTDIR}/Source/portable/MemMang/heap_1.o ${OBJECTDIR}/Source/timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/ConfigPerformance.o.d ${OBJECTDIR}/Source/tasks.o.d ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port.o.d ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o.d ${OBJECTDIR}/Source/list.o.d ${OBJECTDIR}/Source/queue.o.d ${OBJECTDIR}/Source/portable/MemMang/heap_1.o.d ${OBJECTDIR}/Source/timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/ConfigPerformance.o ${OBJECTDIR}/Source/tasks.o ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port.o ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o ${OBJECTDIR}/Source/list.o ${OBJECTDIR}/Source/queue.o ${OBJECTDIR}/Source/portable/MemMang/heap_1.o ${OBJECTDIR}/Source/timers.o

# Source Files
SOURCEFILES=main.c ConfigPerformance.c Source/tasks.c Source/portable/MPLAB/PIC32MX/port.c Source/portable/MPLAB/PIC32MX/port_asm.S Source/list.c Source/queue.c Source/portable/MemMang/heap_1.c Source/timers.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Project5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX460F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o: Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX 
	@${RM} ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o.d 
	@${RM} ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o 
	@${RM} ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o.ok ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o.d" "${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o.d"  -o ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o Source/portable/MPLAB/PIC32MX/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
else
${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o: Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX 
	@${RM} ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o.d 
	@${RM} ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o 
	@${RM} ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o.ok ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o.d" "${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o.d"  -o ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o Source/portable/MPLAB/PIC32MX/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c   
	
${OBJECTDIR}/ConfigPerformance.o: ConfigPerformance.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/ConfigPerformance.o.d 
	@${RM} ${OBJECTDIR}/ConfigPerformance.o 
	@${FIXDEPS} "${OBJECTDIR}/ConfigPerformance.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/ConfigPerformance.o.d" -o ${OBJECTDIR}/ConfigPerformance.o ConfigPerformance.c   
	
${OBJECTDIR}/Source/tasks.o: Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Source 
	@${RM} ${OBJECTDIR}/Source/tasks.o.d 
	@${RM} ${OBJECTDIR}/Source/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/Source/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/Source/tasks.o.d" -o ${OBJECTDIR}/Source/tasks.o Source/tasks.c   
	
${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port.o: Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX 
	@${RM} ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port.o.d 
	@${RM} ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port.o 
	@${FIXDEPS} "${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port.o.d" -o ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port.o Source/portable/MPLAB/PIC32MX/port.c   
	
${OBJECTDIR}/Source/list.o: Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Source 
	@${RM} ${OBJECTDIR}/Source/list.o.d 
	@${RM} ${OBJECTDIR}/Source/list.o 
	@${FIXDEPS} "${OBJECTDIR}/Source/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/Source/list.o.d" -o ${OBJECTDIR}/Source/list.o Source/list.c   
	
${OBJECTDIR}/Source/queue.o: Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Source 
	@${RM} ${OBJECTDIR}/Source/queue.o.d 
	@${RM} ${OBJECTDIR}/Source/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/Source/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/Source/queue.o.d" -o ${OBJECTDIR}/Source/queue.o Source/queue.c   
	
${OBJECTDIR}/Source/portable/MemMang/heap_1.o: Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Source/portable/MemMang 
	@${RM} ${OBJECTDIR}/Source/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/Source/portable/MemMang/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/Source/portable/MemMang/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/Source/portable/MemMang/heap_1.o.d" -o ${OBJECTDIR}/Source/portable/MemMang/heap_1.o Source/portable/MemMang/heap_1.c   
	
${OBJECTDIR}/Source/timers.o: Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Source 
	@${RM} ${OBJECTDIR}/Source/timers.o.d 
	@${RM} ${OBJECTDIR}/Source/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/Source/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/Source/timers.o.d" -o ${OBJECTDIR}/Source/timers.o Source/timers.c   
	
else
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c   
	
${OBJECTDIR}/ConfigPerformance.o: ConfigPerformance.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/ConfigPerformance.o.d 
	@${RM} ${OBJECTDIR}/ConfigPerformance.o 
	@${FIXDEPS} "${OBJECTDIR}/ConfigPerformance.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/ConfigPerformance.o.d" -o ${OBJECTDIR}/ConfigPerformance.o ConfigPerformance.c   
	
${OBJECTDIR}/Source/tasks.o: Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Source 
	@${RM} ${OBJECTDIR}/Source/tasks.o.d 
	@${RM} ${OBJECTDIR}/Source/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/Source/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/Source/tasks.o.d" -o ${OBJECTDIR}/Source/tasks.o Source/tasks.c   
	
${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port.o: Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX 
	@${RM} ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port.o.d 
	@${RM} ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port.o 
	@${FIXDEPS} "${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port.o.d" -o ${OBJECTDIR}/Source/portable/MPLAB/PIC32MX/port.o Source/portable/MPLAB/PIC32MX/port.c   
	
${OBJECTDIR}/Source/list.o: Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Source 
	@${RM} ${OBJECTDIR}/Source/list.o.d 
	@${RM} ${OBJECTDIR}/Source/list.o 
	@${FIXDEPS} "${OBJECTDIR}/Source/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/Source/list.o.d" -o ${OBJECTDIR}/Source/list.o Source/list.c   
	
${OBJECTDIR}/Source/queue.o: Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Source 
	@${RM} ${OBJECTDIR}/Source/queue.o.d 
	@${RM} ${OBJECTDIR}/Source/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/Source/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/Source/queue.o.d" -o ${OBJECTDIR}/Source/queue.o Source/queue.c   
	
${OBJECTDIR}/Source/portable/MemMang/heap_1.o: Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Source/portable/MemMang 
	@${RM} ${OBJECTDIR}/Source/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/Source/portable/MemMang/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/Source/portable/MemMang/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/Source/portable/MemMang/heap_1.o.d" -o ${OBJECTDIR}/Source/portable/MemMang/heap_1.o Source/portable/MemMang/heap_1.c   
	
${OBJECTDIR}/Source/timers.o: Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Source 
	@${RM} ${OBJECTDIR}/Source/timers.o.d 
	@${RM} ${OBJECTDIR}/Source/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/Source/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"Source/include" -I"Source/portable/MPLAB/PIC32MX" -I"Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/Source/timers.o.d" -o ${OBJECTDIR}/Source/timers.o Source/timers.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Project5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Project5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}           -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Project5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Project5.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Project5.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
