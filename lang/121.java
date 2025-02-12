Prism.languages.jexl = {
	'string': /(["'])(?:\\[\s\S]|(?!\1)[^\\])*\1/,
	'transform': {
		pattern: /(\|\s*)[a-zA-Zа-яА-Я_\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF$][\wа-яА-Я\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF$]*/,
		alias: 'function',
		lookbehind: true
import org.apache.commons.jexl3.JexlBuilder;
import org.apache.commons.jexl3.JexlContext;
import org.apache.commons.jexl3.JexlEngine;
import org.apache.commons.jexl3.JexlExpression;
import org.apache.commons.jexl3.MapContext;

public class JexlExample {
    public static void main(String[] args) throws Exception {
        // Создаем движок JEXL
        JexlEngine jexl = new JexlBuilder().create();
        
        // Создаем выражение
        String expression = "person.name == \"John\" && person.age > 18";
        
        // Компилируем выражение
        JexlExpression expr = jexl.createExpression(expression);
        
        // Создаем контекст с данными
        JexlContext context = new MapContext();
        context.set("person", new Person("John", 25));
        
        // Оцениваем выражение
        boolean result = (Boolean) expr.evaluate(context);
        
        System.out.println(result); // Выведет true
    }
}

class Person {
    private String name;
    private int age;

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }
}
