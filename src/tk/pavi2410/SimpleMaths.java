package tk.pavi2410; // package of the extension will be "tk.pavi2410.SimpleMaths"

// Only these imports are required to interact with Kodular
import com.google.appinventor.components.annotations.*;
import com.google.appinventor.components.runtime.*;
import com.google.appinventor.components.common.*;

@DesignerComponent(version = 1, // Update version here, You must do for each new release to upgrade your extension
                   description = "Simple Maths extension created by you",
                   category = ComponentCategory.EXTENSION,
                   nonVisible = true,
                   iconName = "images/extension.png") // Change your extension's icon from here; can be a direct url
@SimpleObject(external = true)
public class SimpleMaths extends AndroidNonvisibleComponent implements Component {

    public SimpleMaths(ComponentContainer container) {
        super(container.$form());
    }

    @SimpleFunction(description = "Simple addition of two numbers")
    public int Add(int a, int b) {
        return a + b;
    }

    @SimpleFunction(description = "Simple subtraction of two numbers")
    public int Subtract(int a, int b) {
        return a - b;
    }
}
