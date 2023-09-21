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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/hal.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/hal.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=lwmesh/hal/pic24f/src/hal.c lwmesh/hal/pic24f/src/halPhy.c lwmesh/hal/pic24f/src/halTimer.c lwmesh/nwk/src/nwk.c lwmesh/nwk/src/nwkDataReq.c lwmesh/nwk/src/nwkFrame.c lwmesh/nwk/src/nwkGroup.c lwmesh/nwk/src/nwkRoute.c lwmesh/nwk/src/nwkRouteDiscovery.c lwmesh/nwk/src/nwkRx.c lwmesh/nwk/src/nwkSecurity.c lwmesh/nwk/src/nwkTx.c lwmesh/phy/at86rf230/src/phy.c lwmesh/sys/src/sys.c lwmesh/sys/src/sysEncrypt.c lwmesh/sys/src/sysTimer.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o ${OBJECTDIR}/lwmesh/nwk/src/nwk.o ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o ${OBJECTDIR}/lwmesh/sys/src/sys.o ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o.d ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o.d ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwk.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o.d ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o.d ${OBJECTDIR}/lwmesh/sys/src/sys.o.d ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o.d ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o ${OBJECTDIR}/lwmesh/nwk/src/nwk.o ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o ${OBJECTDIR}/lwmesh/sys/src/sys.o ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=lwmesh/hal/pic24f/src/hal.c lwmesh/hal/pic24f/src/halPhy.c lwmesh/hal/pic24f/src/halTimer.c lwmesh/nwk/src/nwk.c lwmesh/nwk/src/nwkDataReq.c lwmesh/nwk/src/nwkFrame.c lwmesh/nwk/src/nwkGroup.c lwmesh/nwk/src/nwkRoute.c lwmesh/nwk/src/nwkRouteDiscovery.c lwmesh/nwk/src/nwkRx.c lwmesh/nwk/src/nwkSecurity.c lwmesh/nwk/src/nwkTx.c lwmesh/phy/at86rf230/src/phy.c lwmesh/sys/src/sys.c lwmesh/sys/src/sysEncrypt.c lwmesh/sys/src/sysTimer.c main.c



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
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/hal.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GL306
MP_LINKER_FILE_OPTION=,--script=p24FJ128GL306.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o: lwmesh/hal/pic24f/src/hal.c  .generated_files/flags/default/dcbc5abd49532aecfe8cd7f01b72b7640b1e56cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/hal/pic24f/src" 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/hal/pic24f/src/hal.c  -o ${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o: lwmesh/hal/pic24f/src/halPhy.c  .generated_files/flags/default/da5c03d9707061f14bcd5c334609b65c47084978 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/hal/pic24f/src" 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/hal/pic24f/src/halPhy.c  -o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o: lwmesh/hal/pic24f/src/halTimer.c  .generated_files/flags/default/d6db6c0355d8d9d7c44bd7b721bfb0104f900b6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/hal/pic24f/src" 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/hal/pic24f/src/halTimer.c  -o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwk.o: lwmesh/nwk/src/nwk.c  .generated_files/flags/default/b94de02a1466ba09671c47bc2128c519b275c99a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwk.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwk.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwk.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwk.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o: lwmesh/nwk/src/nwkDataReq.c  .generated_files/flags/default/9f722d1c16565f2ea504f8c6281a9c50c6c90f95 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkDataReq.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o: lwmesh/nwk/src/nwkFrame.c  .generated_files/flags/default/82e20a23ceaa539817f69a42728268746f464c3d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkFrame.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o: lwmesh/nwk/src/nwkGroup.c  .generated_files/flags/default/f2fdf8cde0dbe572d6c619517f752ee95d35c645 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkGroup.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o: lwmesh/nwk/src/nwkRoute.c  .generated_files/flags/default/9acac12f42f26e87f62bee494e2e2be560e2d4c8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkRoute.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o: lwmesh/nwk/src/nwkRouteDiscovery.c  .generated_files/flags/default/3eef32620309b854d66da5b88fd6c8804b0ad368 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkRouteDiscovery.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o: lwmesh/nwk/src/nwkRx.c  .generated_files/flags/default/9c2801835ca2e004ff1ec9fbd92c8e2f0fc4ac68 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkRx.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o: lwmesh/nwk/src/nwkSecurity.c  .generated_files/flags/default/894e42decf281de173cfd88c00e0ff631cff6f0d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkSecurity.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o: lwmesh/nwk/src/nwkTx.c  .generated_files/flags/default/2e0ad847d7825f33caac7f13bff426e91dea202a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkTx.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o: lwmesh/phy/at86rf230/src/phy.c  .generated_files/flags/default/3d5180480eeb7b18b5492877aca67f4f7ec0805 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/phy/at86rf230/src" 
	@${RM} ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/phy/at86rf230/src/phy.c  -o ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/sys/src/sys.o: lwmesh/sys/src/sys.c  .generated_files/flags/default/807367eae2c304cb86bb6c5c05c6843b1c0261e5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/sys/src" 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sys.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sys.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/sys/src/sys.c  -o ${OBJECTDIR}/lwmesh/sys/src/sys.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/sys/src/sys.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o: lwmesh/sys/src/sysEncrypt.c  .generated_files/flags/default/14557ea99b75cd182b277ce350f7b393c09f567 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/sys/src" 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/sys/src/sysEncrypt.c  -o ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/sys/src/sysTimer.o: lwmesh/sys/src/sysTimer.c  .generated_files/flags/default/41eaf3737f8d71dcf770d93b5762b616dc047d0e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/sys/src" 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/sys/src/sysTimer.c  -o ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/sys/src/sysTimer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/f89cfb4d5699b7e75de43a0fe3ecac8531fcff00 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o: lwmesh/hal/pic24f/src/hal.c  .generated_files/flags/default/4e5ff49b1f6c66b393700279653e84ccfe9a6a0b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/hal/pic24f/src" 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/hal/pic24f/src/hal.c  -o ${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o: lwmesh/hal/pic24f/src/halPhy.c  .generated_files/flags/default/661b308eb94cda592dfd1bcd3cc10ac7e0b93174 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/hal/pic24f/src" 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/hal/pic24f/src/halPhy.c  -o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o: lwmesh/hal/pic24f/src/halTimer.c  .generated_files/flags/default/3cbb8e1444a005259ff8b3212a0a9aec182c469e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/hal/pic24f/src" 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/hal/pic24f/src/halTimer.c  -o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwk.o: lwmesh/nwk/src/nwk.c  .generated_files/flags/default/1075a0b45df9c8d426bc510baceb9ff3a8e72225 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwk.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwk.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwk.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwk.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o: lwmesh/nwk/src/nwkDataReq.c  .generated_files/flags/default/231577019e19501ef108efe0d12d1e1f56384a9d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkDataReq.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o: lwmesh/nwk/src/nwkFrame.c  .generated_files/flags/default/38a43fbce7e891545fe51800344c12c6ea4c634d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkFrame.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o: lwmesh/nwk/src/nwkGroup.c  .generated_files/flags/default/e75e700ec263342d2c4bbfdbae270735565b47e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkGroup.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o: lwmesh/nwk/src/nwkRoute.c  .generated_files/flags/default/dd5b7f495150f4c9c817620596e65ea41eaeafd1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkRoute.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o: lwmesh/nwk/src/nwkRouteDiscovery.c  .generated_files/flags/default/6807fab81ec4b96f980af018b3801e6ee764060e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkRouteDiscovery.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o: lwmesh/nwk/src/nwkRx.c  .generated_files/flags/default/dd5877081fdc4a9d29d5dd747ad184750147441 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkRx.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o: lwmesh/nwk/src/nwkSecurity.c  .generated_files/flags/default/8e6e830eed7033512f5ca12cffdc71d9af5e3dfb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkSecurity.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o: lwmesh/nwk/src/nwkTx.c  .generated_files/flags/default/7f2aed1761f2bce88408afe580008c607383936b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkTx.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o: lwmesh/phy/at86rf230/src/phy.c  .generated_files/flags/default/23aae18a89df5fd2eaddf8cf9ab88a996bc42fa5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/phy/at86rf230/src" 
	@${RM} ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/phy/at86rf230/src/phy.c  -o ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/sys/src/sys.o: lwmesh/sys/src/sys.c  .generated_files/flags/default/9ff96f43ab72de4deda757f1138730fa6732592b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/sys/src" 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sys.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sys.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/sys/src/sys.c  -o ${OBJECTDIR}/lwmesh/sys/src/sys.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/sys/src/sys.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o: lwmesh/sys/src/sysEncrypt.c  .generated_files/flags/default/480c40b06527e0bbabbdf0587c4c722245eb11d0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/sys/src" 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/sys/src/sysEncrypt.c  -o ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/sys/src/sysTimer.o: lwmesh/sys/src/sysTimer.c  .generated_files/flags/default/78930f89e9851a7fecb4077f80d973ade5db5c5d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/sys/src" 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/sys/src/sysTimer.c  -o ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/sys/src/sysTimer.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/200be785876452afeeaabaaa2427676209fe1cee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/phy/at86rf230/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -DHAL_PIC24F -DPLATFORM_DM -DPHY_AT86RF230 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/hal.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/hal.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/hal.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/hal.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/hal.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
