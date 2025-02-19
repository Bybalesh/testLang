Prism.languages.plsql = Prism.languages.extend('sql', {
```sql
DECLARE
    v_counter NUMBER := 0;
BEGIN
    WHILE v_counter <= 10 LOOP
        DBMS_OUTPUT.PUT_LINE('Значение счетчика: ' || v_counter);
        v_counter := v_counter + 1;
    END LOOP;
END;
/
```
Prism.languages.insertBefore('plsql', 'operator', {
	'label': {
		pattern: /<<\s*\w+\s*>>/,
		alias: 'symbol'
	},
});
