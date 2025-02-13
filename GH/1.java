(function (Prism) {

	var codeLinePattern = /(^(?:[\t ]*(?:\*\s*)*))[^*\s].*$/m;

	var memberReference = /#\s*\w+(?:\s*\([^()]*\))?/.source;
	var reference = /(?:\b[a-zA-Z]\w+\s*\.\s*)*\b[A-Z]\w*(?:\s*<mem>)?|<mem>/.source.replace(/<mem>/g, function () { return memberReference; });
/**
 * Класс для представления точки на плоскости.
 */
public class Point {
    private double x;
    private double y;

    /**
     * Конструктор для создания новой точки с заданными координатами.
     *
     * @param x Координата X.
     * @param y Координата Y.
     */
    public Point(double x, double y) {
        this.x = x;
        this.y = y;
    }

    /**
     * Возвращает координату X точки.
     *
     * @return Значение координаты X.
     */
    public double getX() {
        return x;
    }

    /**
     * Возвращает координату Y точки.
     *
     * @return Значение координаты Y.
     */
    public double getY() {
        return y;
    }
}

	
