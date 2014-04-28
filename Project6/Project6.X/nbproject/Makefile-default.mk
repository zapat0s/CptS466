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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_WiFi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_WiFi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=FreeRTOS/portable/MemMang/heap_2.c FreeRTOS/portable/MPLAB/PIC32MX/port.c FreeRTOS/portable/MPLAB/PIC32MX/port_asm.S FreeRTOS/croutine.c FreeRTOS/list.c FreeRTOS/queue.c FreeRTOS/tasks.c FreeRTOS/timers.c "TCPIP Stack/Announce.c" "TCPIP Stack/ARCFOUR.c" "TCPIP Stack/ARP.c" "TCPIP Stack/AutoIP.c" "TCPIP Stack/BerkeleyAPI.c" "TCPIP Stack/BigInt.c" "TCPIP Stack/Delay.c" "TCPIP Stack/DHCP.c" "TCPIP Stack/DHCPs.c" "TCPIP Stack/DNS.c" "TCPIP Stack/DNSs.c" "TCPIP Stack/DynDNS.c" "TCPIP Stack/ENC28J60.c" "TCPIP Stack/ENCX24J600.c" "TCPIP Stack/ETH97J60.c" "TCPIP Stack/eth_pic32_ext_phy_rtl8201FL.c" "TCPIP Stack/ETHPIC32ExtPhy.c" "TCPIP Stack/ETHPIC32ExtPhyDP83640.c" "TCPIP Stack/ETHPIC32ExtPhyDP83848.c" "TCPIP Stack/ETHPIC32ExtPhySMSC8700.c" "TCPIP Stack/ETHPIC32ExtPhySMSC8720.c" "TCPIP Stack/ETHPIC32IntMac.c" "TCPIP Stack/FileSystem.c" "TCPIP Stack/FTP.c" "TCPIP Stack/Hashes.c" "TCPIP Stack/Helpers.c" "TCPIP Stack/HTTP2.c" "TCPIP Stack/ICMP.c" "TCPIP Stack/IP.c" "TCPIP Stack/LCDBlocking.c" "TCPIP Stack/MPFS2.c" "TCPIP Stack/NBNS.c" "TCPIP Stack/Random.c" "TCPIP Stack/Reboot.c" "TCPIP Stack/RSA.c" "TCPIP Stack/SMTP.c" "TCPIP Stack/SNMP.c" "TCPIP Stack/SNMPv3.c" "TCPIP Stack/SNMPv3USM.c" "TCPIP Stack/SNTP.c" "TCPIP Stack/SPIEEPROM.c" "TCPIP Stack/SPIFlash.c" "TCPIP Stack/SPIRAM.c" "TCPIP Stack/SSL.c" "TCPIP Stack/StackTsk.c" "TCPIP Stack/TCP.c" "TCPIP Stack/TCPPerformanceTest.c" "TCPIP Stack/Telnet.c" "TCPIP Stack/TFTPc.c" "TCPIP Stack/Tick.c" "TCPIP Stack/UART.c" "TCPIP Stack/UART2TCPBridge.c" "TCPIP Stack/UDP.c" "TCPIP Stack/UDPPerformanceTest.c" "TCPIP Stack/ZeroconfHelper.c" "TCPIP Stack/ZeroconfLinkLocal.c" "TCPIP Stack/ZeroconfMulticastDNS.c" "TCPIP Stack/WiFi/WF_Eint.c" "TCPIP Stack/WiFi/WF_pbkdf2.c" "TCPIP Stack/WiFi/WF_Spi.c" "TCPIP Stack/WiFi/WFConnectionAlgorithm.c" "TCPIP Stack/WiFi/WFConnectionManager.c" "TCPIP Stack/WiFi/WFConnectionProfile.c" "TCPIP Stack/WiFi/WFConsole.c" "TCPIP Stack/WiFi/WFConsoleIfconfig.c" "TCPIP Stack/WiFi/WFConsoleIwconfig.c" "TCPIP Stack/WiFi/WFConsoleIwpriv.c" "TCPIP Stack/WiFi/WFConsoleMsgHandler.c" "TCPIP Stack/WiFi/WFConsoleMsgs.c" "TCPIP Stack/WiFi/WFDataTxRx.c" "TCPIP Stack/WiFi/WFDebugStrings.c" "TCPIP Stack/WiFi/WFDriverCom.c" "TCPIP Stack/WiFi/WFDriverRaw.c" "TCPIP Stack/WiFi/WFEasyConfig.c" "TCPIP Stack/WiFi/WFEventHandler.c" "TCPIP Stack/WiFi/WFInit.c" "TCPIP Stack/WiFi/WFMac.c" "TCPIP Stack/WiFi/WFMgmtMsg.c" "TCPIP Stack/WiFi/WFParamMsg.c" "TCPIP Stack/WiFi/WFPowerSave.c" "TCPIP Stack/WiFi/WFScan.c" "TCPIP Stack/WiFi/WFTxPower.c" main.c INT3_ISR.S T5_ISR.S

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/FreeRTOS/portable/MemMang/heap_2.o ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port.o ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o ${OBJECTDIR}/FreeRTOS/croutine.o ${OBJECTDIR}/FreeRTOS/list.o ${OBJECTDIR}/FreeRTOS/queue.o ${OBJECTDIR}/FreeRTOS/tasks.o ${OBJECTDIR}/FreeRTOS/timers.o "${OBJECTDIR}/TCPIP Stack/Announce.o" "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o" "${OBJECTDIR}/TCPIP Stack/ARP.o" "${OBJECTDIR}/TCPIP Stack/AutoIP.o" "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o" "${OBJECTDIR}/TCPIP Stack/BigInt.o" "${OBJECTDIR}/TCPIP Stack/Delay.o" "${OBJECTDIR}/TCPIP Stack/DHCP.o" "${OBJECTDIR}/TCPIP Stack/DHCPs.o" "${OBJECTDIR}/TCPIP Stack/DNS.o" "${OBJECTDIR}/TCPIP Stack/DNSs.o" "${OBJECTDIR}/TCPIP Stack/DynDNS.o" "${OBJECTDIR}/TCPIP Stack/ENC28J60.o" "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o" "${OBJECTDIR}/TCPIP Stack/ETH97J60.o" "${OBJECTDIR}/TCPIP Stack/eth_pic32_ext_phy_rtl8201FL.o" "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhy.o" "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83640.o" "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83848.o" "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8700.o" "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8720.o" "${OBJECTDIR}/TCPIP Stack/ETHPIC32IntMac.o" "${OBJECTDIR}/TCPIP Stack/FileSystem.o" "${OBJECTDIR}/TCPIP Stack/FTP.o" "${OBJECTDIR}/TCPIP Stack/Hashes.o" "${OBJECTDIR}/TCPIP Stack/Helpers.o" "${OBJECTDIR}/TCPIP Stack/HTTP2.o" "${OBJECTDIR}/TCPIP Stack/ICMP.o" "${OBJECTDIR}/TCPIP Stack/IP.o" "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o" "${OBJECTDIR}/TCPIP Stack/MPFS2.o" "${OBJECTDIR}/TCPIP Stack/NBNS.o" "${OBJECTDIR}/TCPIP Stack/Random.o" "${OBJECTDIR}/TCPIP Stack/Reboot.o" "${OBJECTDIR}/TCPIP Stack/RSA.o" "${OBJECTDIR}/TCPIP Stack/SMTP.o" "${OBJECTDIR}/TCPIP Stack/SNMP.o" "${OBJECTDIR}/TCPIP Stack/SNMPv3.o" "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o" "${OBJECTDIR}/TCPIP Stack/SNTP.o" "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o" "${OBJECTDIR}/TCPIP Stack/SPIFlash.o" "${OBJECTDIR}/TCPIP Stack/SPIRAM.o" "${OBJECTDIR}/TCPIP Stack/SSL.o" "${OBJECTDIR}/TCPIP Stack/StackTsk.o" "${OBJECTDIR}/TCPIP Stack/TCP.o" "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o" "${OBJECTDIR}/TCPIP Stack/Telnet.o" "${OBJECTDIR}/TCPIP Stack/TFTPc.o" "${OBJECTDIR}/TCPIP Stack/Tick.o" "${OBJECTDIR}/TCPIP Stack/UART.o" "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o" "${OBJECTDIR}/TCPIP Stack/UDP.o" "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o" "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o" "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o" "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Eint.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WF_pbkdf2.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Spi.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionAlgorithm.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionManager.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionProfile.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsole.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIfconfig.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwconfig.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwpriv.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgHandler.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgs.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFDataTxRx.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFDebugStrings.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverCom.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverRaw.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFEasyConfig.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFEventHandler.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFInit.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFMac.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFMgmtMsg.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFParamMsg.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFPowerSave.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFScan.o" "${OBJECTDIR}/TCPIP Stack/WiFi/WFTxPower.o" ${OBJECTDIR}/main.o ${OBJECTDIR}/INT3_ISR.o ${OBJECTDIR}/T5_ISR.o
POSSIBLE_DEPFILES=${OBJECTDIR}/FreeRTOS/portable/MemMang/heap_2.o.d ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port.o.d ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o.d ${OBJECTDIR}/FreeRTOS/croutine.o.d ${OBJECTDIR}/FreeRTOS/list.o.d ${OBJECTDIR}/FreeRTOS/queue.o.d ${OBJECTDIR}/FreeRTOS/tasks.o.d ${OBJECTDIR}/FreeRTOS/timers.o.d "${OBJECTDIR}/TCPIP Stack/Announce.o.d" "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o.d" "${OBJECTDIR}/TCPIP Stack/ARP.o.d" "${OBJECTDIR}/TCPIP Stack/AutoIP.o.d" "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o.d" "${OBJECTDIR}/TCPIP Stack/BigInt.o.d" "${OBJECTDIR}/TCPIP Stack/Delay.o.d" "${OBJECTDIR}/TCPIP Stack/DHCP.o.d" "${OBJECTDIR}/TCPIP Stack/DHCPs.o.d" "${OBJECTDIR}/TCPIP Stack/DNS.o.d" "${OBJECTDIR}/TCPIP Stack/DNSs.o.d" "${OBJECTDIR}/TCPIP Stack/DynDNS.o.d" "${OBJECTDIR}/TCPIP Stack/ENC28J60.o.d" "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o.d" "${OBJECTDIR}/TCPIP Stack/ETH97J60.o.d" "${OBJECTDIR}/TCPIP Stack/eth_pic32_ext_phy_rtl8201FL.o.d" "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhy.o.d" "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83640.o.d" "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83848.o.d" "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8700.o.d" "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8720.o.d" "${OBJECTDIR}/TCPIP Stack/ETHPIC32IntMac.o.d" "${OBJECTDIR}/TCPIP Stack/FileSystem.o.d" "${OBJECTDIR}/TCPIP Stack/FTP.o.d" "${OBJECTDIR}/TCPIP Stack/Hashes.o.d" "${OBJECTDIR}/TCPIP Stack/Helpers.o.d" "${OBJECTDIR}/TCPIP Stack/HTTP2.o.d" "${OBJECTDIR}/TCPIP Stack/ICMP.o.d" "${OBJECTDIR}/TCPIP Stack/IP.o.d" "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o.d" "${OBJECTDIR}/TCPIP Stack/MPFS2.o.d" "${OBJECTDIR}/TCPIP Stack/NBNS.o.d" "${OBJECTDIR}/TCPIP Stack/Random.o.d" "${OBJECTDIR}/TCPIP Stack/Reboot.o.d" "${OBJECTDIR}/TCPIP Stack/RSA.o.d" "${OBJECTDIR}/TCPIP Stack/SMTP.o.d" "${OBJECTDIR}/TCPIP Stack/SNMP.o.d" "${OBJECTDIR}/TCPIP Stack/SNMPv3.o.d" "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o.d" "${OBJECTDIR}/TCPIP Stack/SNTP.o.d" "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o.d" "${OBJECTDIR}/TCPIP Stack/SPIFlash.o.d" "${OBJECTDIR}/TCPIP Stack/SPIRAM.o.d" "${OBJECTDIR}/TCPIP Stack/SSL.o.d" "${OBJECTDIR}/TCPIP Stack/StackTsk.o.d" "${OBJECTDIR}/TCPIP Stack/TCP.o.d" "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o.d" "${OBJECTDIR}/TCPIP Stack/Telnet.o.d" "${OBJECTDIR}/TCPIP Stack/TFTPc.o.d" "${OBJECTDIR}/TCPIP Stack/Tick.o.d" "${OBJECTDIR}/TCPIP Stack/UART.o.d" "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o.d" "${OBJECTDIR}/TCPIP Stack/UDP.o.d" "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o.d" "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o.d" "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o.d" "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Eint.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WF_pbkdf2.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Spi.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionAlgorithm.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionManager.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionProfile.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsole.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIfconfig.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwconfig.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwpriv.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgHandler.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgs.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFDataTxRx.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFDebugStrings.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverCom.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverRaw.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFEasyConfig.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFEventHandler.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFInit.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFMac.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFMgmtMsg.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFParamMsg.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFPowerSave.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFScan.o.d" "${OBJECTDIR}/TCPIP Stack/WiFi/WFTxPower.o.d" ${OBJECTDIR}/main.o.d ${OBJECTDIR}/INT3_ISR.o.d ${OBJECTDIR}/T5_ISR.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/FreeRTOS/portable/MemMang/heap_2.o ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port.o ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o ${OBJECTDIR}/FreeRTOS/croutine.o ${OBJECTDIR}/FreeRTOS/list.o ${OBJECTDIR}/FreeRTOS/queue.o ${OBJECTDIR}/FreeRTOS/tasks.o ${OBJECTDIR}/FreeRTOS/timers.o ${OBJECTDIR}/TCPIP\ Stack/Announce.o ${OBJECTDIR}/TCPIP\ Stack/ARCFOUR.o ${OBJECTDIR}/TCPIP\ Stack/ARP.o ${OBJECTDIR}/TCPIP\ Stack/AutoIP.o ${OBJECTDIR}/TCPIP\ Stack/BerkeleyAPI.o ${OBJECTDIR}/TCPIP\ Stack/BigInt.o ${OBJECTDIR}/TCPIP\ Stack/Delay.o ${OBJECTDIR}/TCPIP\ Stack/DHCP.o ${OBJECTDIR}/TCPIP\ Stack/DHCPs.o ${OBJECTDIR}/TCPIP\ Stack/DNS.o ${OBJECTDIR}/TCPIP\ Stack/DNSs.o ${OBJECTDIR}/TCPIP\ Stack/DynDNS.o ${OBJECTDIR}/TCPIP\ Stack/ENC28J60.o ${OBJECTDIR}/TCPIP\ Stack/ENCX24J600.o ${OBJECTDIR}/TCPIP\ Stack/ETH97J60.o ${OBJECTDIR}/TCPIP\ Stack/eth_pic32_ext_phy_rtl8201FL.o ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhy.o ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhyDP83640.o ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhyDP83848.o ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhySMSC8700.o ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhySMSC8720.o ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32IntMac.o ${OBJECTDIR}/TCPIP\ Stack/FileSystem.o ${OBJECTDIR}/TCPIP\ Stack/FTP.o ${OBJECTDIR}/TCPIP\ Stack/Hashes.o ${OBJECTDIR}/TCPIP\ Stack/Helpers.o ${OBJECTDIR}/TCPIP\ Stack/HTTP2.o ${OBJECTDIR}/TCPIP\ Stack/ICMP.o ${OBJECTDIR}/TCPIP\ Stack/IP.o ${OBJECTDIR}/TCPIP\ Stack/LCDBlocking.o ${OBJECTDIR}/TCPIP\ Stack/MPFS2.o ${OBJECTDIR}/TCPIP\ Stack/NBNS.o ${OBJECTDIR}/TCPIP\ Stack/Random.o ${OBJECTDIR}/TCPIP\ Stack/Reboot.o ${OBJECTDIR}/TCPIP\ Stack/RSA.o ${OBJECTDIR}/TCPIP\ Stack/SMTP.o ${OBJECTDIR}/TCPIP\ Stack/SNMP.o ${OBJECTDIR}/TCPIP\ Stack/SNMPv3.o ${OBJECTDIR}/TCPIP\ Stack/SNMPv3USM.o ${OBJECTDIR}/TCPIP\ Stack/SNTP.o ${OBJECTDIR}/TCPIP\ Stack/SPIEEPROM.o ${OBJECTDIR}/TCPIP\ Stack/SPIFlash.o ${OBJECTDIR}/TCPIP\ Stack/SPIRAM.o ${OBJECTDIR}/TCPIP\ Stack/SSL.o ${OBJECTDIR}/TCPIP\ Stack/StackTsk.o ${OBJECTDIR}/TCPIP\ Stack/TCP.o ${OBJECTDIR}/TCPIP\ Stack/TCPPerformanceTest.o ${OBJECTDIR}/TCPIP\ Stack/Telnet.o ${OBJECTDIR}/TCPIP\ Stack/TFTPc.o ${OBJECTDIR}/TCPIP\ Stack/Tick.o ${OBJECTDIR}/TCPIP\ Stack/UART.o ${OBJECTDIR}/TCPIP\ Stack/UART2TCPBridge.o ${OBJECTDIR}/TCPIP\ Stack/UDP.o ${OBJECTDIR}/TCPIP\ Stack/UDPPerformanceTest.o ${OBJECTDIR}/TCPIP\ Stack/ZeroconfHelper.o ${OBJECTDIR}/TCPIP\ Stack/ZeroconfLinkLocal.o ${OBJECTDIR}/TCPIP\ Stack/ZeroconfMulticastDNS.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WF_Eint.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WF_pbkdf2.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WF_Spi.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConnectionManager.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConnectionProfile.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsole.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleMsgs.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDataTxRx.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDebugStrings.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDriverCom.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDriverRaw.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFEasyConfig.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFEventHandler.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFInit.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFMac.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFMgmtMsg.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFParamMsg.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFPowerSave.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFScan.o ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFTxPower.o ${OBJECTDIR}/main.o ${OBJECTDIR}/INT3_ISR.o ${OBJECTDIR}/T5_ISR.o

# Source Files
SOURCEFILES=FreeRTOS/portable/MemMang/heap_2.c FreeRTOS/portable/MPLAB/PIC32MX/port.c FreeRTOS/portable/MPLAB/PIC32MX/port_asm.S FreeRTOS/croutine.c FreeRTOS/list.c FreeRTOS/queue.c FreeRTOS/tasks.c FreeRTOS/timers.c TCPIP Stack/Announce.c TCPIP Stack/ARCFOUR.c TCPIP Stack/ARP.c TCPIP Stack/AutoIP.c TCPIP Stack/BerkeleyAPI.c TCPIP Stack/BigInt.c TCPIP Stack/Delay.c TCPIP Stack/DHCP.c TCPIP Stack/DHCPs.c TCPIP Stack/DNS.c TCPIP Stack/DNSs.c TCPIP Stack/DynDNS.c TCPIP Stack/ENC28J60.c TCPIP Stack/ENCX24J600.c TCPIP Stack/ETH97J60.c TCPIP Stack/eth_pic32_ext_phy_rtl8201FL.c TCPIP Stack/ETHPIC32ExtPhy.c TCPIP Stack/ETHPIC32ExtPhyDP83640.c TCPIP Stack/ETHPIC32ExtPhyDP83848.c TCPIP Stack/ETHPIC32ExtPhySMSC8700.c TCPIP Stack/ETHPIC32ExtPhySMSC8720.c TCPIP Stack/ETHPIC32IntMac.c TCPIP Stack/FileSystem.c TCPIP Stack/FTP.c TCPIP Stack/Hashes.c TCPIP Stack/Helpers.c TCPIP Stack/HTTP2.c TCPIP Stack/ICMP.c TCPIP Stack/IP.c TCPIP Stack/LCDBlocking.c TCPIP Stack/MPFS2.c TCPIP Stack/NBNS.c TCPIP Stack/Random.c TCPIP Stack/Reboot.c TCPIP Stack/RSA.c TCPIP Stack/SMTP.c TCPIP Stack/SNMP.c TCPIP Stack/SNMPv3.c TCPIP Stack/SNMPv3USM.c TCPIP Stack/SNTP.c TCPIP Stack/SPIEEPROM.c TCPIP Stack/SPIFlash.c TCPIP Stack/SPIRAM.c TCPIP Stack/SSL.c TCPIP Stack/StackTsk.c TCPIP Stack/TCP.c TCPIP Stack/TCPPerformanceTest.c TCPIP Stack/Telnet.c TCPIP Stack/TFTPc.c TCPIP Stack/Tick.c TCPIP Stack/UART.c TCPIP Stack/UART2TCPBridge.c TCPIP Stack/UDP.c TCPIP Stack/UDPPerformanceTest.c TCPIP Stack/ZeroconfHelper.c TCPIP Stack/ZeroconfLinkLocal.c TCPIP Stack/ZeroconfMulticastDNS.c TCPIP Stack/WiFi/WF_Eint.c TCPIP Stack/WiFi/WF_pbkdf2.c TCPIP Stack/WiFi/WF_Spi.c TCPIP Stack/WiFi/WFConnectionAlgorithm.c TCPIP Stack/WiFi/WFConnectionManager.c TCPIP Stack/WiFi/WFConnectionProfile.c TCPIP Stack/WiFi/WFConsole.c TCPIP Stack/WiFi/WFConsoleIfconfig.c TCPIP Stack/WiFi/WFConsoleIwconfig.c TCPIP Stack/WiFi/WFConsoleIwpriv.c TCPIP Stack/WiFi/WFConsoleMsgHandler.c TCPIP Stack/WiFi/WFConsoleMsgs.c TCPIP Stack/WiFi/WFDataTxRx.c TCPIP Stack/WiFi/WFDebugStrings.c TCPIP Stack/WiFi/WFDriverCom.c TCPIP Stack/WiFi/WFDriverRaw.c TCPIP Stack/WiFi/WFEasyConfig.c TCPIP Stack/WiFi/WFEventHandler.c TCPIP Stack/WiFi/WFInit.c TCPIP Stack/WiFi/WFMac.c TCPIP Stack/WiFi/WFMgmtMsg.c TCPIP Stack/WiFi/WFParamMsg.c TCPIP Stack/WiFi/WFPowerSave.c TCPIP Stack/WiFi/WFScan.c TCPIP Stack/WiFi/WFTxPower.c main.c INT3_ISR.S T5_ISR.S


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
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_WiFi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o: FreeRTOS/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX 
	@${RM} ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o 
	@${RM} ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o.ok ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o.d" "${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o.d"  -o ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o FreeRTOS/portable/MPLAB/PIC32MX/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/INT3_ISR.o: INT3_ISR.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/INT3_ISR.o.d 
	@${RM} ${OBJECTDIR}/INT3_ISR.o 
	@${RM} ${OBJECTDIR}/INT3_ISR.o.ok ${OBJECTDIR}/INT3_ISR.o.err 
	@${FIXDEPS} "${OBJECTDIR}/INT3_ISR.o.d" "${OBJECTDIR}/INT3_ISR.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/INT3_ISR.o.d"  -o ${OBJECTDIR}/INT3_ISR.o INT3_ISR.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/INT3_ISR.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/T5_ISR.o: T5_ISR.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/T5_ISR.o.d 
	@${RM} ${OBJECTDIR}/T5_ISR.o 
	@${RM} ${OBJECTDIR}/T5_ISR.o.ok ${OBJECTDIR}/T5_ISR.o.err 
	@${FIXDEPS} "${OBJECTDIR}/T5_ISR.o.d" "${OBJECTDIR}/T5_ISR.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/T5_ISR.o.d"  -o ${OBJECTDIR}/T5_ISR.o T5_ISR.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/T5_ISR.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
else
${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o: FreeRTOS/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX 
	@${RM} ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o 
	@${RM} ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o.ok ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o.d" "${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o.d"  -o ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o FreeRTOS/portable/MPLAB/PIC32MX/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port_asm.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/INT3_ISR.o: INT3_ISR.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/INT3_ISR.o.d 
	@${RM} ${OBJECTDIR}/INT3_ISR.o 
	@${RM} ${OBJECTDIR}/INT3_ISR.o.ok ${OBJECTDIR}/INT3_ISR.o.err 
	@${FIXDEPS} "${OBJECTDIR}/INT3_ISR.o.d" "${OBJECTDIR}/INT3_ISR.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/INT3_ISR.o.d"  -o ${OBJECTDIR}/INT3_ISR.o INT3_ISR.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/INT3_ISR.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/T5_ISR.o: T5_ISR.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/T5_ISR.o.d 
	@${RM} ${OBJECTDIR}/T5_ISR.o 
	@${RM} ${OBJECTDIR}/T5_ISR.o.ok ${OBJECTDIR}/T5_ISR.o.err 
	@${FIXDEPS} "${OBJECTDIR}/T5_ISR.o.d" "${OBJECTDIR}/T5_ISR.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/T5_ISR.o.d"  -o ${OBJECTDIR}/T5_ISR.o T5_ISR.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/T5_ISR.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/FreeRTOS/portable/MemMang/heap_2.o: FreeRTOS/portable/MemMang/heap_2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS/portable/MemMang 
	@${RM} ${OBJECTDIR}/FreeRTOS/portable/MemMang/heap_2.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/portable/MemMang/heap_2.o 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/portable/MemMang/heap_2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/portable/MemMang/heap_2.o.d" -o ${OBJECTDIR}/FreeRTOS/portable/MemMang/heap_2.o FreeRTOS/portable/MemMang/heap_2.c   
	
${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port.o: FreeRTOS/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX 
	@${RM} ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port.o 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port.o.d" -o ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port.o FreeRTOS/portable/MPLAB/PIC32MX/port.c   
	
${OBJECTDIR}/FreeRTOS/croutine.o: FreeRTOS/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/croutine.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/croutine.o.d" -o ${OBJECTDIR}/FreeRTOS/croutine.o FreeRTOS/croutine.c   
	
${OBJECTDIR}/FreeRTOS/list.o: FreeRTOS/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/list.o.d" -o ${OBJECTDIR}/FreeRTOS/list.o FreeRTOS/list.c   
	
${OBJECTDIR}/FreeRTOS/queue.o: FreeRTOS/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/queue.o.d" -o ${OBJECTDIR}/FreeRTOS/queue.o FreeRTOS/queue.c   
	
${OBJECTDIR}/FreeRTOS/tasks.o: FreeRTOS/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/tasks.o.d" -o ${OBJECTDIR}/FreeRTOS/tasks.o FreeRTOS/tasks.c   
	
${OBJECTDIR}/FreeRTOS/timers.o: FreeRTOS/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/timers.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/timers.o.d" -o ${OBJECTDIR}/FreeRTOS/timers.o FreeRTOS/timers.c   
	
${OBJECTDIR}/TCPIP\ Stack/Announce.o: TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Announce.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Announce.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Announce.o.d" -o "${OBJECTDIR}/TCPIP Stack/Announce.o" "TCPIP Stack/Announce.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ARCFOUR.o: TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ARCFOUR.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o.d" -o "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o" "TCPIP Stack/ARCFOUR.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ARP.o: TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ARP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ARP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ARP.o.d" -o "${OBJECTDIR}/TCPIP Stack/ARP.o" "TCPIP Stack/ARP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/AutoIP.o: TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/AutoIP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/AutoIP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/AutoIP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/AutoIP.o.d" -o "${OBJECTDIR}/TCPIP Stack/AutoIP.o" "TCPIP Stack/AutoIP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/BerkeleyAPI.o: TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/BerkeleyAPI.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o.d" -o "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o" "TCPIP Stack/BerkeleyAPI.c"   
	
${OBJECTDIR}/TCPIP\ Stack/BigInt.o: TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/BigInt.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/BigInt.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/BigInt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/BigInt.o.d" -o "${OBJECTDIR}/TCPIP Stack/BigInt.o" "TCPIP Stack/BigInt.c"   
	
${OBJECTDIR}/TCPIP\ Stack/Delay.o: TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Delay.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Delay.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Delay.o.d" -o "${OBJECTDIR}/TCPIP Stack/Delay.o" "TCPIP Stack/Delay.c"   
	
${OBJECTDIR}/TCPIP\ Stack/DHCP.o: TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/DHCP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DHCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DHCP.o.d" -o "${OBJECTDIR}/TCPIP Stack/DHCP.o" "TCPIP Stack/DHCP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/DHCPs.o: TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/DHCPs.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCPs.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DHCPs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DHCPs.o.d" -o "${OBJECTDIR}/TCPIP Stack/DHCPs.o" "TCPIP Stack/DHCPs.c"   
	
${OBJECTDIR}/TCPIP\ Stack/DNS.o: TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/DNS.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNS.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DNS.o.d" -o "${OBJECTDIR}/TCPIP Stack/DNS.o" "TCPIP Stack/DNS.c"   
	
${OBJECTDIR}/TCPIP\ Stack/DNSs.o: TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/DNSs.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNSs.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DNSs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DNSs.o.d" -o "${OBJECTDIR}/TCPIP Stack/DNSs.o" "TCPIP Stack/DNSs.c"   
	
${OBJECTDIR}/TCPIP\ Stack/DynDNS.o: TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/DynDNS.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DynDNS.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DynDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DynDNS.o.d" -o "${OBJECTDIR}/TCPIP Stack/DynDNS.o" "TCPIP Stack/DynDNS.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ENC28J60.o: TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ENC28J60.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ENC28J60.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ENC28J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ENC28J60.o.d" -o "${OBJECTDIR}/TCPIP Stack/ENC28J60.o" "TCPIP Stack/ENC28J60.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ENCX24J600.o: TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ENCX24J600.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o.d" -o "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o" "TCPIP Stack/ENCX24J600.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ETH97J60.o: TCPIP\ Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ETH97J60.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETH97J60.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETH97J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETH97J60.o.d" -o "${OBJECTDIR}/TCPIP Stack/ETH97J60.o" "TCPIP Stack/ETH97J60.c"   
	
${OBJECTDIR}/TCPIP\ Stack/eth_pic32_ext_phy_rtl8201FL.o: TCPIP\ Stack/eth_pic32_ext_phy_rtl8201FL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/eth_pic32_ext_phy_rtl8201FL.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/eth_pic32_ext_phy_rtl8201FL.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/eth_pic32_ext_phy_rtl8201FL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/eth_pic32_ext_phy_rtl8201FL.o.d" -o "${OBJECTDIR}/TCPIP Stack/eth_pic32_ext_phy_rtl8201FL.o" "TCPIP Stack/eth_pic32_ext_phy_rtl8201FL.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhy.o: TCPIP\ Stack/ETHPIC32ExtPhy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhy.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhy.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhy.o.d" -o "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhy.o" "TCPIP Stack/ETHPIC32ExtPhy.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhyDP83640.o: TCPIP\ Stack/ETHPIC32ExtPhyDP83640.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhyDP83640.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83640.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83640.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83640.o.d" -o "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83640.o" "TCPIP Stack/ETHPIC32ExtPhyDP83640.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhyDP83848.o: TCPIP\ Stack/ETHPIC32ExtPhyDP83848.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhyDP83848.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83848.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83848.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83848.o.d" -o "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83848.o" "TCPIP Stack/ETHPIC32ExtPhyDP83848.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhySMSC8700.o: TCPIP\ Stack/ETHPIC32ExtPhySMSC8700.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhySMSC8700.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8700.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8700.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8700.o.d" -o "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8700.o" "TCPIP Stack/ETHPIC32ExtPhySMSC8700.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhySMSC8720.o: TCPIP\ Stack/ETHPIC32ExtPhySMSC8720.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhySMSC8720.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8720.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8720.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8720.o.d" -o "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8720.o" "TCPIP Stack/ETHPIC32ExtPhySMSC8720.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ETHPIC32IntMac.o: TCPIP\ Stack/ETHPIC32IntMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32IntMac.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETHPIC32IntMac.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETHPIC32IntMac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETHPIC32IntMac.o.d" -o "${OBJECTDIR}/TCPIP Stack/ETHPIC32IntMac.o" "TCPIP Stack/ETHPIC32IntMac.c"   
	
${OBJECTDIR}/TCPIP\ Stack/FileSystem.o: TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/FileSystem.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/FileSystem.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/FileSystem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/FileSystem.o.d" -o "${OBJECTDIR}/TCPIP Stack/FileSystem.o" "TCPIP Stack/FileSystem.c"   
	
${OBJECTDIR}/TCPIP\ Stack/FTP.o: TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/FTP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/FTP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/FTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/FTP.o.d" -o "${OBJECTDIR}/TCPIP Stack/FTP.o" "TCPIP Stack/FTP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/Hashes.o: TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Hashes.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Hashes.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Hashes.o.d" -o "${OBJECTDIR}/TCPIP Stack/Hashes.o" "TCPIP Stack/Hashes.c"   
	
${OBJECTDIR}/TCPIP\ Stack/Helpers.o: TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Helpers.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Helpers.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Helpers.o.d" -o "${OBJECTDIR}/TCPIP Stack/Helpers.o" "TCPIP Stack/Helpers.c"   
	
${OBJECTDIR}/TCPIP\ Stack/HTTP2.o: TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/HTTP2.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/HTTP2.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/HTTP2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/HTTP2.o.d" -o "${OBJECTDIR}/TCPIP Stack/HTTP2.o" "TCPIP Stack/HTTP2.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ICMP.o: TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ICMP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ICMP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ICMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ICMP.o.d" -o "${OBJECTDIR}/TCPIP Stack/ICMP.o" "TCPIP Stack/ICMP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/IP.o: TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/IP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/IP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/IP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/IP.o.d" -o "${OBJECTDIR}/TCPIP Stack/IP.o" "TCPIP Stack/IP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/LCDBlocking.o: TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/LCDBlocking.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o.d" -o "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o" "TCPIP Stack/LCDBlocking.c"   
	
${OBJECTDIR}/TCPIP\ Stack/MPFS2.o: TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/MPFS2.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/MPFS2.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/MPFS2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/MPFS2.o.d" -o "${OBJECTDIR}/TCPIP Stack/MPFS2.o" "TCPIP Stack/MPFS2.c"   
	
${OBJECTDIR}/TCPIP\ Stack/NBNS.o: TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/NBNS.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/NBNS.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/NBNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/NBNS.o.d" -o "${OBJECTDIR}/TCPIP Stack/NBNS.o" "TCPIP Stack/NBNS.c"   
	
${OBJECTDIR}/TCPIP\ Stack/Random.o: TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Random.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Random.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Random.o.d" -o "${OBJECTDIR}/TCPIP Stack/Random.o" "TCPIP Stack/Random.c"   
	
${OBJECTDIR}/TCPIP\ Stack/Reboot.o: TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Reboot.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Reboot.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Reboot.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Reboot.o.d" -o "${OBJECTDIR}/TCPIP Stack/Reboot.o" "TCPIP Stack/Reboot.c"   
	
${OBJECTDIR}/TCPIP\ Stack/RSA.o: TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/RSA.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/RSA.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/RSA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/RSA.o.d" -o "${OBJECTDIR}/TCPIP Stack/RSA.o" "TCPIP Stack/RSA.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SMTP.o: TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SMTP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SMTP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SMTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SMTP.o.d" -o "${OBJECTDIR}/TCPIP Stack/SMTP.o" "TCPIP Stack/SMTP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SNMP.o: TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SNMP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNMP.o.d" -o "${OBJECTDIR}/TCPIP Stack/SNMP.o" "TCPIP Stack/SNMP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SNMPv3.o: TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SNMPv3.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMPv3.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNMPv3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNMPv3.o.d" -o "${OBJECTDIR}/TCPIP Stack/SNMPv3.o" "TCPIP Stack/SNMPv3.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SNMPv3USM.o: TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SNMPv3USM.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o.d" -o "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o" "TCPIP Stack/SNMPv3USM.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SNTP.o: TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SNTP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNTP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNTP.o.d" -o "${OBJECTDIR}/TCPIP Stack/SNTP.o" "TCPIP Stack/SNTP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SPIEEPROM.o: TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SPIEEPROM.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o.d" -o "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o" "TCPIP Stack/SPIEEPROM.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SPIFlash.o: TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SPIFlash.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIFlash.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SPIFlash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SPIFlash.o.d" -o "${OBJECTDIR}/TCPIP Stack/SPIFlash.o" "TCPIP Stack/SPIFlash.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SPIRAM.o: TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SPIRAM.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIRAM.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SPIRAM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SPIRAM.o.d" -o "${OBJECTDIR}/TCPIP Stack/SPIRAM.o" "TCPIP Stack/SPIRAM.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SSL.o: TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SSL.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SSL.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SSL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SSL.o.d" -o "${OBJECTDIR}/TCPIP Stack/SSL.o" "TCPIP Stack/SSL.c"   
	
${OBJECTDIR}/TCPIP\ Stack/StackTsk.o: TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/StackTsk.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/StackTsk.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/StackTsk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/StackTsk.o.d" -o "${OBJECTDIR}/TCPIP Stack/StackTsk.o" "TCPIP Stack/StackTsk.c"   
	
${OBJECTDIR}/TCPIP\ Stack/TCP.o: TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/TCP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/TCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/TCP.o.d" -o "${OBJECTDIR}/TCPIP Stack/TCP.o" "TCPIP Stack/TCP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/TCPPerformanceTest.o: TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/TCPPerformanceTest.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o.d" -o "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o" "TCPIP Stack/TCPPerformanceTest.c"   
	
${OBJECTDIR}/TCPIP\ Stack/Telnet.o: TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Telnet.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Telnet.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Telnet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Telnet.o.d" -o "${OBJECTDIR}/TCPIP Stack/Telnet.o" "TCPIP Stack/Telnet.c"   
	
${OBJECTDIR}/TCPIP\ Stack/TFTPc.o: TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/TFTPc.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TFTPc.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/TFTPc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/TFTPc.o.d" -o "${OBJECTDIR}/TCPIP Stack/TFTPc.o" "TCPIP Stack/TFTPc.c"   
	
${OBJECTDIR}/TCPIP\ Stack/Tick.o: TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Tick.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Tick.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Tick.o.d" -o "${OBJECTDIR}/TCPIP Stack/Tick.o" "TCPIP Stack/Tick.c"   
	
${OBJECTDIR}/TCPIP\ Stack/UART.o: TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/UART.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UART.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UART.o.d" -o "${OBJECTDIR}/TCPIP Stack/UART.o" "TCPIP Stack/UART.c"   
	
${OBJECTDIR}/TCPIP\ Stack/UART2TCPBridge.o: TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/UART2TCPBridge.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o.d" -o "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o" "TCPIP Stack/UART2TCPBridge.c"   
	
${OBJECTDIR}/TCPIP\ Stack/UDP.o: TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/UDP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UDP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UDP.o.d" -o "${OBJECTDIR}/TCPIP Stack/UDP.o" "TCPIP Stack/UDP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/UDPPerformanceTest.o: TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/UDPPerformanceTest.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o.d" -o "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o" "TCPIP Stack/UDPPerformanceTest.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ZeroconfHelper.o: TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ZeroconfHelper.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o.d" -o "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o" "TCPIP Stack/ZeroconfHelper.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ZeroconfLinkLocal.o: TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ZeroconfLinkLocal.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o.d" -o "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o" "TCPIP Stack/ZeroconfLinkLocal.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ZeroconfMulticastDNS.o: TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ZeroconfMulticastDNS.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o.d" -o "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o" "TCPIP Stack/ZeroconfMulticastDNS.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WF_Eint.o: TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WF_Eint.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Eint.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Eint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Eint.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Eint.o" "TCPIP Stack/WiFi/WF_Eint.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WF_pbkdf2.o: TCPIP\ Stack/WiFi/WF_pbkdf2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WF_pbkdf2.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WF_pbkdf2.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WF_pbkdf2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WF_pbkdf2.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WF_pbkdf2.o" "TCPIP Stack/WiFi/WF_pbkdf2.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WF_Spi.o: TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WF_Spi.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Spi.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Spi.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Spi.o" "TCPIP Stack/WiFi/WF_Spi.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o: TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionAlgorithm.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionAlgorithm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionAlgorithm.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionAlgorithm.o" "TCPIP Stack/WiFi/WFConnectionAlgorithm.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConnectionManager.o: TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConnectionManager.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionManager.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionManager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionManager.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionManager.o" "TCPIP Stack/WiFi/WFConnectionManager.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConnectionProfile.o: TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionProfile.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionProfile.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionProfile.o" "TCPIP Stack/WiFi/WFConnectionProfile.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsole.o: TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsole.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsole.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsole.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsole.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsole.o" "TCPIP Stack/WiFi/WFConsole.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o: TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIfconfig.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIfconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIfconfig.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIfconfig.o" "TCPIP Stack/WiFi/WFConsoleIfconfig.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o: TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwconfig.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwconfig.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwconfig.o" "TCPIP Stack/WiFi/WFConsoleIwconfig.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o: TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwpriv.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwpriv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwpriv.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwpriv.o" "TCPIP Stack/WiFi/WFConsoleIwpriv.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o: TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgHandler.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgHandler.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgHandler.o" "TCPIP Stack/WiFi/WFConsoleMsgHandler.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleMsgs.o: TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgs.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgs.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgs.o" "TCPIP Stack/WiFi/WFConsoleMsgs.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDataTxRx.o: TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDataTxRx.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDataTxRx.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDataTxRx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFDataTxRx.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFDataTxRx.o" "TCPIP Stack/WiFi/WFDataTxRx.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDebugStrings.o: TCPIP\ Stack/WiFi/WFDebugStrings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDebugStrings.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDebugStrings.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDebugStrings.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFDebugStrings.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFDebugStrings.o" "TCPIP Stack/WiFi/WFDebugStrings.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDriverCom.o: TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDriverCom.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverCom.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverCom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverCom.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverCom.o" "TCPIP Stack/WiFi/WFDriverCom.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDriverRaw.o: TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDriverRaw.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverRaw.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverRaw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverRaw.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverRaw.o" "TCPIP Stack/WiFi/WFDriverRaw.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFEasyConfig.o: TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFEasyConfig.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFEasyConfig.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFEasyConfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFEasyConfig.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFEasyConfig.o" "TCPIP Stack/WiFi/WFEasyConfig.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFEventHandler.o: TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFEventHandler.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFEventHandler.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFEventHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFEventHandler.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFEventHandler.o" "TCPIP Stack/WiFi/WFEventHandler.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFInit.o: TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFInit.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFInit.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFInit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFInit.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFInit.o" "TCPIP Stack/WiFi/WFInit.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFMac.o: TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFMac.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFMac.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFMac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFMac.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFMac.o" "TCPIP Stack/WiFi/WFMac.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFMgmtMsg.o: TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFMgmtMsg.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFMgmtMsg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFMgmtMsg.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFMgmtMsg.o" "TCPIP Stack/WiFi/WFMgmtMsg.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFParamMsg.o: TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFParamMsg.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFParamMsg.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFParamMsg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFParamMsg.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFParamMsg.o" "TCPIP Stack/WiFi/WFParamMsg.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFPowerSave.o: TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFPowerSave.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFPowerSave.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFPowerSave.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFPowerSave.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFPowerSave.o" "TCPIP Stack/WiFi/WFPowerSave.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFScan.o: TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFScan.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFScan.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFScan.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFScan.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFScan.o" "TCPIP Stack/WiFi/WFScan.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFTxPower.o: TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFTxPower.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFTxPower.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFTxPower.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFTxPower.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFTxPower.o" "TCPIP Stack/WiFi/WFTxPower.c"   
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c   
	
else
${OBJECTDIR}/FreeRTOS/portable/MemMang/heap_2.o: FreeRTOS/portable/MemMang/heap_2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS/portable/MemMang 
	@${RM} ${OBJECTDIR}/FreeRTOS/portable/MemMang/heap_2.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/portable/MemMang/heap_2.o 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/portable/MemMang/heap_2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/portable/MemMang/heap_2.o.d" -o ${OBJECTDIR}/FreeRTOS/portable/MemMang/heap_2.o FreeRTOS/portable/MemMang/heap_2.c   
	
${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port.o: FreeRTOS/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX 
	@${RM} ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port.o 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port.o.d" -o ${OBJECTDIR}/FreeRTOS/portable/MPLAB/PIC32MX/port.o FreeRTOS/portable/MPLAB/PIC32MX/port.c   
	
${OBJECTDIR}/FreeRTOS/croutine.o: FreeRTOS/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/croutine.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/croutine.o.d" -o ${OBJECTDIR}/FreeRTOS/croutine.o FreeRTOS/croutine.c   
	
${OBJECTDIR}/FreeRTOS/list.o: FreeRTOS/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/list.o.d" -o ${OBJECTDIR}/FreeRTOS/list.o FreeRTOS/list.c   
	
${OBJECTDIR}/FreeRTOS/queue.o: FreeRTOS/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/queue.o.d" -o ${OBJECTDIR}/FreeRTOS/queue.o FreeRTOS/queue.c   
	
${OBJECTDIR}/FreeRTOS/tasks.o: FreeRTOS/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/tasks.o.d" -o ${OBJECTDIR}/FreeRTOS/tasks.o FreeRTOS/tasks.c   
	
${OBJECTDIR}/FreeRTOS/timers.o: FreeRTOS/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/timers.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/FreeRTOS/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FreeRTOS/timers.o.d" -o ${OBJECTDIR}/FreeRTOS/timers.o FreeRTOS/timers.c   
	
${OBJECTDIR}/TCPIP\ Stack/Announce.o: TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Announce.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Announce.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Announce.o.d" -o "${OBJECTDIR}/TCPIP Stack/Announce.o" "TCPIP Stack/Announce.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ARCFOUR.o: TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ARCFOUR.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o.d" -o "${OBJECTDIR}/TCPIP Stack/ARCFOUR.o" "TCPIP Stack/ARCFOUR.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ARP.o: TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ARP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ARP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ARP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ARP.o.d" -o "${OBJECTDIR}/TCPIP Stack/ARP.o" "TCPIP Stack/ARP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/AutoIP.o: TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/AutoIP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/AutoIP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/AutoIP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/AutoIP.o.d" -o "${OBJECTDIR}/TCPIP Stack/AutoIP.o" "TCPIP Stack/AutoIP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/BerkeleyAPI.o: TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/BerkeleyAPI.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o.d" -o "${OBJECTDIR}/TCPIP Stack/BerkeleyAPI.o" "TCPIP Stack/BerkeleyAPI.c"   
	
${OBJECTDIR}/TCPIP\ Stack/BigInt.o: TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/BigInt.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/BigInt.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/BigInt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/BigInt.o.d" -o "${OBJECTDIR}/TCPIP Stack/BigInt.o" "TCPIP Stack/BigInt.c"   
	
${OBJECTDIR}/TCPIP\ Stack/Delay.o: TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Delay.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Delay.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Delay.o.d" -o "${OBJECTDIR}/TCPIP Stack/Delay.o" "TCPIP Stack/Delay.c"   
	
${OBJECTDIR}/TCPIP\ Stack/DHCP.o: TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/DHCP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DHCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DHCP.o.d" -o "${OBJECTDIR}/TCPIP Stack/DHCP.o" "TCPIP Stack/DHCP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/DHCPs.o: TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/DHCPs.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DHCPs.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DHCPs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DHCPs.o.d" -o "${OBJECTDIR}/TCPIP Stack/DHCPs.o" "TCPIP Stack/DHCPs.c"   
	
${OBJECTDIR}/TCPIP\ Stack/DNS.o: TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/DNS.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNS.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DNS.o.d" -o "${OBJECTDIR}/TCPIP Stack/DNS.o" "TCPIP Stack/DNS.c"   
	
${OBJECTDIR}/TCPIP\ Stack/DNSs.o: TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/DNSs.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DNSs.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DNSs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DNSs.o.d" -o "${OBJECTDIR}/TCPIP Stack/DNSs.o" "TCPIP Stack/DNSs.c"   
	
${OBJECTDIR}/TCPIP\ Stack/DynDNS.o: TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/DynDNS.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/DynDNS.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/DynDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/DynDNS.o.d" -o "${OBJECTDIR}/TCPIP Stack/DynDNS.o" "TCPIP Stack/DynDNS.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ENC28J60.o: TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ENC28J60.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ENC28J60.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ENC28J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ENC28J60.o.d" -o "${OBJECTDIR}/TCPIP Stack/ENC28J60.o" "TCPIP Stack/ENC28J60.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ENCX24J600.o: TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ENCX24J600.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o.d" -o "${OBJECTDIR}/TCPIP Stack/ENCX24J600.o" "TCPIP Stack/ENCX24J600.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ETH97J60.o: TCPIP\ Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ETH97J60.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETH97J60.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETH97J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETH97J60.o.d" -o "${OBJECTDIR}/TCPIP Stack/ETH97J60.o" "TCPIP Stack/ETH97J60.c"   
	
${OBJECTDIR}/TCPIP\ Stack/eth_pic32_ext_phy_rtl8201FL.o: TCPIP\ Stack/eth_pic32_ext_phy_rtl8201FL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/eth_pic32_ext_phy_rtl8201FL.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/eth_pic32_ext_phy_rtl8201FL.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/eth_pic32_ext_phy_rtl8201FL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/eth_pic32_ext_phy_rtl8201FL.o.d" -o "${OBJECTDIR}/TCPIP Stack/eth_pic32_ext_phy_rtl8201FL.o" "TCPIP Stack/eth_pic32_ext_phy_rtl8201FL.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhy.o: TCPIP\ Stack/ETHPIC32ExtPhy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhy.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhy.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhy.o.d" -o "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhy.o" "TCPIP Stack/ETHPIC32ExtPhy.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhyDP83640.o: TCPIP\ Stack/ETHPIC32ExtPhyDP83640.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhyDP83640.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83640.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83640.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83640.o.d" -o "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83640.o" "TCPIP Stack/ETHPIC32ExtPhyDP83640.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhyDP83848.o: TCPIP\ Stack/ETHPIC32ExtPhyDP83848.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhyDP83848.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83848.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83848.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83848.o.d" -o "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhyDP83848.o" "TCPIP Stack/ETHPIC32ExtPhyDP83848.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhySMSC8700.o: TCPIP\ Stack/ETHPIC32ExtPhySMSC8700.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhySMSC8700.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8700.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8700.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8700.o.d" -o "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8700.o" "TCPIP Stack/ETHPIC32ExtPhySMSC8700.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhySMSC8720.o: TCPIP\ Stack/ETHPIC32ExtPhySMSC8720.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32ExtPhySMSC8720.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8720.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8720.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8720.o.d" -o "${OBJECTDIR}/TCPIP Stack/ETHPIC32ExtPhySMSC8720.o" "TCPIP Stack/ETHPIC32ExtPhySMSC8720.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ETHPIC32IntMac.o: TCPIP\ Stack/ETHPIC32IntMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ETHPIC32IntMac.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ETHPIC32IntMac.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ETHPIC32IntMac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ETHPIC32IntMac.o.d" -o "${OBJECTDIR}/TCPIP Stack/ETHPIC32IntMac.o" "TCPIP Stack/ETHPIC32IntMac.c"   
	
${OBJECTDIR}/TCPIP\ Stack/FileSystem.o: TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/FileSystem.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/FileSystem.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/FileSystem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/FileSystem.o.d" -o "${OBJECTDIR}/TCPIP Stack/FileSystem.o" "TCPIP Stack/FileSystem.c"   
	
${OBJECTDIR}/TCPIP\ Stack/FTP.o: TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/FTP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/FTP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/FTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/FTP.o.d" -o "${OBJECTDIR}/TCPIP Stack/FTP.o" "TCPIP Stack/FTP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/Hashes.o: TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Hashes.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Hashes.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Hashes.o.d" -o "${OBJECTDIR}/TCPIP Stack/Hashes.o" "TCPIP Stack/Hashes.c"   
	
${OBJECTDIR}/TCPIP\ Stack/Helpers.o: TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Helpers.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Helpers.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Helpers.o.d" -o "${OBJECTDIR}/TCPIP Stack/Helpers.o" "TCPIP Stack/Helpers.c"   
	
${OBJECTDIR}/TCPIP\ Stack/HTTP2.o: TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/HTTP2.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/HTTP2.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/HTTP2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/HTTP2.o.d" -o "${OBJECTDIR}/TCPIP Stack/HTTP2.o" "TCPIP Stack/HTTP2.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ICMP.o: TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ICMP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ICMP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ICMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ICMP.o.d" -o "${OBJECTDIR}/TCPIP Stack/ICMP.o" "TCPIP Stack/ICMP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/IP.o: TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/IP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/IP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/IP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/IP.o.d" -o "${OBJECTDIR}/TCPIP Stack/IP.o" "TCPIP Stack/IP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/LCDBlocking.o: TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/LCDBlocking.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o.d" -o "${OBJECTDIR}/TCPIP Stack/LCDBlocking.o" "TCPIP Stack/LCDBlocking.c"   
	
${OBJECTDIR}/TCPIP\ Stack/MPFS2.o: TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/MPFS2.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/MPFS2.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/MPFS2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/MPFS2.o.d" -o "${OBJECTDIR}/TCPIP Stack/MPFS2.o" "TCPIP Stack/MPFS2.c"   
	
${OBJECTDIR}/TCPIP\ Stack/NBNS.o: TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/NBNS.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/NBNS.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/NBNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/NBNS.o.d" -o "${OBJECTDIR}/TCPIP Stack/NBNS.o" "TCPIP Stack/NBNS.c"   
	
${OBJECTDIR}/TCPIP\ Stack/Random.o: TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Random.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Random.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Random.o.d" -o "${OBJECTDIR}/TCPIP Stack/Random.o" "TCPIP Stack/Random.c"   
	
${OBJECTDIR}/TCPIP\ Stack/Reboot.o: TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Reboot.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Reboot.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Reboot.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Reboot.o.d" -o "${OBJECTDIR}/TCPIP Stack/Reboot.o" "TCPIP Stack/Reboot.c"   
	
${OBJECTDIR}/TCPIP\ Stack/RSA.o: TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/RSA.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/RSA.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/RSA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/RSA.o.d" -o "${OBJECTDIR}/TCPIP Stack/RSA.o" "TCPIP Stack/RSA.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SMTP.o: TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SMTP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SMTP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SMTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SMTP.o.d" -o "${OBJECTDIR}/TCPIP Stack/SMTP.o" "TCPIP Stack/SMTP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SNMP.o: TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SNMP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNMP.o.d" -o "${OBJECTDIR}/TCPIP Stack/SNMP.o" "TCPIP Stack/SNMP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SNMPv3.o: TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SNMPv3.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMPv3.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNMPv3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNMPv3.o.d" -o "${OBJECTDIR}/TCPIP Stack/SNMPv3.o" "TCPIP Stack/SNMPv3.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SNMPv3USM.o: TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SNMPv3USM.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o.d" -o "${OBJECTDIR}/TCPIP Stack/SNMPv3USM.o" "TCPIP Stack/SNMPv3USM.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SNTP.o: TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SNTP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SNTP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SNTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SNTP.o.d" -o "${OBJECTDIR}/TCPIP Stack/SNTP.o" "TCPIP Stack/SNTP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SPIEEPROM.o: TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SPIEEPROM.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o.d" -o "${OBJECTDIR}/TCPIP Stack/SPIEEPROM.o" "TCPIP Stack/SPIEEPROM.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SPIFlash.o: TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SPIFlash.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIFlash.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SPIFlash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SPIFlash.o.d" -o "${OBJECTDIR}/TCPIP Stack/SPIFlash.o" "TCPIP Stack/SPIFlash.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SPIRAM.o: TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SPIRAM.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SPIRAM.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SPIRAM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SPIRAM.o.d" -o "${OBJECTDIR}/TCPIP Stack/SPIRAM.o" "TCPIP Stack/SPIRAM.c"   
	
${OBJECTDIR}/TCPIP\ Stack/SSL.o: TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/SSL.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/SSL.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/SSL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/SSL.o.d" -o "${OBJECTDIR}/TCPIP Stack/SSL.o" "TCPIP Stack/SSL.c"   
	
${OBJECTDIR}/TCPIP\ Stack/StackTsk.o: TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/StackTsk.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/StackTsk.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/StackTsk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/StackTsk.o.d" -o "${OBJECTDIR}/TCPIP Stack/StackTsk.o" "TCPIP Stack/StackTsk.c"   
	
${OBJECTDIR}/TCPIP\ Stack/TCP.o: TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/TCP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/TCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/TCP.o.d" -o "${OBJECTDIR}/TCPIP Stack/TCP.o" "TCPIP Stack/TCP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/TCPPerformanceTest.o: TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/TCPPerformanceTest.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o.d" -o "${OBJECTDIR}/TCPIP Stack/TCPPerformanceTest.o" "TCPIP Stack/TCPPerformanceTest.c"   
	
${OBJECTDIR}/TCPIP\ Stack/Telnet.o: TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Telnet.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Telnet.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Telnet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Telnet.o.d" -o "${OBJECTDIR}/TCPIP Stack/Telnet.o" "TCPIP Stack/Telnet.c"   
	
${OBJECTDIR}/TCPIP\ Stack/TFTPc.o: TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/TFTPc.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/TFTPc.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/TFTPc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/TFTPc.o.d" -o "${OBJECTDIR}/TCPIP Stack/TFTPc.o" "TCPIP Stack/TFTPc.c"   
	
${OBJECTDIR}/TCPIP\ Stack/Tick.o: TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/Tick.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/Tick.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/Tick.o.d" -o "${OBJECTDIR}/TCPIP Stack/Tick.o" "TCPIP Stack/Tick.c"   
	
${OBJECTDIR}/TCPIP\ Stack/UART.o: TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/UART.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UART.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UART.o.d" -o "${OBJECTDIR}/TCPIP Stack/UART.o" "TCPIP Stack/UART.c"   
	
${OBJECTDIR}/TCPIP\ Stack/UART2TCPBridge.o: TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/UART2TCPBridge.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o.d" -o "${OBJECTDIR}/TCPIP Stack/UART2TCPBridge.o" "TCPIP Stack/UART2TCPBridge.c"   
	
${OBJECTDIR}/TCPIP\ Stack/UDP.o: TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/UDP.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDP.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UDP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UDP.o.d" -o "${OBJECTDIR}/TCPIP Stack/UDP.o" "TCPIP Stack/UDP.c"   
	
${OBJECTDIR}/TCPIP\ Stack/UDPPerformanceTest.o: TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/UDPPerformanceTest.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o.d" -o "${OBJECTDIR}/TCPIP Stack/UDPPerformanceTest.o" "TCPIP Stack/UDPPerformanceTest.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ZeroconfHelper.o: TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ZeroconfHelper.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o.d" -o "${OBJECTDIR}/TCPIP Stack/ZeroconfHelper.o" "TCPIP Stack/ZeroconfHelper.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ZeroconfLinkLocal.o: TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ZeroconfLinkLocal.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o.d" -o "${OBJECTDIR}/TCPIP Stack/ZeroconfLinkLocal.o" "TCPIP Stack/ZeroconfLinkLocal.c"   
	
${OBJECTDIR}/TCPIP\ Stack/ZeroconfMulticastDNS.o: TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/ZeroconfMulticastDNS.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o.d" -o "${OBJECTDIR}/TCPIP Stack/ZeroconfMulticastDNS.o" "TCPIP Stack/ZeroconfMulticastDNS.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WF_Eint.o: TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WF_Eint.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Eint.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Eint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Eint.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Eint.o" "TCPIP Stack/WiFi/WF_Eint.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WF_pbkdf2.o: TCPIP\ Stack/WiFi/WF_pbkdf2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WF_pbkdf2.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WF_pbkdf2.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WF_pbkdf2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WF_pbkdf2.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WF_pbkdf2.o" "TCPIP Stack/WiFi/WF_pbkdf2.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WF_Spi.o: TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WF_Spi.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Spi.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Spi.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WF_Spi.o" "TCPIP Stack/WiFi/WF_Spi.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o: TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionAlgorithm.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionAlgorithm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionAlgorithm.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionAlgorithm.o" "TCPIP Stack/WiFi/WFConnectionAlgorithm.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConnectionManager.o: TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConnectionManager.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionManager.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionManager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionManager.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionManager.o" "TCPIP Stack/WiFi/WFConnectionManager.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConnectionProfile.o: TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionProfile.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionProfile.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConnectionProfile.o" "TCPIP Stack/WiFi/WFConnectionProfile.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsole.o: TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsole.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsole.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsole.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsole.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsole.o" "TCPIP Stack/WiFi/WFConsole.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o: TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIfconfig.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIfconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIfconfig.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIfconfig.o" "TCPIP Stack/WiFi/WFConsoleIfconfig.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o: TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwconfig.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwconfig.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwconfig.o" "TCPIP Stack/WiFi/WFConsoleIwconfig.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o: TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwpriv.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwpriv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwpriv.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleIwpriv.o" "TCPIP Stack/WiFi/WFConsoleIwpriv.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o: TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgHandler.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgHandler.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgHandler.o" "TCPIP Stack/WiFi/WFConsoleMsgHandler.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleMsgs.o: TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgs.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgs.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFConsoleMsgs.o" "TCPIP Stack/WiFi/WFConsoleMsgs.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDataTxRx.o: TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDataTxRx.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDataTxRx.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDataTxRx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFDataTxRx.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFDataTxRx.o" "TCPIP Stack/WiFi/WFDataTxRx.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDebugStrings.o: TCPIP\ Stack/WiFi/WFDebugStrings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDebugStrings.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDebugStrings.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDebugStrings.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFDebugStrings.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFDebugStrings.o" "TCPIP Stack/WiFi/WFDebugStrings.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDriverCom.o: TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDriverCom.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverCom.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverCom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverCom.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverCom.o" "TCPIP Stack/WiFi/WFDriverCom.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDriverRaw.o: TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFDriverRaw.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverRaw.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverRaw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverRaw.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFDriverRaw.o" "TCPIP Stack/WiFi/WFDriverRaw.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFEasyConfig.o: TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFEasyConfig.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFEasyConfig.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFEasyConfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFEasyConfig.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFEasyConfig.o" "TCPIP Stack/WiFi/WFEasyConfig.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFEventHandler.o: TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFEventHandler.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFEventHandler.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFEventHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFEventHandler.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFEventHandler.o" "TCPIP Stack/WiFi/WFEventHandler.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFInit.o: TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFInit.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFInit.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFInit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFInit.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFInit.o" "TCPIP Stack/WiFi/WFInit.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFMac.o: TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFMac.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFMac.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFMac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFMac.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFMac.o" "TCPIP Stack/WiFi/WFMac.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFMgmtMsg.o: TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFMgmtMsg.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFMgmtMsg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFMgmtMsg.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFMgmtMsg.o" "TCPIP Stack/WiFi/WFMgmtMsg.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFParamMsg.o: TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFParamMsg.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFParamMsg.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFParamMsg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFParamMsg.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFParamMsg.o" "TCPIP Stack/WiFi/WFParamMsg.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFPowerSave.o: TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFPowerSave.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFPowerSave.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFPowerSave.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFPowerSave.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFPowerSave.o" "TCPIP Stack/WiFi/WFPowerSave.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFScan.o: TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFScan.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFScan.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFScan.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFScan.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFScan.o" "TCPIP Stack/WiFi/WFScan.c"   
	
${OBJECTDIR}/TCPIP\ Stack/WiFi/WFTxPower.o: TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/TCPIP\ Stack/WiFi/WFTxPower.o.d 
	@${RM} "${OBJECTDIR}/TCPIP Stack/WiFi/WFTxPower.o" 
	@${FIXDEPS} "${OBJECTDIR}/TCPIP Stack/WiFi/WFTxPower.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/TCPIP Stack/WiFi/WFTxPower.o.d" -o "${OBJECTDIR}/TCPIP Stack/WiFi/WFTxPower.o" "TCPIP Stack/WiFi/WFTxPower.c"   
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_WiFi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_WiFi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}           -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_WiFi.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_WiFi.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/FreeRTOS_WiFi.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
