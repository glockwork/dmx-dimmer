v 20110115 2
C 38500 43100 1 90 0 diode-bridge-1.sym
{
T 37600 44125 5 10 1 1 180 0 1
refdes=U1
T 38425 44300 5 8 0 0 90 0 1
device=DIODE-BRIDGE
T 38500 43100 5 10 1 1 0 0 1
footprint=DF_S.fp
}
C 41200 40400 1 0 0 lm339-1.sym
{
T 42025 40550 5 8 0 0 0 0 1
device=LM339
T 41400 41300 5 10 1 1 0 0 1
refdes=U2
T 42100 42225 5 8 0 0 0 0 1
symversion=1.0
T 41200 40400 5 10 0 0 0 0 1
slot=1
T 41200 40400 5 10 1 1 0 0 1
footprint=SO14
}
C 33600 40400 1 0 0 transformer-1.sym
{
T 33900 41700 5 10 1 1 0 0 1
refdes=T1
T 33900 41700 5 10 0 0 0 0 1
device=transformer
T 33600 40400 5 10 1 1 0 0 1
footprint=BV030_7270.fp
}
C 31600 40400 1 0 0 mains-entry-1.sym
{
T 31150 41650 5 10 1 1 0 0 1
refdes=CONN_MAINS1
T 31750 42500 5 10 0 0 0 0 1
device=MAINS_ENTRY
T 31750 41900 5 10 0 0 0 0 1
footprint=none
T 31750 42700 5 10 0 0 0 0 1
symversion=1.0
}
N 32500 41400 33600 41400 4
N 33600 41400 33600 41500 4
N 32500 40600 33600 40600 4
N 33600 40600 33600 40500 4
C 38500 40000 1 90 0 diode-bridge-1.sym
{
T 37600 41025 5 10 1 1 180 0 1
refdes=U3
T 38425 41200 5 8 0 0 90 0 1
device=DIODE-BRIDGE
T 38500 40000 5 10 1 1 0 0 1
footprint=DF_S.fp
}
N 37500 40000 35100 40000 4
N 35100 40000 35100 40500 4
N 37500 42000 35100 42000 4
N 35100 41500 35100 45100 4
N 35100 45100 37500 45100 4
N 35400 40000 35400 43100 4
N 35400 43100 37500 43100 4
N 36500 43800 36500 44100 4
N 38500 44100 39100 44100 4
N 41700 40100 41700 40400 4
N 41700 41200 41700 41500 4
C 39200 39800 1 90 0 resistor-2.sym
{
T 38850 40200 5 10 0 0 90 0 1
device=RESISTOR
T 38900 40400 5 10 1 1 180 0 1
refdes=R1
T 38900 40200 5 10 1 1 180 0 1
value=10k
T 39200 39800 5 10 1 1 0 0 1
footprint=0805
}
N 36200 40700 36200 41000 4
N 36200 41000 36500 41000 4
N 38500 41000 41200 41000 4
C 40400 38400 1 270 1 trimpot-2.sym
{
T 40350 38900 5 10 1 1 180 2 1
refdes=R2
T 41300 39200 5 10 0 1 90 2 1
device=VARIABLE_RESISTOR
T 40100 38700 5 10 1 1 0 0 1
value=10k
T 40400 38400 5 10 1 1 0 0 1
footprint=TO126SW
}
N 39100 39500 39100 39800 4
N 42200 40800 42500 40800 4
N 39100 40700 39100 41000 4
C 39100 43500 1 0 0 lm7805-1.sym
{
T 40700 44800 5 10 0 0 0 0 1
device=7805
T 40400 44500 5 10 1 1 0 6 1
refdes=U4
T 39100 43500 5 10 1 1 0 0 1
footprint=DPAK.fp
}
C 40800 44100 1 270 0 capacitor-2.sym
{
T 41500 43900 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 41400 43800 5 10 1 1 0 0 1
refdes=C1
T 41700 43900 5 10 0 0 270 0 1
symversion=0.1
T 40500 43300 5 10 1 1 0 0 1
value=100u
T 40800 44100 5 10 1 1 0 0 1
footprint=NICHICON_WT_CAP_6p3_5p8
}
C 38600 44100 1 270 0 capacitor-2.sym
{
T 39300 43900 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 38700 43900 5 10 1 1 180 0 1
refdes=C2
T 39500 43900 5 10 0 0 270 0 1
symversion=0.1
T 38700 43500 5 10 1 1 180 0 1
value=1200u
T 38600 44100 5 10 1 1 0 0 1
footprint=RCY200P
}
C 41900 43200 1 90 0 capacitor-1.sym
{
T 41200 43400 5 10 0 0 90 0 1
device=CAPACITOR
T 40900 44000 5 10 1 1 180 0 1
refdes=C3
T 41000 43400 5 10 0 0 90 0 1
symversion=0.1
T 41300 43300 5 10 1 1 0 0 1
value=100n
T 41900 43200 5 10 1 1 0 0 1
footprint=0805
}
N 38800 43200 41700 43200 4
N 40700 44100 41700 44100 4
N 39900 43500 39900 43200 4
N 41700 42900 41700 43200 4
N 41700 44100 41700 44400 4
C 42500 40700 1 0 0 resistor-2.sym
{
T 42900 41050 5 10 0 0 0 0 1
device=RESISTOR
T 42700 41000 5 10 1 1 0 0 1
refdes=R3
T 42700 40500 5 10 1 1 0 0 1
value=1k
T 42500 40700 5 10 1 1 0 0 1
footprint=0805
}
N 38800 44400 38800 44100 4
C 50400 42200 1 0 0 attiny2313_dip_so_1.sym
{
T 54200 46600 5 10 1 1 0 6 1
refdes=U5
T 50700 46900 5 10 0 0 0 0 1
device=ATtiny2313
T 50400 42200 5 10 1 1 0 0 1
footprint=SO20W
}
C 48900 45700 1 90 0 crystal-1.sym
{
T 48400 45900 5 10 0 0 90 0 1
device=CRYSTAL
T 49000 46200 5 10 1 1 180 6 1
refdes=Q1
T 48200 45900 5 10 0 0 90 0 1
symversion=0.1
T 49000 45800 5 10 1 1 0 0 1
value=6MHz
T 48900 45700 5 10 1 1 0 0 1
footprint=HC49smt.fp
}
C 47900 46200 1 0 0 capacitor-1.sym
{
T 48100 46900 5 10 0 0 0 0 1
device=CAPACITOR
T 48000 46500 5 10 1 1 0 0 1
refdes=C4
T 48100 47100 5 10 0 0 0 0 1
symversion=0.1
T 47900 46200 5 10 1 1 0 0 1
value=22p
T 47900 46200 5 10 1 1 0 0 1
footprint=0805
}
C 47900 45500 1 0 0 capacitor-1.sym
{
T 48100 46200 5 10 0 0 0 0 1
device=CAPACITOR
T 48000 45800 5 10 1 1 0 0 1
refdes=C5
T 48100 46400 5 10 0 0 0 0 1
symversion=0.1
T 47900 45500 5 10 1 1 0 0 1
value=22p
T 47900 45500 5 10 1 1 0 0 1
footprint=0805
}
N 47900 45700 47600 45700 4
N 47600 45700 47600 46400 4
N 47900 46400 47600 46400 4
N 49800 47200 49800 47500 4
C 49900 46300 1 90 0 resistor-2.sym
{
T 49550 46700 5 10 0 0 90 0 1
device=RESISTOR
T 49600 46900 5 10 1 1 180 0 1
refdes=R4
T 49600 46700 5 10 1 1 180 0 1
value=10k
T 49900 46300 5 10 1 1 0 0 1
footprint=0805
}
N 50400 46000 49800 46000 4
N 54500 45400 59200 45400 4
N 54500 44500 59200 44500 4
N 54500 45100 59200 45100 4
N 54500 44800 59200 44800 4
C 57400 40500 1 0 1 connector2-1.sym
{
T 57200 41500 5 10 0 0 0 6 1
device=CONNECTOR_2
T 57400 41300 5 10 1 1 0 6 1
refdes=CONN_DIM41
T 57400 40500 5 10 1 1 0 0 1
footprint=MTA_100 2
}
C 57400 39400 1 0 1 connector2-1.sym
{
T 57200 40400 5 10 0 0 0 6 1
device=CONNECTOR_2
T 57400 40200 5 10 1 1 0 6 1
refdes=CONN_DIM31
T 57400 39400 5 10 1 1 0 0 1
footprint=MTA_100 2
}
C 57400 38300 1 0 1 connector2-1.sym
{
T 57200 39300 5 10 0 0 0 6 1
device=CONNECTOR_2
T 57400 39100 5 10 1 1 0 6 1
refdes=CONN_DIM21
T 57400 38300 5 10 1 1 0 0 1
footprint=MTA_100 2
}
C 57400 37200 1 0 1 connector2-1.sym
{
T 57200 38200 5 10 0 0 0 6 1
device=CONNECTOR_2
T 57400 38000 5 10 1 1 0 6 1
refdes=CONN_DIM11
T 57400 37200 5 10 1 1 0 0 1
footprint=MTA_100 2
}
N 50400 43000 50400 41000 4
N 50400 41000 55700 41000 4
N 50400 43300 50100 43300 4
N 50100 39900 50100 43300 4
N 50400 43600 49800 43600 4
N 49800 38800 49800 43600 4
N 50400 43900 49500 43900 4
N 49500 37700 49500 43900 4
N 55700 39900 50100 39900 4
N 55700 38800 49800 38800 4
N 55700 37700 49500 37700 4
C 52300 47700 1 0 0 generic-power.sym
{
T 52500 47950 5 10 1 1 0 3 1
net=Vcc_ZC:1
}
N 50400 45700 49500 45700 4
N 49500 45700 49500 46400 4
N 49500 46400 48800 46400 4
N 50400 45400 48800 45400 4
N 48800 45400 48800 45700 4
C 43700 40900 1 180 1 output-2.sym
{
T 43900 40600 5 10 0 0 180 6 1
net=ZC_INT:1
T 43900 40200 5 10 0 0 180 6 1
device=none
T 44600 40800 5 10 1 1 180 7 1
value=ZC_INT
}
C 45900 43400 1 0 0 input-2.sym
{
T 47100 43300 5 10 0 0 180 0 1
net=ZC_INT:1
T 46500 44100 5 10 0 0 0 0 1
device=none
T 46400 43500 5 10 1 1 0 7 1
value=ZC_INT
}
N 49200 44200 50400 44200 4
N 43700 40800 43400 40800 4
N 52500 46800 52500 47700 4
C 53700 47600 1 180 0 capacitor-1.sym
{
T 53500 46900 5 10 0 0 180 0 1
device=CAPACITOR
T 53300 47800 5 10 1 1 180 0 1
refdes=C6
T 53500 46700 5 10 0 0 180 0 1
symversion=0.1
T 53400 47100 5 10 1 1 180 0 1
value=100n
T 53700 47600 5 10 1 1 0 0 1
footprint=0805
}
N 52800 47400 52500 47400 4
C 54200 47400 1 180 0 generic-power.sym
{
T 54000 47150 5 10 1 1 180 3 1
net=GND_ZC:1
}
N 54000 47400 53700 47400 4
N 40500 39300 40500 39600 4
N 40700 39300 40700 40600 4
N 40700 40600 41200 40600 4
C 40600 39600 1 90 0 resistor-2.sym
{
T 40250 40000 5 10 0 0 90 0 1
device=RESISTOR
T 40300 40200 5 10 1 1 180 0 1
refdes=R5
T 40300 40000 5 10 1 1 180 0 1
value=10k
T 40600 39600 5 10 1 1 0 0 1
footprint=0805
}
N 56300 46900 56300 46600 4
N 56300 46600 59200 46600 4
N 59200 43600 59200 43900 4
C 48000 44700 1 0 0 resistor-2.sym
{
T 48400 45050 5 10 0 0 0 0 1
device=RESISTOR
T 48600 45100 5 10 1 1 180 0 1
refdes=R6
T 48600 44700 5 10 1 1 180 0 1
value=680
T 48000 44700 5 10 1 1 0 0 1
footprint=0805
}
N 48900 44800 50400 44800 4
C 48000 44100 1 0 0 resistor-2.sym
{
T 48400 44450 5 10 0 0 0 0 1
device=RESISTOR
T 48600 44500 5 10 1 1 180 0 1
refdes=R7
T 48600 44100 5 10 1 1 180 0 1
value=680
T 48000 44100 5 10 1 1 0 0 1
footprint=0805
}
C 47700 44400 1 180 0 led-1.sym
{
T 46900 43800 5 10 0 0 180 0 1
device=LED
T 47400 44300 5 10 1 1 0 0 1
refdes=LED1
T 46900 43600 5 10 0 0 180 0 1
symversion=0.1
T 46600 44300 5 10 1 1 0 0 1
value=green
T 47700 44400 5 10 0 1 0 0 1
footprint=LED3
}
C 47700 45000 1 180 0 led-1.sym
{
T 46900 44400 5 10 0 0 180 0 1
device=LED
T 47400 44900 5 10 1 1 0 0 1
refdes=LED2
T 46900 44200 5 10 0 0 180 0 1
symversion=0.1
T 46800 44900 5 10 1 1 0 0 1
value=red
T 47700 45000 5 10 0 1 0 0 1
footprint=LED3
}
N 49200 44200 49200 43500 4
N 48900 44200 48900 44500 4
N 48900 44500 50400 44500 4
N 47700 44800 48000 44800 4
N 48000 44200 47700 44200 4
N 46500 44200 46500 45400 4
N 46500 44200 46800 44200 4
N 46800 44800 46500 44800 4
C 38600 46700 1 0 1 connector2-1.sym
{
T 38400 47700 5 10 0 0 0 6 1
device=CONNECTOR_2
T 38600 47500 5 10 1 1 0 6 1
refdes=CONN_FAN11
T 38600 46700 5 10 1 1 0 0 1
footprint=MTA_100 2
}
C 38900 46700 1 0 0 connector2-1.sym
{
T 39100 47700 5 10 0 0 0 0 1
device=CONNECTOR_2
T 38900 47500 5 10 1 1 0 0 1
refdes=CONN_FAN21
T 38900 46700 5 10 1 1 0 0 1
footprint=MTA_100 2
}
C 36400 47500 1 0 0 generic-power.sym
{
T 36600 47750 5 10 1 1 0 3 1
net=Vcc_ZC_12V:1
}
N 40600 47200 40900 47200 4
N 40900 47200 40900 47500 4
N 40600 46900 40900 46900 4
N 40900 46900 40900 46600 4
N 36900 46900 36600 46900 4
N 36600 46900 36600 46600 4
N 36900 47200 36600 47200 4
N 36600 47200 36600 47500 4
N 49800 46000 49800 46300 4
C 58900 44100 1 0 1 output-2.sym
{
T 58700 44400 5 10 0 0 0 6 1
net=SLAVE_RESET:1
T 58700 44800 5 10 0 0 0 6 1
device=none
T 58000 44200 5 10 1 1 0 7 1
value=SLAVE_RESET
}
N 58900 44200 59200 44200 4
C 51500 47100 1 0 1 input-2.sym
{
T 50300 47000 5 10 0 0 180 6 1
net=SLAVE_RESET:1
T 50900 47800 5 10 0 0 0 6 1
device=none
T 51000 47200 5 10 1 1 0 1 1
value=SLAVE_RESET
}
N 50100 46000 50100 49700 4
C 52300 48700 1 0 0 header10-2.sym
{
T 52300 50700 5 10 0 1 0 0 1
device=HEADER10
T 52900 50800 5 10 1 1 0 0 1
refdes=J1
T 52300 48700 5 10 1 1 0 0 1
footprint=CONNECTOR 5 2
}
N 53700 50100 54000 50100 4
N 54000 50100 54000 48600 4
N 53700 49700 54000 49700 4
N 53700 49300 54000 49300 4
N 53700 48900 54000 48900 4
N 53700 50500 54000 50500 4
N 54000 50500 54000 50900 4
N 52300 49700 50100 49700 4
C 58900 45600 1 0 1 output-2.sym
{
T 58700 45900 5 10 0 0 0 6 1
net=SLAVE_SCK:1
T 58700 46300 5 10 0 0 0 6 1
device=none
T 58000 45700 5 10 1 1 0 7 1
value=SLAVE_SCK
}
C 55900 43200 1 0 1 input-2.sym
{
T 54700 43100 5 10 0 0 180 6 1
net=SLAVE_SCK:1
T 55300 43900 5 10 0 0 0 6 1
device=none
T 55400 43300 5 10 1 1 0 1 1
value=SLAVE_SCK
}
N 59200 45700 58900 45700 4
C 57500 45900 1 0 0 input-2.sym
{
T 58700 45800 5 10 0 0 180 0 1
net=SLAVE_MISO:1
T 58100 46600 5 10 0 0 0 0 1
device=none
T 58000 46000 5 10 1 1 0 7 1
value=SLAVE_MISO
}
N 58900 46000 59200 46000 4
C 54500 43500 1 0 0 output-2.sym
{
T 54700 43800 5 10 0 0 0 0 1
net=SLAVE_MISO:1
T 54700 44200 5 10 0 0 0 0 1
device=none
T 55400 43600 5 10 1 1 0 1 1
value=SLAVE_MISO
}
C 55900 43800 1 0 1 input-2.sym
{
T 54700 43700 5 10 0 0 180 6 1
net=SLAVE_MOSI:1
T 55300 44500 5 10 0 0 0 6 1
device=none
T 55400 43900 5 10 1 1 0 1 1
value=SLAVE_MOSI
}
C 58900 46200 1 0 1 output-2.sym
{
T 58700 46500 5 10 0 0 0 6 1
net=SLAVE_MOSI:1
T 58700 46900 5 10 0 0 0 6 1
device=none
T 58000 46300 5 10 1 1 0 7 1
value=SLAVE_MOSI
}
N 58900 46300 59200 46300 4
C 52300 50400 1 0 1 output-2.sym
{
T 52100 50700 5 10 0 0 0 6 1
net=SLAVE_MOSI:1
T 52100 51100 5 10 0 0 0 6 1
device=none
T 51400 50500 5 10 1 1 0 7 1
value=SLAVE_MOSI
}
C 52300 49200 1 0 1 output-2.sym
{
T 52100 49500 5 10 0 0 0 6 1
net=SLAVE_SCK:1
T 52100 49900 5 10 0 0 0 6 1
device=none
T 51400 49300 5 10 1 1 0 7 1
value=SLAVE_SCK
}
C 50900 48800 1 0 0 input-2.sym
{
T 52100 48700 5 10 0 0 180 0 1
net=SLAVE_MISO:1
T 51500 49500 5 10 0 0 0 0 1
device=none
T 51400 48900 5 10 1 1 0 7 1
value=SLAVE_MISO
}
N 47300 43500 49200 43500 4
T 33500 41000 9 10 1 0 0 0 1
230 V
T 34700 41000 9 10 1 0 0 0 1
12 V
T 56000 45300 9 10 1 0 180 0 1
OUT_CHAN1
T 56000 45000 9 10 1 0 180 0 1
OUT_CHAN0
T 56000 45600 9 10 1 0 180 0 1
OUT_OK
T 56000 44700 9 10 1 0 180 0 1
OUT_SS
T 50400 44200 9 10 1 0 0 0 1
*
T 52000 42400 9 10 1 0 0 8 2
* internal pull-up
resistor enabled
C 60900 43700 1 0 1 connector10-1.sym
{
T 59000 46700 5 10 0 0 0 6 1
device=CONNECTOR_10
T 60800 46900 5 10 1 1 0 6 1
refdes=CONN_OUT12
T 60900 43700 5 10 1 1 0 0 1
footprint=MTA_100 10
}
C 54200 48600 1 180 0 generic-power.sym
{
T 54000 48350 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 47800 45700 1 180 0 generic-power.sym
{
T 47600 45450 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 40700 38400 1 180 0 generic-power.sym
{
T 40500 38150 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 41900 40100 1 180 0 generic-power.sym
{
T 41700 39850 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 39300 39500 1 180 0 generic-power.sym
{
T 39100 39250 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 36700 43800 1 180 0 generic-power.sym
{
T 36500 43550 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 41900 42900 1 180 0 generic-power.sym
{
T 41700 42650 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 41100 46600 1 180 0 generic-power.sym
{
T 40900 46350 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 36800 46600 1 180 0 generic-power.sym
{
T 36600 46350 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 40700 47500 1 0 0 generic-power.sym
{
T 40900 47750 5 10 1 1 0 3 1
net=Vcc_ZC_12V:1
}
C 38600 44400 1 0 0 generic-power.sym
{
T 38800 44650 5 10 1 1 0 3 1
net=Vcc_ZC_12V:1
}
C 40300 40500 1 0 0 generic-power.sym
{
T 40500 40750 5 10 1 1 0 3 1
net=Vcc_ZC_12V:1
}
C 53800 50900 1 0 0 generic-power.sym
{
T 54000 51150 5 10 1 1 0 3 1
net=Vcc_ZC:1
}
C 56100 46900 1 0 0 generic-power.sym
{
T 56300 47150 5 10 1 1 0 3 1
net=Vcc_ZC:1
}
C 46300 45400 1 0 0 generic-power.sym
{
T 46500 45650 5 10 1 1 0 3 1
net=Vcc_ZC:1
}
C 49600 47500 1 0 0 generic-power.sym
{
T 49700 47750 5 10 1 1 0 3 1
net=Vcc_ZC:1
}
C 59400 43600 1 180 0 generic-power.sym
{
T 59200 43350 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 55900 40700 1 180 0 generic-power.sym
{
T 55700 40450 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 55900 39600 1 180 0 generic-power.sym
{
T 55700 39350 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 55900 38500 1 180 0 generic-power.sym
{
T 55700 38250 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 55900 37400 1 180 0 generic-power.sym
{
T 55700 37150 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 52700 42200 1 180 0 generic-power.sym
{
T 52500 41950 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 36400 40700 1 180 0 generic-power.sym
{
T 36200 40450 5 10 1 1 180 3 1
net=GND_ZC:1
}
C 41500 44400 1 0 0 generic-power.sym
{
T 41700 44650 5 10 1 1 0 3 1
net=Vcc_ZC:1
}
C 41500 41500 1 0 0 generic-power.sym
{
T 41700 41750 5 10 1 1 0 3 1
net=Vcc_ZC:1
}
C 37700 35200 1 0 0 lm339-1.sym
{
T 38525 35350 5 8 0 0 0 0 1
device=LM339
T 37900 36100 5 10 1 1 0 0 1
refdes=U2
T 38600 37025 5 8 0 0 0 0 1
symversion=1.0
T 37700 35200 5 10 0 0 0 0 1
slot=2
T 37700 35200 5 10 1 1 0 0 1
footprint=SO14
}
C 41200 35200 1 0 0 lm339-1.sym
{
T 42025 35350 5 8 0 0 0 0 1
device=LM339
T 41400 36100 5 10 1 1 0 0 1
refdes=U2
T 42100 37025 5 8 0 0 0 0 1
symversion=1.0
T 41200 35200 5 10 0 0 0 0 1
slot=3
T 41200 35200 5 10 1 1 0 0 1
footprint=SO14
}
C 44300 35200 1 0 0 lm339-1.sym
{
T 45125 35350 5 8 0 0 0 0 1
device=LM339
T 44500 36100 5 10 1 1 0 0 1
refdes=U2
T 45200 37025 5 8 0 0 0 0 1
symversion=1.0
T 44300 35200 5 10 0 0 0 0 1
slot=4
T 44300 35200 5 10 1 1 0 0 1
footprint=SO14
}
C 38400 34700 1 180 0 generic-power.sym
{
T 38200 34450 5 10 1 1 180 3 1
net=GND_ZC:1
}
N 38200 34700 38200 35200 4
C 36500 36000 1 90 0 resistor-2.sym
{
T 36150 36400 5 10 0 0 90 0 1
device=RESISTOR
T 36200 36600 5 10 1 1 180 0 1
refdes=R8
T 36200 36400 5 10 1 1 180 0 1
value=100k
T 36500 36000 5 10 1 1 0 0 1
footprint=0805
}
C 36500 34700 1 90 0 resistor-2.sym
{
T 36150 35100 5 10 0 0 90 0 1
device=RESISTOR
T 36200 35300 5 10 1 1 180 0 1
refdes=R9
T 36200 35100 5 10 1 1 180 0 1
value=100k
T 36500 34700 5 10 1 1 0 0 1
footprint=0805
}
N 36400 35600 36400 36000 4
N 37700 35800 36400 35800 4
N 37700 35400 37400 35400 4
N 37400 35400 37400 35100 4
N 37400 35100 38700 35100 4
N 38700 35100 38700 35600 4
N 36400 34700 38200 34700 4
N 36400 36900 38200 36900 4
N 38200 36900 38200 36000 4
C 38000 36900 1 0 0 generic-power.sym
{
T 38200 37150 5 10 1 1 0 3 1
net=Vcc_ZC:1
}
C 41900 34700 1 180 0 generic-power.sym
{
T 41700 34450 5 10 1 1 180 3 1
net=GND_ZC:1
}
N 41700 34700 41700 35200 4
C 40000 36000 1 90 0 resistor-2.sym
{
T 39650 36400 5 10 0 0 90 0 1
device=RESISTOR
T 39700 36600 5 10 1 1 180 0 1
refdes=R8
T 39700 36400 5 10 1 1 180 0 1
value=100k
T 40000 36000 5 10 1 1 0 0 1
footprint=0805
}
C 40000 34700 1 90 0 resistor-2.sym
{
T 39650 35100 5 10 0 0 90 0 1
device=RESISTOR
T 39700 35300 5 10 1 1 180 0 1
refdes=R9
T 39700 35100 5 10 1 1 180 0 1
value=100k
T 40000 34700 5 10 1 1 0 0 1
footprint=0805
}
N 39900 35600 39900 36000 4
N 41200 35800 39900 35800 4
N 41200 35400 40900 35400 4
N 40900 35400 40900 35100 4
N 40900 35100 42200 35100 4
N 42200 35100 42200 35600 4
N 39900 34700 41700 34700 4
N 39900 36900 41700 36900 4
N 41700 36900 41700 36000 4
C 41500 36900 1 0 0 generic-power.sym
{
T 41700 37150 5 10 1 1 0 3 1
net=Vcc_ZC:1
}
C 45000 34700 1 180 0 generic-power.sym
{
T 44800 34450 5 10 1 1 180 3 1
net=GND_ZC:1
}
N 44800 34700 44800 35200 4
C 43100 36000 1 90 0 resistor-2.sym
{
T 42750 36400 5 10 0 0 90 0 1
device=RESISTOR
T 42800 36600 5 10 1 1 180 0 1
refdes=R8
T 42800 36400 5 10 1 1 180 0 1
value=100k
T 43100 36000 5 10 1 1 0 0 1
footprint=0805
}
C 43100 34700 1 90 0 resistor-2.sym
{
T 42750 35100 5 10 0 0 90 0 1
device=RESISTOR
T 42800 35300 5 10 1 1 180 0 1
refdes=R9
T 42800 35100 5 10 1 1 180 0 1
value=100k
T 43100 34700 5 10 1 1 0 0 1
footprint=0805
}
N 43000 35600 43000 36000 4
N 44300 35800 43000 35800 4
N 44300 35400 44000 35400 4
N 44000 35400 44000 35100 4
N 44000 35100 45300 35100 4
N 45300 35100 45300 35600 4
N 43000 34700 44800 34700 4
N 43000 36900 44800 36900 4
N 44800 36900 44800 36000 4
C 44600 36900 1 0 0 generic-power.sym
{
T 44800 37150 5 10 1 1 0 3 1
net=Vcc_ZC:1
}
T 41400 33800 9 10 1 0 0 8 1
unused op-amps
