<Cabbage>

;interfaccia utente, gui
form caption("Virtual Analog 4 Oscillators Additive Subtractive") size(1060, 610), colour(40, 40, 40), pluginId("def1")
keyboard bounds(0, 510, 886, 95) channel("keyboard4")

combobox bounds(952, 510, 100, 25), populate("*.snaps"), channelType("string") automatable(0) channel("combo6") value("0") text("Initial", "Tri Movement", "Tri Organ", "Square Mov", "saw detuned", "Ultra LFO", "PAN example", "Min Res", "Max Res", "Max Attack Filter", "Max sub", "enter preset name", "No sub", "Max Attack Amp", "min env emp", "Min Filt Env", "Low Filter", "High Filter")
filebutton bounds(890, 510, 60, 25), text("Save", "Save"), populate("*.snaps", "test"), mode("named preset") channel("filebutton7")
filebutton bounds(890, 540, 60, 25), text("Remove", "Remove"), populate("*.snaps", "test"), mode("remove preset") channel("filebutton8")

;display
signaldisplay bounds(440, 148, 180, 150), colour("white"), displayType("waveform"), backgroundColour(0, 0, 0), zoom(-1), signalVariable("a1"), channel("display")
;signaldisplay bounds(282, 0, 150, 150), colour("white"), displayType("waveform"), backgroundColour(147, 210, 0), zoom(-1), signalVariable("a1"), channel("display");

;groupbox
groupbox bounds(0, 0, 427, 150), text("O S C I L L A T O R S      V C O") channel("groupbox3") outlineThickness(3) fontColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255)
groupbox bounds(740, 295, 318, 162), text("L F O") channel("groupbox5") outlineThickness(3) fontColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255)
groupbox bounds(0, 294, 318, 162), text("F I L T E R") channel("groupbox11") outlineThickness(3) fontColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255)
groupbox bounds(632, 0, 427, 150), text("A M P L I T U D E     E N V E L O P E S") channel("groupbox4") outlineThickness(3) colour(40, 40, 40, 255) fontColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255) fontSize(24) lineThickness(3)
groupbox bounds(632, 148, 427, 150),  channel("groupbox6") outlineThickness(3) lineThickness(3) fontColour(255, 255, 255, 255) text("F I L T E R     E N V E L O P E S") outlineColour(255, 255, 255, 255)
groupbox bounds(0, 146, 427, 150), text("P A N P O T         L E F T -  R I G T H") channel("groupbox10") outlineThickness(3) fontColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255)

;adsr livello
rslider bounds(648, 30, 100, 100), channel("att"), range(0.03, 1, 0.04, 1, 0.01), text("Attack") trackerColour(255, 255, 255, 255) markerColour(255, 0, 0, 255) textColour(255, 255, 255, 255) fontColour(255, 255, 255, 255) trackerInsideRadius(0.6) outlineColour(255, 255, 255, 255)
rslider bounds(748, 30, 100, 100), channel("dec"), range(0, 1, 0.5, 1, 0.01), text("Decay") markerColour(255, 0, 0, 255) trackerColour(255, 255, 255, 255) textColour(255, 255, 255, 255) fontColour(255, 255, 255, 255) trackerInsideRadius(0.6) outlineColour(255, 255, 255, 255)
rslider bounds(848, 30, 100, 100), channel("sus"), range(0, 1, 0.5, 1, 0.01), text("Sustain") markerColour(255, 0, 0, 255) trackerColour(255, 255, 255, 255) textColour(255, 255, 255, 255) trackerInsideRadius(0.6) outlineColour(255, 255, 255, 255)
rslider bounds(946, 30, 100, 100), channel("rel"), range(0, 1, 0.7, 1, 0.01), text("Release") markerColour(255, 0, 0, 255) trackerColour(255, 255, 255, 255) textColour(255, 255, 255, 255) trackerInsideRadius(0.6) outlineColour(255, 255, 255, 255)

;adsr filtri
rslider bounds(648, 180, 100, 100), channel("attfil"), range(0.01, 0.5, 0.02, 1, 0.01),  trackerColour(255, 255, 255, 255) markerColour(255, 0, 0, 255) text("Attack Filter") trackerInsideRadius(0.6) outlineColour(255, 255, 255, 255) textColour(255, 255, 255, 255)
rslider bounds(748, 180, 100, 100), channel("decfil"), range(0, 1, 0.3, 1, 0.01), text("Decay Filter") markerColour(255, 0, 0, 255) trackerColour(255, 255, 255, 255) textColour(255, 255, 255, 255) trackerInsideRadius(0.6) outlineColour(255, 255, 255, 255)
rslider bounds(848, 180, 100, 100), channel("susfil"), range(0, 1, 0.3, 1, 0.01), text("Sustain Filter") markerColour(255, 0, 0, 255) trackerColour(255, 255, 255, 255) trackerInsideRadius(0.6) outlineColour(255, 255, 255, 255) textColour(255, 255, 255, 255)
rslider bounds(948, 180, 100, 100), channel("relfil"), range(0, 1, 0.3, 1, 0.01), text("Release Filter") markerColour(255, 0, 0, 255) trackerColour(255, 255, 255, 255) trackerInsideRadius(0.6) textColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255)


;filtro; low-pass filter
rslider bounds(0, 326, 160, 100), channel("cutoff"), range(0, 22000, 10000, 0.5, 0.01), text("Cut-Off") trackerColour(255, 255, 255, 255) trackerInsideRadius(0.6) markerColour(255, 0, 0, 255) outlineColour(255, 255, 255, 255) textColour(255, 255, 255, 255)
rslider bounds(158, 326, 159, 100), channel("res"), range(0, 1, 0.7, 1, 0.01), text("Resonance") trackerColour(255, 255, 255, 255) trackerInsideRadius(0.6) markerColour(255, 0, 0, 255) outlineColour(255, 255, 255, 255) textColour(255, 255, 255, 255)

;lfo

rslider bounds(898, 326, 160, 100) channel("LFOAmp") markerColour(255, 0, 0, 255) outlineColour(255, 255, 255, 255) range(0, 1, 0.8, 1, 0.01) text("LFO amp") textColour(255, 255, 255, 255) trackerColour(255, 255, 255, 255) trackerInsideRadius(0.6)

rslider bounds(739, 326, 159, 100), channel("LFOFreq"), range(0, 1, 0, 1, 0.01), text("LFO Freq") trackerColour(255, 255, 255, 255) textColour(255, 255, 255, 255) markerColour(255, 0, 0, 255) outlineColour(255, 255, 255, 255) trackerInsideRadius(0.6)

;oscillatori, oscillators
rslider bounds(0, 30, 100, 100), channel("saw"), range(0, 1, 0.7, 1, 0.01), text("Saw") trackerColour(255, 255, 255, 255) markerColour(255, 0, 0, 255) trackerInsideRadius(0.6) textColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255)
rslider bounds(100, 30, 100, 100), channel("tri"), range(0, 1, 0.3, 1, 0.01), text("Triangle") colour(255, 255, 255, 255) trackerColour(255, 255, 255, 255) markerColour(255, 0, 0, 255) textColour(255, 255, 255, 255) trackerInsideRadius(0.6) outlineColour(255, 255, 255, 255)
rslider bounds(200, 30, 100, 100), channel("square"), range(0, 1, 0.3, 1, 0.01), text("Square") trackerColour(255, 255, 255, 255) markerColour(255, 0, 0, 255) textColour(255, 255, 255, 255) trackerInsideRadius(0.6) outlineColour(255, 255, 255, 255)
rslider bounds(300, 30, 100, 100), channel("pulse"), range(0, 1, 0, 1, 0.01), text("Pulse") trackerColour(255, 255, 255, 255) markerColour(255, 0, 0, 255) trackerInsideRadius(0.6) textColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255)

;detune
rslider bounds(374, 314, 110, 110), channel("detune") range(0, 0.005, 0.0025, 1, 0.0001) text("Detune") trackerColour(255, 255, 255, 255) markerColour(255, 0, 0, 255) trackerInsideRadius(0.6) outlineColour(255, 255, 255, 255) textColour(255, 255, 255, 255)

;panpot
rslider bounds(6, 178, 100, 100)  range(0, 1, 0.5, 1, 0.001) channel("pansaw") text("Pan Saw") trackerColour(255, 255, 255, 255) trackerInsideRadius(0.6) markerColour(255, 0, 0, 255) outlineColour(255, 255, 255, 255) textColour(255, 255, 255, 255)
rslider bounds(104, 178, 100, 100)  range(0, 1, 0.5, 1, 0.001) channel("pantri") text("Pan Triangle") trackerColour(255, 255, 255, 255) markerColour(255, 0, 0, 255) trackerInsideRadius(0.6) outlineColour(255, 255, 255, 255) textColour(255, 255, 255, 255)
rslider bounds(202, 178, 100, 100)  range(0, 1, 0.5, 1, 0.001) channel("pansquare") text("Pan Square") trackerColour(255, 255, 255, 255) markerColour(255, 0, 0, 255) trackerInsideRadius(0.6) fontColour(255, 255, 255, 255) textColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255)
rslider bounds(300, 178, 100, 100)  range(0, 1, 0.5, 1, 0.001) channel("panpulse") text("Pan Pulse") trackerColour(255, 255, 255, 255) markerColour(255, 0, 0, 255) trackerInsideRadius(0.6) fontColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255) textColour(255, 255, 255, 255)

;livello di uscita;output level
rslider bounds(454, 0, 150, 140), channel("amp"), range(0, 1, 0.5, 1, 0.01), text("Out Level") trackerColour(255, 255, 255, 255) trackerInsideRadius(0.6) outlineColour(255, 255, 255, 255) markerColour(255, 0, 0, 255) textColour(255, 255, 255, 255)
;livello di uscita sub;sub output level
rslider bounds(582, 314, 110, 110), channel("subamp"), range(0, 1, 0.5, 1, 0.01), text("Sub Level") trackerColour(255, 255, 255, 255) trackerInsideRadius(0.6) textColour(255, 255, 255, 255) markerColour(255, 0, 0, 255) outlineColour(255, 255, 255, 255)

;LABEL


label align("left") bounds(0, 460, 1051, 50) channel("label10033") fontColour(255, 0, 0, 255) text("L U C E N S I S Virtual Analog 4 VCO") value(1) alpha(0.5)
</Cabbage>

<CsoundSynthesizer>
<CsOptions>
 -n  --displays -+rtmidi=NULL -M0 --midi-key-cps=4 --midi-velocity-amp=5;

</CsOptions>
<CsInstruments>
; Initialize the global variables. 
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1

instr 1
iFreq = p4; frequenza della nota premuta
iVel = p5; velocity della nota premuta

; chnget
kAmp chnget "amp"
kSub chnget "subamp"

iAtt chnget "att";
iDec chnget "dec"; 
iSus chnget "sus"; 
iRel chnget "rel"; 


iAttFil chnget "attfil" ;attack sul filtro
iDecFil chnget "decfil" ;decay sul filtro 
iSusFil chnget "susfil"; sustain sul filtro
iRelFil chnget "relfil";release sul filtro          


kRes chnget "res"; risonanza variabile di controllo (con k-rate)
kCutOff chnget "cutoff"; freq di taglio
kLFOFreq chnget "LFOFreq"; freq LFO
kLFOAmp chnget "LFOAmp"; livello LFO



kAmpTri chnget "tri";
kAmpSaw chnget "saw"; livello della Saw
kOutSquare chnget "square"
kOutPulse chnget "pulse"



kDetune chnget "detune"

;panpot degli oscillatori 
kpanSaw chnget "pansaw"
kpanTri chnget "pantri"
kpanSquare chnget "pansquare"
kpanPulse chnget "panpulse"




;synth..............................................................

kEnv madsr iAtt, iDec, iSus, iRel;adsr sui livelli con supporto midi

kEnvFil madsr iAttFil, iDecFil, iSusFil, iRelFil; adsr sul filtro

aOut1 vco2 iVel, iFreq;VCO2 senza parametri è SAW - a davanti vuol dire che è un segnale a-rate
aOut2 vco2 iVel, iFreq*(1+kDetune); altro vco ma scordato di + kdetune 
aOut3 vco2 iVel, iFreq*(1-kDetune); altro vco ma scordato di - kdetune 
aOutSub vco2 iVel, iFreq*0.5; una ottava sotto
aOutSaw = aOut1+aOut2+aOut3+aOutSub*kSub; 

aOutTri1 vco2 iVel, iFreq, 12; onda triangolare
aOutTri2 vco2 iVel, iFreq*(1+kDetune), 12; onda triangolare detune
aOutTri3 vco2 iVel, iFreq*(1-kDetune), 12; onda triangolare
aOutTriSub vco2 iVel, (iFreq*0.5), 12; una ottava sotto
aOutTri = aOutTri1+aOutTri2+aOutTri3+aOutTriSub*kSub;

aOutSquare1 vco2 iVel, iFreq, 10; onda quadra
aOutSquare2 vco2 iVel, iFreq*(1+kDetune), 10; onda quadra detune
aOutSquare3 vco2 iVel, iFreq*(1-kDetune), 10; onda quadra
aOutSquareSub vco2 iVel, (iFreq*0.5), 10; una ottava sotto
aOutSquare = aOutSquare1+aOutSquare2+aOutSquare3+aOutSquareSub*kSub


aOutPulse1 vco2 iVel, iFreq, 6; pulse
aOutPulse2 vco2 iVel, iFreq*(1+kDetune), 6; pulse detune
aOutPulse3 vco2 iVel, iFreq*(1+kDetune), 6; pulse
aOutPulseSub vco2 iVel, (iFreq*0.5), 6; una ottava sotto
aOutPulse = (aOutPulse1+aOutPulse2+aOutPulse3+aOutPulseSub*kSub)*0.1





kLFO lfo kLFOAmp, kLFOFreq, 0; lfo sinusoidale

kLFO *= 0.5; evitano che l'onda passi per lo zero dell'asse x
kLFO += 0.5

aLP moogladder aOutSaw, kLFO*kCutOff*kEnvFil, kRes; filtro con il suono saw,filtro moog,regolazione cutoff e risonanza
aLP2 moogladder aOutTri, kLFO*kCutOff*kEnvFil, kRes;
aLP3 moogladder aOutSquare, kLFO*kCutOff*kEnvFil, kRes;
aLP4 moogladder aOutPulse, kLFO*kCutOff*kEnvFil, kRes;


;controlli panpot per i 4 oscillatori
aLPL, aLPR pan2 aLP, kpanSaw; pan saw: 0 tutto a sinistra, 1 tutto a destra, 0.5 al centro
aLP2L, aLP2R pan2 aLP2, kpanTri;
aLP3L, aLP3R pan2 aLP3, kpanSquare;
aLP4L, aLP4R pan2 aLP4, kpanPulse;



        
outs kAmp*(kAmpSaw*(aLPL*kEnv))*0.7, kAmp*(kAmpSaw*(aLPR*kEnv))*0.7; uscita (moltiplicazione) tra amplificazione,filtro moog e inviluppo ADSR
outs kAmp*(kAmpTri*(aLP2L*kEnv))*0.7, kAmp*(kAmpTri*(aLP2R*kEnv))*0.7;
outs kAmp*(kOutSquare*(aLP3L*kEnv))*0.7, kAmp*(kOutSquare*(aLP3R*kEnv))*0.7;
outs kAmp*(kOutPulse*(aLP4L*kEnv))*0.7, kAmp*(kOutPulse*(aLP4R*kEnv))*0.7;

; feed output into named channel - using chnmix
;chnmix ((kAmpSaw*(aLP*kEnv)+kAmpTri*(aLP2*kEnv)+kOutSquare*(aLP3*kEnv)+kOutPulse*(aLP4*kEnv)))*0.5, "synth1" 
;gaRev+=((kAmpSaw*(aLP*kEnv)+kAmpTri*(aLP2*kEnv)+kOutSquare*(aLP3*kEnv)+kOutPulse*(aLP4*kEnv)))*0.5 ; riverbero + segnale



a1 = 2*((kAmpSaw*(aLP*kEnv)+kAmpTri*(aLP2*kEnv)+kOutSquare*(aLP3*kEnv)+kOutPulse*(aLP4*kEnv)));nuova;

display a1, .1, 1;;nuova



endin


;instr 99


   
   
   
   
;endin





</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z
;i 99 0 z
</CsScore>
</CsoundSynthesizer>

