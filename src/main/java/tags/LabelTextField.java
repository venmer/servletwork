package tags;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * autor:maksim
 * date: 24.04.15
 * time: 13:56.
 */
public class LabelTextField extends SimpleTagSupport {
    private String label;
    private String value;
    private String name;
    @Override
    public void doTag() throws JspException, IOException {
        JspContext jspContext=getJspContext();
        JspWriter jspWriter=jspContext.getOut();
        jspWriter.print("<tr>");
        jspWriter.print("<td>");
        jspWriter.print("<b>");
        jspWriter.print(label);
        jspWriter.print("</b>");
        jspWriter.print("<input type=\"text\" name=\"");
        jspWriter.print(name+"\" ");
        jspWriter.print("value= \"");
        jspWriter.print(value+"\"/>");
        jspWriter.print("</td>");
        jspWriter.print("</tr>");
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }
}
