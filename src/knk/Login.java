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

//RRESHTI FJALEKALIMI
		Label PW = new Label("Fjalëkalimi:");
		PW.setStyle("-fx-font-size:15;");
		passwordTxt.setStyle("-fx-font-size:15;");
		passwordTxt.setMaxWidth(150);
		gridPane.add(PW, 0, 2);
		gridPane.add(passwordTxt, 1, 2);

//LOGIN BUTTON
		logInButton.setPrefWidth(150);
		logInButton.setStyle("-fx-background-color:#8e1c1c;-fx-font-weight:bold;-fx-text-fill: white;");
		gridPane.add(logInButton, 1, 3);

		/*
		 * logInButton.setOnKeyPressed(new EventHandler<KeyEvent>() {
		 * 
		 * @Override public void handle(KeyEvent event) { if (event.getCode() ==
		 * KeyCode.ENTER) { System.out.println("Enter Pressed"); } } });
		 */
		logInButton.setDefaultButton(true);

		logInButton.setOnAction(e -> {
			loginUser();
		});

		logInButton.setOnMouseEntered(e -> {
			logInButton.setStyle(
					"-fx-background-color:linear-gradient(#8e1c1c,#af2121);-fx-font-weight:bold;-fx-text-fill: white;");
			logInButton.setCursor(Cursor.HAND);
		});
		logInButton.setOnMouseExited(e -> {
			logInButton.setStyle("-fx-background-color:#8e1c1c;-fx-font-weight:bold;-fx-text-fill: white;");
		});

//RRESHTI RESET PASSWORD 

		resetpw.setUnderline(true);
		gridPane.add(resetpw, 1, 4);

		resetpw.setOnMouseClicked(e -> {
			getHostServices().showDocument("https://notimi.uni-pr.edu/ResetPassword");
		});
		resetpw.setOnMouseEntered(e -> {
			resetpw.setCursor(Cursor.HAND);
			resetpw.setStyle("-fx-text-fill:#840000;");
		});
		resetpw.setOnMouseExited(e -> {
			resetpw.setStyle("-fx-text-fill: BLACK;");
		});

// HELP MENU 
		help.setAlignment(Pos.CENTER_LEFT);
		help.setUnderline(true);
		help.setOnMouseEntered(e -> {
			help.setCursor(Cursor.HAND);
			help.setStyle("-fx-text-fill:#840000;");
		});
		help.setOnMouseExited(e -> {
			help.setStyle("-fx-text-fill: BLACK;");
		});
		help.setOnMouseClicked(e -> {
			if (logInButton.getText() == "Kyçu")
				Help.ndihme();
			else {
				Help.help();
			}
		});

// BUTONI PER GJUHEN SHQIPE 	
		shqip.setUnderline(true);
		shqip.setOnMouseEntered(e -> {
			shqip.setCursor(Cursor.HAND);
			shqip.setStyle("-fx-text-fill:#840000;");
		});
		shqip.setOnMouseExited(e -> {
			shqip.setStyle("-fx-text-fill: BLACK;");
		});

//BUTONI PER GJUHEN ANGLEZE
		english.setUnderline(true);
		english.setOnMouseEntered(e -> {
			english.setCursor(Cursor.HAND);
			english.setStyle("-fx-text-fill:#840000;");
		});
		english.setOnMouseExited(e -> {
			english.setStyle("-fx-text-fill: BLACK;");
		});

		
