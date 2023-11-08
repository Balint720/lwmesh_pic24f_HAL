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
FINAL_IMAGE=${DISTDIR}/hal_umogi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/hal_umogi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=lwmesh/hal/pic24f/src/hal.c lwmesh/hal/pic24f/src/halPhy.c lwmesh/hal/pic24f/src/halTimer.c lwmesh/nwk/src/nwk.c lwmesh/nwk/src/nwkDataReq.c lwmesh/nwk/src/nwkFrame.c lwmesh/nwk/src/nwkGroup.c lwmesh/nwk/src/nwkRoute.c lwmesh/nwk/src/nwkRouteDiscovery.c lwmesh/nwk/src/nwkRx.c lwmesh/nwk/src/nwkSecurity.c lwmesh/nwk/src/nwkTx.c lwmesh/phy/at86rf212/src/phy.c lwmesh/phy/at86rf230/src/phy.c lwmesh/sys/src/sys.c lwmesh/sys/src/sysEncrypt.c lwmesh/sys/src/sysTimer.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o ${OBJECTDIR}/lwmesh/nwk/src/nwk.o ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o ${OBJECTDIR}/lwmesh/phy/at86rf212/src/phy.o ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o ${OBJECTDIR}/lwmesh/sys/src/sys.o ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o.d ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o.d ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwk.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o.d ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o.d ${OBJECTDIR}/lwmesh/phy/at86rf212/src/phy.o.d ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o.d ${OBJECTDIR}/lwmesh/sys/src/sys.o.d ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o.d ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o ${OBJECTDIR}/lwmesh/nwk/src/nwk.o ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o ${OBJECTDIR}/lwmesh/phy/at86rf212/src/phy.o ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o ${OBJECTDIR}/lwmesh/sys/src/sys.o ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=lwmesh/hal/pic24f/src/hal.c lwmesh/hal/pic24f/src/halPhy.c lwmesh/hal/pic24f/src/halTimer.c lwmesh/nwk/src/nwk.c lwmesh/nwk/src/nwkDataReq.c lwmesh/nwk/src/nwkFrame.c lwmesh/nwk/src/nwkGroup.c lwmesh/nwk/src/nwkRoute.c lwmesh/nwk/src/nwkRouteDiscovery.c lwmesh/nwk/src/nwkRx.c lwmesh/nwk/src/nwkSecurity.c lwmesh/nwk/src/nwkTx.c lwmesh/phy/at86rf212/src/phy.c lwmesh/phy/at86rf230/src/phy.c lwmesh/sys/src/sys.c lwmesh/sys/src/sysEncrypt.c lwmesh/sys/src/sysTimer.c main.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/hal_umogi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GB108
MP_LINKER_FILE_OPTION=,--script=p24FJ256GB108.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o: lwmesh/hal/pic24f/src/hal.c  .generated_files/flags/default/6e2b663f30ca65fb5251bf460b12bff0de88a42a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/hal/pic24f/src" 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/hal/pic24f/src/hal.c  -o ${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o: lwmesh/hal/pic24f/src/halPhy.c  .generated_files/flags/default/a9e256d5fd5f55cbf235c13a6eb3f7f00ecc2778 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/hal/pic24f/src" 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/hal/pic24f/src/halPhy.c  -o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o: lwmesh/hal/pic24f/src/halTimer.c  .generated_files/flags/default/8155fea20b6b4f594cbf3094e80613f122423584 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/hal/pic24f/src" 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/hal/pic24f/src/halTimer.c  -o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwk.o: lwmesh/nwk/src/nwk.c  .generated_files/flags/default/7697e624bc6798ff66a147a6fcc3354d2aa618ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwk.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwk.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwk.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwk.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o: lwmesh/nwk/src/nwkDataReq.c  .generated_files/flags/default/bbe04c13166d076812d082b3f1d64d908c522e83 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkDataReq.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o: lwmesh/nwk/src/nwkFrame.c  .generated_files/flags/default/cd2cb8b620556af57580830b4a1b29a800397668 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkFrame.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o: lwmesh/nwk/src/nwkGroup.c  .generated_files/flags/default/752887a8d42c43ee41a2fb25d812da95e8a539b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkGroup.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o: lwmesh/nwk/src/nwkRoute.c  .generated_files/flags/default/2ed970576872d9504438cda01e6760256c71cd9c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkRoute.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o: lwmesh/nwk/src/nwkRouteDiscovery.c  .generated_files/flags/default/1de77d3497773d2a17af6b675f83b2640477a548 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkRouteDiscovery.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o: lwmesh/nwk/src/nwkRx.c  .generated_files/flags/default/47095fd6a92046481b5ffa1a8641bf6b0ed7b076 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkRx.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o: lwmesh/nwk/src/nwkSecurity.c  .generated_files/flags/default/ba18f62f6bbcdc2ef384561a0080df84393c20b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkSecurity.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o: lwmesh/nwk/src/nwkTx.c  .generated_files/flags/default/66d56673aaaf3f789f75f2a4aee7e996ed174170 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkTx.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/phy/at86rf212/src/phy.o: lwmesh/phy/at86rf212/src/phy.c  .generated_files/flags/default/73a8cad925e2afc5324a85dff29119687a57fce6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/phy/at86rf212/src" 
	@${RM} ${OBJECTDIR}/lwmesh/phy/at86rf212/src/phy.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/phy/at86rf212/src/phy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/phy/at86rf212/src/phy.c  -o ${OBJECTDIR}/lwmesh/phy/at86rf212/src/phy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/phy/at86rf212/src/phy.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o: lwmesh/phy/at86rf230/src/phy.c  .generated_files/flags/default/b692e3f3d1d6f073145bd9e9a648890342f6e139 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/phy/at86rf230/src" 
	@${RM} ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/phy/at86rf230/src/phy.c  -o ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/sys/src/sys.o: lwmesh/sys/src/sys.c  .generated_files/flags/default/8b84718cf56bf45d4946ce136b934727298c1040 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/sys/src" 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sys.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sys.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/sys/src/sys.c  -o ${OBJECTDIR}/lwmesh/sys/src/sys.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/sys/src/sys.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o: lwmesh/sys/src/sysEncrypt.c  .generated_files/flags/default/ccbb3af6f3b68c0c414515f23c387c95086ff8a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/sys/src" 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/sys/src/sysEncrypt.c  -o ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/sys/src/sysTimer.o: lwmesh/sys/src/sysTimer.c  .generated_files/flags/default/fa337e1834e2a293a4f12d4ed14d4ecb597f7cde .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/sys/src" 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/sys/src/sysTimer.c  -o ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/sys/src/sysTimer.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/6a91f5a3657626dc352c5b499614f79c8f9aa5c6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o: lwmesh/hal/pic24f/src/hal.c  .generated_files/flags/default/d0c31d9a61097b50b8b20a87d237ee724ade9ff4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/hal/pic24f/src" 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/hal/pic24f/src/hal.c  -o ${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/hal/pic24f/src/hal.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o: lwmesh/hal/pic24f/src/halPhy.c  .generated_files/flags/default/56dc58e1a832a569b934e9b1adeb10e7b8a7d550 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/hal/pic24f/src" 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/hal/pic24f/src/halPhy.c  -o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/hal/pic24f/src/halPhy.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o: lwmesh/hal/pic24f/src/halTimer.c  .generated_files/flags/default/78ca78d66bcf186a95520ec58f28df5d1bef36fc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/hal/pic24f/src" 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/hal/pic24f/src/halTimer.c  -o ${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/hal/pic24f/src/halTimer.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwk.o: lwmesh/nwk/src/nwk.c  .generated_files/flags/default/a7d89609b2e6631bdfa7a04ed2b91c67611e90a2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwk.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwk.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwk.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwk.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o: lwmesh/nwk/src/nwkDataReq.c  .generated_files/flags/default/a58380401ae2aca9d2ae7ed044502c6eb93a1765 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkDataReq.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkDataReq.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o: lwmesh/nwk/src/nwkFrame.c  .generated_files/flags/default/cb712645b596fdddf85ec1237821a5cc302f1e5b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkFrame.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkFrame.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o: lwmesh/nwk/src/nwkGroup.c  .generated_files/flags/default/fc7813b30e7bc17544187c1d8cf15a04840436bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkGroup.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkGroup.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o: lwmesh/nwk/src/nwkRoute.c  .generated_files/flags/default/9973291b780e462917345272a1ac09087fa2701d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkRoute.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkRoute.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o: lwmesh/nwk/src/nwkRouteDiscovery.c  .generated_files/flags/default/63430459040b6690dfad5f97fb41e7afa415e1d3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkRouteDiscovery.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkRouteDiscovery.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o: lwmesh/nwk/src/nwkRx.c  .generated_files/flags/default/2e71a67c866bf1f86746bbec370b4c301234eacf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkRx.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkRx.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o: lwmesh/nwk/src/nwkSecurity.c  .generated_files/flags/default/3d64817914a8652da1b4e96d5b27cbf32603641d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkSecurity.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkSecurity.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o: lwmesh/nwk/src/nwkTx.c  .generated_files/flags/default/d8818dd7d2d185b35316000f4a1b35a64ccf7648 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/nwk/src" 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/nwk/src/nwkTx.c  -o ${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/nwk/src/nwkTx.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/phy/at86rf212/src/phy.o: lwmesh/phy/at86rf212/src/phy.c  .generated_files/flags/default/a2ab4be2d45a6b6fb44aed580430030259f2ffb7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/phy/at86rf212/src" 
	@${RM} ${OBJECTDIR}/lwmesh/phy/at86rf212/src/phy.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/phy/at86rf212/src/phy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/phy/at86rf212/src/phy.c  -o ${OBJECTDIR}/lwmesh/phy/at86rf212/src/phy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/phy/at86rf212/src/phy.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o: lwmesh/phy/at86rf230/src/phy.c  .generated_files/flags/default/20d74f868da5cdb6bcf9c379be45a3ed26e675fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/phy/at86rf230/src" 
	@${RM} ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/phy/at86rf230/src/phy.c  -o ${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/phy/at86rf230/src/phy.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/sys/src/sys.o: lwmesh/sys/src/sys.c  .generated_files/flags/default/b3b6f9eebd3c2f12e0c1f183ab3e3192f783181c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/sys/src" 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sys.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sys.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/sys/src/sys.c  -o ${OBJECTDIR}/lwmesh/sys/src/sys.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/sys/src/sys.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o: lwmesh/sys/src/sysEncrypt.c  .generated_files/flags/default/529f7d62e7d37881751d0776587b99ed2960ebd6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/sys/src" 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/sys/src/sysEncrypt.c  -o ${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/sys/src/sysEncrypt.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lwmesh/sys/src/sysTimer.o: lwmesh/sys/src/sysTimer.c  .generated_files/flags/default/c57b7bcd9272ecb3683f3ac66fbdcd3112934d8a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/lwmesh/sys/src" 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o.d 
	@${RM} ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lwmesh/sys/src/sysTimer.c  -o ${OBJECTDIR}/lwmesh/sys/src/sysTimer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lwmesh/sys/src/sysTimer.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/44dc2fba8ff648acb6154698564dbe3c0f18720d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"lwmesh/hal/pic24f/inc" -I"lwmesh/nwk/inc" -I"lwmesh/sys/inc" -I"lwmesh/include" -I"lwmesh/phy/at86rf212/inc" -DHAL_PIC24F -DPLATFORM_UMOGI -DPHY_AT86RF212 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
${DISTDIR}/hal_umogi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/hal_umogi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/hal_umogi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/hal_umogi.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/hal_umogi.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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
