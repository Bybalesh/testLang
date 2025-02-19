Prism.languages.asmatmel = {
	'comment': {
		pattern: /;.*/,
		greedy: true
	},
	'string': {
		pattern: /(["'`])(?:\\.|(?!\1)[^\\\r\n])*\1/,
		greedy: true
	},
; Пример кода для мигания светодиодом на микроконтроллере AVR (например, ATmega328P)

.include "tn328Pdef.inc" ; Подключаем файл с определениями для ATmega328P

.global main            ; Объявляем функцию main глобальной

; -------- Регистры --------
.def temp = r16          ; Определяем псевдоним 'temp' для регистра r16

; -------- Адреса портов --------
.equ LED_PORT = PORTB     ; Порт, к которому подключен светодиод (Порт B)
.equ LED_PIN  = PB5      ; Пин, к которому подключен светодиод (Пин 5 порта B)
.equ LED_DDR  = DDRB      ; Регистр направления данных для порта B

.section .text           ; Начало секции кода

main:
    ; -------- Настройка порта --------
    ldi  temp, (1 << LED_PIN) ; Загружаем битовую маску для LED_PIN в temp (1 << 5 = 0b00100000)
    out  LED_DDR, temp        ; Устанавливаем направление порта (LED_PIN как выход)

loop:
    ; -------- Включение светодиода --------
    sbi  LED_PORT, LED_PIN  ; Устанавливаем бит LED_PIN в порту LED_PORT (включаем светодиод)
    rcall delay             ; Вызываем подпрограмму задержки

    ; -------- Выключение светодиода --------
    cbi  LED_PORT, LED_PIN  ; Сбрасываем бит LED_PIN в порту LED_PORT (выключаем светодиод)
    rcall delay             ; Вызываем подпрограмму задержки

    rjmp loop              ; Переходим к началу цикла

; -------- Подпрограмма задержки --------
delay:
    ldi   r20, 0xFA        ; Загружаем значение в регистр r20 (внешний цикл)
outer_loop:
    ldi   r21, 0xFF        ; Загружаем значение в регистр r21 (средний цикл)
middle_loop:
    ldi   r22, 0xFF        ; Загружаем значение в регистр r22 (внутренний цикл)
inner_loop:
    dec   r22              ; Декрементируем регистр r22
    brne  inner_loop       ; Если не равно нулю, то переходим к inner_loop
    dec   r21              ; Декрементируем регистр r21
    brne  middle_loop      ; Если не равно нулю, то переходим к middle_loop
    dec   r20              ; Декрементируем регистр r20
    brne  outer_loop       ; Если не равно нулю, то переходим к outer_loop
    ret                    ; Возврат из подпрограммы

	'constant': /\b(?:PORT[A-Z]|DDR[A-Z]|(?:DD|P)[A-Z](?:\d|[0-2]\d|3[01]))\b/,

	'directive': {
		pattern: /\.\w+(?= )/,
		alias: 'property'
	},
	'r-register': {
		pattern: /\br(?:\d|[12]\d|3[01])\b/,
		alias: 'variable'
	},
	'op-code': {
		pattern: /\b(?:ADC|ADD|ADIW|AND|ANDI|ASR|BCLR|BLD|BRBC|BRBS|BRCC|BRCS|BREAK|BREQ|BRGE|BRHC|BRHS|BRID|BRIE|BRLO|BRLT|BRMI|BRNE|BRPL|BRSH|BRTC|BRTS|BRVC|BRVS|BSET|BST|CALL|CBI|CBR|CLC|CLH|CLI|CLN|CLR|CLS|CLT|CLV|CLZ|COM|CP|CPC|CPI|CPSE|DEC|DES|EICALL|EIJMP|ELPM|EOR|FMUL|FMULS|FMULSU|ICALL|IJMP|IN|INC|JMP|LAC|LAS|LAT|LD|LD[A-Za-z0-9]|LPM|LSL|LSR|MOV|MOVW|MUL|MULS|MULSU|NEG|NOP|OR|ORI|OUT|POP|PUSH|RCALL|RET|RETI|RJMP|ROL|ROR|SBC|SBCI|SBI|SBIC|SBIS|SBIW|SBR|SBRC|SBRS|SEC|SEH|SEI|SEN|SER|SES|SET|SEV|SEZ|SLEEP|SPM|ST|ST[A-Z0-9]|SUB|SUBI|SWAP|TST|WDR|XCH|adc|add|adiw|and|andi|asr|bclr|bld|brbc|brbs|brcc|brcs|break|breq|brge|brhc|brhs|brid|brie|brlo|brlt|brmi|brne|brpl|brsh|brtc|brts|brvc|brvs|bset|bst|call|cbi|cbr|clc|clh|cli|cln|clr|cls|clt|clv|clz|com|cp|cpc|cpi|cpse|dec|des|eicall|eijmp|elpm|eor|fmul|fmuls|fmulsu|icall|ijmp|in|inc|jmp|lac|las|lat|ld|ld[a-z0-9]|lpm|lsl|lsr|mov|movw|mul|muls|mulsu|neg|nop|or|ori|out|pop|push|rcall|ret|reti|rjmp|rol|ror|sbc|sbci|sbi|sbic|sbis|sbiw|sbr|sbrc|sbrs|sec|seh|sei|sen|ser|ses|set|sev|sez|sleep|spm|st|st[a-zA-Z0-9]|sub|subi|swap|tst|wdr|xch)\b/,
		alias: 'keyword'
	},
	'hex-number': {
		pattern: /#?\$[\da-f]{2,4}\b/i,
		alias: 'number'
	},
	'binary-number': {
		pattern: /#?%[01]+\b/,
		alias: 'number'
	},
	'decimal-number': {
		pattern: /#?\b\d+\b/,
		alias: 'number'
	},
	'register': {
		pattern: /\b[acznvshtixy]\b/i,
		alias: 'variable'
	},
	'operator': />>=?|<<=?|&[&=]?|\|[\|=]?|[-+*/%^!=<>?]=?/,
	'punctuation': /[(),:]/
};
