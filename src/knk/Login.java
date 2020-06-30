package knk;

import javafx.application.Application;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.stage.Stage;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.effect.DropShadow;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.paint.Color;
import javafx.scene.Cursor;
import javafx.scene.Scene;
import java.sql.*;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Login extends Application {

	private Connection dbConnection;
	private TextField IDtxt = new TextField();
	private PasswordField passwordTxt = new PasswordField();
	public Stage mainStage;
	private Button logInButton = new Button("Kyçu");
	private Label resetpw = new Label("Keni harruar fjalëkalimin?");
	private Label shqip = new Label("Shqip");
	private Label english = new Label("English");
	private Label help = new Label("Ndihma");

	@Override
	public void start(Stage primaryStage) throws Exception {
		mainStage = primaryStage;
		dbConnection = DBConnection.getConnection();
		// setConnection();

		BorderPane bpane = new BorderPane();
		bpane.setPadding(new Insets(70, 200, 70, 200));
		bpane.setStyle("-fx-background-color:#efefef;");
		bpane.setPrefSize(850, 500);

		GridPane gridPane = new GridPane();
		gridPane.setHgap(10);
		gridPane.setVgap(10);
		gridPane.setPadding(new Insets(10, 10, 10, 10));
		gridPane.setStyle("-fx-background-color:#f2f2f2;");
		gridPane.setEffect(new DropShadow(8, Color.BLACK));
		gridPane.setAlignment(Pos.CENTER);
		gridPane.setMinWidth(395);
		gridPane.setMinHeight(450);

//LOGO NE LOGIN PAGE
		Image image = new Image("/images/unipr.png");
		ImageView logo = new ImageView(image);
		logo.setSmooth(true);
		gridPane.add(logo, 1, 0);

//RRESHTI PERDORUESI
		Label ID = new Label("Përdoruesi:");
		ID.setStyle("-fx-font-size:15;");
		IDtxt.setPromptText("ID");
		IDtxt.setStyle("-fx-font-size:15;");
		IDtxt.setMaxWidth(150);
		gridPane.add(ID, 0, 1);
		gridPane.add(IDtxt, 1, 1);
	
