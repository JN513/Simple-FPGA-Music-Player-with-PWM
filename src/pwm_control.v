module PWM_Control (
    input wire [15:0] freq,
    output reg [20:0] duty_cycle,
    output reg [20:0] period
);

localparam NOTE_B0 = 31;
localparam NOTE_C1 = 33;
localparam NOTE_CS1 = 35;
localparam NOTE_D1 = 37;
localparam NOTE_DS1 = 39;
localparam NOTE_E1 = 41;
localparam NOTE_F1 = 44;
localparam NOTE_FS1 = 46;
localparam NOTE_G1 = 49;
localparam NOTE_GS1 = 52;
localparam NOTE_A1 = 55;
localparam NOTE_AS1 = 58;
localparam NOTE_B1 = 62;
localparam NOTE_C2 = 65;
localparam NOTE_CS2 = 69;
localparam NOTE_D2 = 73;
localparam NOTE_DS2 = 78;
localparam NOTE_E2 = 82;
localparam NOTE_F2 = 87;
localparam NOTE_FS2 = 93;
localparam NOTE_G2 = 98;
localparam NOTE_GS2 = 104;
localparam NOTE_A2 = 110;
localparam NOTE_AS2 = 117;
localparam NOTE_B2 = 123;
localparam NOTE_C3 = 131;
localparam NOTE_CS3 = 139;
localparam NOTE_D3 = 147;
localparam NOTE_DS3 = 156;
localparam NOTE_E3 = 165;
localparam NOTE_F3 = 175;
localparam NOTE_FS3 = 185;
localparam NOTE_G3 = 196;
localparam NOTE_GS3 = 208;
localparam NOTE_A3 = 220;
localparam NOTE_AS3 = 233;
localparam NOTE_B3 = 247;
localparam NOTE_C4 = 262;
localparam NOTE_CS4 = 277;
localparam NOTE_D4 = 294;
localparam NOTE_DS4 = 311;
localparam NOTE_E4 = 330;
localparam NOTE_F4 = 349;
localparam NOTE_FS4 = 370;
localparam NOTE_G4 = 392;
localparam NOTE_GS4 = 415;
localparam NOTE_A4 = 440;
localparam NOTE_AS4 = 466;
localparam NOTE_B4 = 494;
localparam NOTE_C5 = 523;
localparam NOTE_CS5 = 554;
localparam NOTE_D5 = 587;
localparam NOTE_DS5 = 622;
localparam NOTE_E5 = 659;
localparam NOTE_F5 = 698;
localparam NOTE_FS5 = 740;
localparam NOTE_G5 = 784;
localparam NOTE_GS5 = 831;
localparam NOTE_A5 = 880;
localparam NOTE_AS5 = 932;
localparam NOTE_B5 = 988;
localparam NOTE_C6 = 1047;
localparam NOTE_CS6 = 1109;
localparam NOTE_D6 = 1175;
localparam NOTE_DS6 = 1245;
localparam NOTE_E6 = 1319;
localparam NOTE_F6 = 1397;
localparam NOTE_FS6 = 1480;
localparam NOTE_G6 = 1568;
localparam NOTE_GS6 = 1661;
localparam NOTE_A6 = 1760;
localparam NOTE_AS6 = 1865;
localparam NOTE_B6 = 1976;
localparam NOTE_C7 = 2093;
localparam NOTE_CS7 = 2217;
localparam NOTE_D7 = 2349;
localparam NOTE_DS7 = 2489;
localparam NOTE_E7 = 2637;
localparam NOTE_F7 = 2794;
localparam NOTE_FS7 = 2960;
localparam NOTE_G7 = 3136;
localparam NOTE_GS7 = 3322;
localparam NOTE_A7 = 3520;
localparam NOTE_AS7 = 3729;
localparam NOTE_B7 = 3951;
localparam NOTE_C8 = 4186;
localparam NOTE_CS8 = 4435;
localparam NOTE_D8 = 4699;
localparam NOTE_DS8 = 4978;


always @(*) begin
    case (freq)
        NOTE_B0: begin
            period <= 1612903; // PERIOD = 50000000 / PWM_FREQ
            duty_cycle <= 806452; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_C1: begin
            period <= 1515152; // PERIOD = 50000000 / 33
            duty_cycle <= 757576; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_CS1: begin
            period <= 1428571; // PERIOD = 50000000 / 35
            duty_cycle <= 714286; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_D1: begin
            period <= 1351351; // PERIOD = 50000000 / 37
            duty_cycle <= 675676; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_DS1: begin
            period <= 1282051; // PERIOD = 50000000 / 39
            duty_cycle <= 641026; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_E1: begin
            period <= 1219512; // PERIOD = 50000000 / 41
            duty_cycle <= 609756; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_F1: begin
            period <= 1136364; // PERIOD = 50000000 / 44
            duty_cycle <= 568182; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_FS1: begin
            period <= 1086957; // PERIOD = 50000000 / 46
            duty_cycle <= 543478; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_G1: begin
            period <= 1020408; // PERIOD = 50000000 / 49
            duty_cycle <= 510204; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_GS1: begin
            period <= 961538; // PERIOD = 50000000 / 52
            duty_cycle <= 480769; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_A1: begin
            period <= 909091; // PERIOD = 50000000 / 55
            duty_cycle <= 454545; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_AS1: begin
            period <= 862069; // PERIOD = 50000000 / 58
            duty_cycle <= 431034; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_B1: begin
            period <= 806452; // PERIOD = 50000000 / 62
            duty_cycle <= 403226; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_C2: begin
            period <= 769231; // PERIOD = 50000000 / 65
            duty_cycle <= 384615; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_CS2: begin
            period <= 724638; // PERIOD = 50000000 / 69
            duty_cycle <= 362319; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_D2: begin
            period <= 684932; // PERIOD = 50000000 / 73
            duty_cycle <= 342466; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_DS2: begin
            period <= 641026; // PERIOD = 50000000 / 78
            duty_cycle <= 320513; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_E2: begin
            period <= 609756; // PERIOD = 50000000 / 82
            duty_cycle <= 304878; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_F2: begin
            period <= 574713; // PERIOD = 50000000 / 87
            duty_cycle <= 287356; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_FS2: begin
            period <= 537634; // PERIOD = 50000000 / 93
            duty_cycle <= 268817; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_G2: begin
            period <= 510204; // PERIOD = 50000000 / 98
            duty_cycle <= 255102; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_GS2: begin
            period <= 480769; // PERIOD = 50000000 / 104
            duty_cycle <= 240385; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_A2: begin
            period <= 454545; // PERIOD = 50000000 / 110
            duty_cycle <= 227273; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_AS2: begin
            period <= 427350; // PERIOD = 50000000 / 117
            duty_cycle <= 213675; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_B2: begin
            period <= 406504; // PERIOD = 50000000 / 123
            duty_cycle <= 203252; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_C3: begin
            period <= 381679; // PERIOD = 50000000 / 131
            duty_cycle <= 190839; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_CS3: begin
            period <= 359712; // PERIOD = 50000000 / 139
            duty_cycle <= 179856; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_D3: begin
            period <= 340136; // PERIOD = 50000000 / 147
            duty_cycle <= 170068; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_DS3: begin
            period <= 320513; // PERIOD = 50000000 / 156
            duty_cycle <= 160256; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_E3: begin
            period <= 304878; // PERIOD = 50000000 / 165
            duty_cycle <= 152439; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_F3: begin
            period <= 287356; // PERIOD = 50000000 / 175
            duty_cycle <= 143678; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_FS3: begin
            period <= 270270; // PERIOD = 50000000 / 185
            duty_cycle <= 135135; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_G3: begin
            period <= 255102; // PERIOD = 50000000 / 196
            duty_cycle <= 127551; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_GS3: begin
            period <= 240385; // PERIOD = 50000000 / 208
            duty_cycle <= 120193; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_A3: begin
            period <= 227273; // PERIOD = 50000000 / 220
            duty_cycle <= 113636; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_AS3: begin
            period <= 214599; // PERIOD = 50000000 / 233
            duty_cycle <= 107299; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_B3: begin
            period <= 202429; // PERIOD = 50000000 / 247
            duty_cycle <= 101214; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_C4: begin
            period <= 190839; // PERIOD = 50000000 / 262
            duty_cycle <= 95420; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_CS4: begin
            period <= 180505; // PERIOD = 50000000 / 277
            duty_cycle <= 90253; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_D4: begin
            period <= 170068; // PERIOD = 50000000 / 294
            duty_cycle <= 85034; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_DS4: begin
            period <= 160513; // PERIOD = 50000000 / 311
            duty_cycle <= 80257; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_E4: begin
            period <= 151515; // PERIOD = 50000000 / 330
            duty_cycle <= 75758; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_F4: begin
            period <= 142857; // PERIOD = 50000000 / 349
            duty_cycle <= 71429; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_FS4: begin
            period <= 135135; // PERIOD = 50000000 / 370
            duty_cycle <= 67568; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_G4: begin
            period <= 127551; // PERIOD = 50000000 / 392
            duty_cycle <= 63776; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_GS4: begin
            period <= 120481; // PERIOD = 50000000 / 415
            duty_cycle <= 60241; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_A4: begin
            period <= 113636; // PERIOD = 50000000 / 440
            duty_cycle <= 56818; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_AS4: begin
            period <= 107299; // PERIOD = 50000000 / 466
            duty_cycle <= 53650; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_B4: begin
            period <= 101214; // PERIOD = 50000000 / 494
            duty_cycle <= 50607; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_C5: begin
            period <= 95420; // PERIOD = 50000000 / 523
            duty_cycle <= 47710; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_CS5: begin
            period <= 90253; // PERIOD = 50000000 / 554
            duty_cycle <= 45126; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_D5: begin
            period <= 85034; // PERIOD = 50000000 / 587
            duty_cycle <= 42517; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_DS5: begin
            period <= 80257; // PERIOD = 50000000 / 622
            duty_cycle <= 40129; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_E5: begin
            period <= 75758; // PERIOD = 50000000 / 659
            duty_cycle <= 37879; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_F5: begin
            period <= 71429; // PERIOD = 50000000 / 698
            duty_cycle <= 35715; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_FS5: begin
            period <= 67568; // PERIOD = 50000000 / 740
            duty_cycle <= 33784; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_G5: begin
            period <= 63776; // PERIOD = 50000000 / 784
            duty_cycle <= 31888; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_GS5: begin
            period <= 60241; // PERIOD = 50000000 / 831
            duty_cycle <= 30120; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_A5: begin
            period <= 56818; // PERIOD = 50000000 / 880
            duty_cycle <= 28409; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_AS5: begin
            period <= 53650; // PERIOD = 50000000 / 932
            duty_cycle <= 26825; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_B5: begin
            period <= 50607; // PERIOD = 50000000 / 988
            duty_cycle <= 25303; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_C6: begin
            period <= 47710; // PERIOD = 50000000 / 1047
            duty_cycle <= 23855; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_CS6: begin
            period <= 45126; // PERIOD = 50000000 / 1109
            duty_cycle <= 22563; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_D6: begin
            period <= 42517; // PERIOD = 50000000 / 1175
            duty_cycle <= 21259; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_DS6: begin
            period <= 40129; // PERIOD = 50000000 / 1245
            duty_cycle <= 20065; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_E6: begin
            period <= 37879; // PERIOD = 50000000 / 1319
            duty_cycle <= 18940; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_F6: begin
            period <= 35715; // PERIOD = 50000000 / 1397
            duty_cycle <= 17858; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_FS6: begin
            period <= 33784; // PERIOD = 50000000 / 1480
            duty_cycle <= 16892; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_G6: begin
            period <= 31888; // PERIOD = 50000000 / 1568
            duty_cycle <= 15944; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_GS6: begin
            period <= 30120; // PERIOD = 50000000 / 1661
            duty_cycle <= 15060; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_A6: begin
            period <= 28409; // PERIOD = 50000000 / 1760
            duty_cycle <= 14205; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_AS6: begin
            period <= 26825; // PERIOD = 50000000 / 1865
            duty_cycle <= 13413; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_B6: begin
            period <= 25303; // PERIOD = 50000000 / 1976
            duty_cycle <= 12651; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_C7: begin
            period <= 23855; // PERIOD = 50000000 / 2093
            duty_cycle <= 11928; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_CS7: begin
            period <= 22563; // PERIOD = 50000000 / 2217
            duty_cycle <= 11281; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_D7: begin
            period <= 21259; // PERIOD = 50000000 / 2349
            duty_cycle <= 10630; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_DS7: begin
            period <= 20065; // PERIOD = 50000000 / 2489
            duty_cycle <= 10032; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_E7: begin
            period <= 18940; // PERIOD = 50000000 / 2637
            duty_cycle <= 9470; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_F7: begin
            period <= 17858; // PERIOD = 50000000 / 2794
            duty_cycle <= 8929; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_FS7: begin
            period <= 16892; // PERIOD = 50000000 / 2960
            duty_cycle <= 8446; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_G7: begin
            period <= 15944; // PERIOD = 50000000 / 3136
            duty_cycle <= 7972; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_GS7: begin
            period <= 15060; // PERIOD = 50000000 / 3322
            duty_cycle <= 7530; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_A7: begin
            period <= 14205; // PERIOD = 50000000 / 3520
            duty_cycle <= 7103; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_AS7: begin
            period <= 13413; // PERIOD = 50000000 / 3729
            duty_cycle <= 6707; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_B7: begin
            period <= 12651; // PERIOD = 50000000 / 3951
            duty_cycle <= 6326; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_C8: begin
            period <= 11928; // PERIOD = 50000000 / 4186
            duty_cycle <= 5964; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_CS8: begin
            period <= 11281; // PERIOD = 50000000 / 4435
            duty_cycle <= 5641; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_D8: begin
            period <= 10630; // PERIOD = 50000000 / 4699
            duty_cycle <= 5315; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        NOTE_DS8: begin
            period <= 10032; // PERIOD = 50000000 / 4978
            duty_cycle <= 5016; // DUTY_CYCLE = PERIOD * 1048576 / 2097152
        end
        default: begin
            period <= 0;
            duty_cycle <= 0;
        end
    endcase
end
    
endmodule
