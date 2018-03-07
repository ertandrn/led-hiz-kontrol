.org 0
rjmp main

main:
    ldi R20,0xff
	out DDRC,R20

	cbi DDRB,0
	sbi PORTB,0


// ----------------------------------- YAVAS LED -----------------------------------


yavasled0:
	sbi PORTC,0
	sbis PINB,0
	rjmp gonder00
	call yavas
	cbi PORTC,0

yavasled1:
	sbi PORTC,1
	sbis PINB,0
	rjmp gonder01
	call yavas
	cbi PORTC,1

yavasled2:
	sbi PORTC,2
	sbis PINB,0
	rjmp gonder02
	call yavas
	cbi PORTC,2

yavasled3:
	sbi PORTC,3
	sbis PINB,0
	rjmp gonder03
	call yavas
	cbi PORTC,3

yavasled4:
	sbi PORTC,4
	sbis PINB,0
	rjmp gonder04
	call yavas
	cbi PORTC,4

yavasled5:
	sbi PORTC,5
	sbis PINB,0
	rjmp gonder05
	call yavas
	cbi PORTC,5

yavasled6:
	sbi PORTC,6
	sbis PINB,0
	rjmp gonder06
	call yavas
	cbi PORTC,6

yavasled7:
	sbi PORTC,7
	sbis PINB,0
	rjmp gonder07
	call yavas
	cbi PORTC,7
	rjmp yavasled0

// ----------------------------------- NORMAL LED -----------------------------------

normalled0:
	sbi PORTC,0
	sbis PINB,0
	rjmp gonder10
	call normal
	cbi PORTC,0

normalled1:
	sbi PORTC,1
	sbis PINB,0
	rjmp gonder11
	call normal
	cbi PORTC,1

normalled2:
	sbi PORTC,2
	sbis PINB,0
	rjmp gonder12
	call normal
	cbi PORTC,2

normalled3:
	sbi PORTC,3
	sbis PINB,0
	rjmp gonder13
	call normal
	cbi PORTC,3

normalled4:
	sbi PORTC,4
	sbis PINB,0
	rjmp gonder14
	call normal
	cbi PORTC,4

normalled5:
	sbi PORTC,5
	sbis PINB,0
	rjmp gonder15
	call normal
	cbi PORTC,5

normalled6:
	sbi PORTC,6
	sbis PINB,0
	rjmp gonder16
	call normal
	cbi PORTC,6

normalled7:
	sbi PORTC,7
	sbis PINB,0
	rjmp gonder17
	call normal
	cbi PORTC,7
	rjmp normalled0


// ----------------------------------- HIZLI LED -----------------------------------


hizliled0:
	sbi PORTC,0
	sbis PINB,0
	rjmp gonder20
	call hizli
	cbi PORTC,0

hizliled1:
	sbi PORTC,1
	sbis PINB,0
	rjmp gonder21
	call hizli
	cbi PORTC,1

hizliled2:
	sbi PORTC,2
	sbis PINB,0
	rjmp gonder22
	call hizli
	cbi PORTC,2

hizliled3:
	sbi PORTC,3
	sbis PINB,0
	rjmp gonder23
	call hizli
	cbi PORTC,3

hizliled4:
	sbi PORTC,4
	sbis PINB,0
	rjmp gonder24
	call hizli
	cbi PORTC,4

hizliled5:
	sbi PORTC,5
	sbis PINB,0
	rjmp gonder25
	call hizli
	cbi PORTC,5

hizliled6:
	sbi PORTC,6
	sbis PINB,0
	rjmp gonder26
	call hizli
	cbi PORTC,6

hizliled7:
	sbi PORTC,7
	sbis PINB,0
	rjmp gonder27
	call hizli
	cbi PORTC,7
	rjmp hizliled0


// ----------------------------------- GONDER FONKSIYONLARININ DELAY'I -----------------------------------


delay:
	//1s
	//8 000 000 cycle
	ldi  r18, 41
    ldi  r19, 150
    ldi  r20, 128
L4: dec  r20
    brne L4
    dec  r19
    brne L4
    dec  r18
    brne L4
	ret


// ----------------------------------- YAVASTAN NORMALE GECIS -----------------------------------


gonder00:
	call delay
	sbis PINB,0
	rjmp dongu00
	rjmp normalled0

gonder01:
	call delay
	sbis PINB,0
	rjmp dongu01
	rjmp normalled1

gonder02:
	call delay
	sbis PINB,0
	rjmp dongu02
	rjmp normalled2

gonder03:
	call delay
	sbis PINB,0
	rjmp dongu03
	rjmp normalled3

gonder04:
	call delay
	sbis PINB,0
	rjmp dongu04
	rjmp normalled4

gonder05:
	call delay
	sbis PINB,0
	rjmp dongu05
	rjmp normalled5

gonder06:
	call delay
	sbis PINB,0
	rjmp dongu06
	rjmp normalled6

gonder07:
	call delay
	sbis PINB,0
	rjmp dongu07
	rjmp normalled7
	

// ----------------------------------- NORMALDEN HIZLIYA GECIS -----------------------------------


gonder10:
	call delay
	sbis PINB,0
	rjmp dongu10
	rjmp hizliled0

gonder11:
	call delay
	sbis PINB,0
	rjmp dongu11
	rjmp hizliled1

gonder12:
	call delay
	sbis PINB,0
	rjmp dongu12
	rjmp hizliled2

gonder13:
	call delay
	sbis PINB,0
	rjmp dongu13
	rjmp hizliled3

gonder14:
	call delay
	sbis PINB,0
	rjmp dongu14
	rjmp hizliled4

gonder15:
	call delay
	sbis PINB,0
	rjmp dongu15
	rjmp hizliled5

gonder16:
	call delay
	sbis PINB,0
	rjmp dongu16
	rjmp hizliled6

gonder17:
	call delay
	sbis PINB,0
	rjmp dongu17
	rjmp hizliled7


// ----------------------------------- HIZLIDAN YAVASA GECIS -----------------------------------


gonder20:
	call delay
	sbis PINB,0
	rjmp dongu20
	rjmp yavasled0

gonder21:
	call delay
	sbis PINB,0
	rjmp dongu21
	rjmp yavasled1

gonder22:
	call delay
	sbis PINB,0
	rjmp dongu22
	rjmp yavasled2

gonder23:
	call delay
	sbis PINB,0
	rjmp dongu23
	rjmp yavasled3

gonder24:
	call delay
	sbis PINB,0
	rjmp dongu24
	rjmp yavasled4

gonder25:
	call delay
	sbis PINB,0
	rjmp dongu25
	rjmp yavasled5

gonder26:
	call delay
	sbis PINB,0
	rjmp dongu26
	rjmp yavasled6

gonder27:
	call delay
	sbis PINB,0
	rjmp dongu27
	rjmp yavasled7


// ----------------------------------- BUTONA UZUN BASILMASI DURUMU(YAVAS) -----------------------------------


dongu00:
E00:sbis PINB,0
	rjmp E00
	rjmp yavasled0

dongu01:
E01:sbis PINB,0
	rjmp E01
	rjmp yavasled1

dongu02:
E02:sbis PINB,0
	rjmp E02
	rjmp yavasled2

dongu03:
E03:sbis PINB,0
	rjmp E03
	rjmp yavasled3

dongu04:
E04:sbis PINB,0
	rjmp E04
	rjmp yavasled4

dongu05:
E05:sbis PINB,0
	rjmp E05
	rjmp yavasled5

dongu06:
E06:sbis PINB,0
	rjmp E06
	rjmp yavasled6

dongu07:
E07:sbis PINB,0
	rjmp E07
	rjmp yavasled7


// ----------------------------------- BUTONA UZUN BASILMASI DURUMU(NORMAL) -----------------------------------


dongu10:
E10:sbis PINB,0
	rjmp E10
	rjmp normalled0

dongu11:
E11:sbis PINB,0
	rjmp E11
	rjmp normalled1

dongu12:
E12:sbis PINB,0
	rjmp E12
	rjmp normalled2

dongu13:
E13:sbis PINB,0
	rjmp E13
	rjmp normalled3

dongu14:
E14:sbis PINB,0
	rjmp E14
	rjmp normalled4

dongu15:
E15:sbis PINB,0
	rjmp E15
	rjmp normalled5

dongu16:
E16:sbis PINB,0
	rjmp E16
	rjmp normalled6

dongu17:
E17:sbis PINB,0
	rjmp E17
	rjmp normalled7


// ----------------------------------- BUTONA UZUN BASILMASI DURUMU(HIZLI) -----------------------------------


dongu20:
E20:sbis PINB,0
	rjmp E20
	rjmp hizliled0

dongu21:
E21:sbis PINB,0
	rjmp E21
	rjmp hizliled1

dongu22:
E22:sbis PINB,0
	rjmp E22
	rjmp hizliled2

dongu23:
E23:sbis PINB,0
	rjmp E23
	rjmp hizliled3

dongu24:
E24:sbis PINB,0
	rjmp E24
	rjmp hizliled4

dongu25:
E25:sbis PINB,0
	rjmp E25
	rjmp hizliled5

dongu26:
E26:sbis PINB,0
	rjmp E26
	rjmp hizliled6

dongu27:
E27:sbis PINB,0
	rjmp E27
	rjmp hizliled7


// ----------------------------------- YAVASIN DELAY'Ý -----------------------------------


yavas:
	//400 ms
	//3 200 000 cycle
    ldi  r18, 17
    ldi  r19, 60
    ldi  r20, 204
L1: dec  r20
    brne L1
    dec  r19
    brne L1
    dec  r18
    brne L1
	ret


// ----------------------------------- NORMALIN DELAY'Ý -----------------------------------


normal:
	// 200ms
	//1 600 000 cycle
    ldi  r18, 9
    ldi  r19, 30
    ldi  r20, 229
L2: dec  r20
    brne L2
    dec  r19
    brne L2
    dec  r18
    brne L2
    nop
	ret


// ----------------------------------- HIZLININ DELAY'I -----------------------------------


hizli:
	// 100 ms
	//800 000 cycle
    ldi  r18, 5
    ldi  r19, 15
    ldi  r20, 242
L3: dec  r20
    brne L3
    dec  r19
    brne L3
    dec  r18
    brne L3
	ret