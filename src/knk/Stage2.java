
package knk;
import javafx.application.Application;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.stage.Stage;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.effect.DropShadow;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Pane;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.scene.text.Text;
import javafx.scene.text.TextAlignment;
import javafx.scene.Cursor;
import javafx.scene.Scene;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Stage2 {
		
		private static Button nextbtn = new Button();
		private static Stage mainstage;
		private static Stage3 stage3 = new Stage3();
	
//Emerimet mbi dropdown listat
		private static	Text nivelistud = new Text("Niveli i studimeve");
		private static	Text depart = new Text("Departamenti");
		private static	Text semestri = new Text("Semestri");
		private static  Text grupitext = new Text("Grupi");

//Niveli i studimeve		
		private static String bachelortxt = new String("Bachelor");
		private static String mastertxt = new String("Master");
