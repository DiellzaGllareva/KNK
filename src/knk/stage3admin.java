package knk;
import java.sql.*;
import java.util.List;
import javafx.application.Application;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class stage3admin {

	private static Stage mainstage;
	private static Stage mainStage;
	private static Stage primaryStage = new Stage();
	// Text fields
	private static TextField idField = new TextField();
	private static TextField subjectField = new TextField();
	private static TextField ectsField = new TextField();
	private static TextField profField = new TextField();
	private static TextField assField = new TextField();
	private static TextField LditaField = new TextField();
	private static TextField LoraField = new TextField();
	private static TextField LsallaField = new TextField();
	private static TextField UditaField = new TextField();
	private static TextField UoraField = new TextField();
	private static TextField UsallaField = new TextField();
	private static TextField nstudField = new TextField();
	private static TextField departamentiField = new TextField();
	private static TextField semField = new TextField();
	private static TextField grupiField = new TextField();
	
	
	// Buttons
	private static Button insertBtn = new Button("Insert");
	private static Button updateBtn = new Button("Update");
	private static Button deleteBtn = new Button("Delete");
	private static Button clearBtn = new Button("Clear");
	private static Button logoutBtn = new Button("LogOut");
	
	
	// Table views
	@SuppressWarnings("rawtypes")
	private static TableView OrariTbl = new TableView();
	
	
	
	public static void adminStage(Stage stage3admin)  {
		
		mainstage = stage3admin;
		// Form pane
		GridPane formPane = new GridPane();
		
		
		formPane.addRow(0, new Label("ID: "), idField);
		formPane.addRow(1, new Label("Lenda: "), subjectField);
		formPane.addRow(2, new Label("Ects: "), ectsField);
		formPane.addRow(3, new Label("Profesori: "), profField);
		formPane.addRow(4, new Label("Assistenti: "), assField);
		formPane.addRow(5, new Label("Ligj/Dita: "), LditaField);
		formPane.addRow(6, new Label("Ligj/Ora: "), LoraField);
		formPane.addRow(7, new Label("Ligj/Salla: "), LsallaField);
		formPane.addRow(8, new Label("Usht/Dita: "), UditaField);
		formPane.addRow(9, new Label("Usht/Ora: "), UoraField);
		formPane.addRow(10, new Label("Usht/Salla: "), UsallaField);
		formPane.addRow(11, new Label("Niveli stud:"), nstudField);
		formPane.addRow(12, new Label("Departamenti:"), departamentiField);
		formPane.addRow(13, new Label("Semestri:"), semField);
		formPane.addRow(14, new Label("Grupi:"), grupiField);
		
		formPane.setHgap(10);
		formPane.setVgap(10);
		
		idField.setDisable(true);
		
		// Buttons pane
		HBox buttonsPane = new HBox(10);
		
		buttonsPane.getChildren().addAll(insertBtn, updateBtn, deleteBtn, clearBtn,logoutBtn);
		
		logoutBtn.setOnAction(e ->{
			stage3admin.close();
		
		});
		
		insertBtn.setOnAction(e -> {
			insertOrari();
		});
		
		clearBtn.setOnAction(e -> {
			clearOrari();
		});
		updateBtn.setOnAction(e -> {
			updateOrari(Integer.parseInt(idField.getText()),
						subjectField.getText(),
					  Integer.parseInt(ectsField.getText()),
					  profField.getText(),
					  assField.getText(),
					  LditaField.getText(),
					  LoraField.getText(),
					  Integer.parseInt(LsallaField.getText()),
					  UditaField.getText(),
					  UoraField.getText(),
					  Integer.parseInt(UsallaField.getText()),
					  nstudField.getText(),
					  departamentiField.getText(),
					  semField.getText(),
					  grupiField.getText()
					 
					  );
			{
				showOrari();
				clearOrari();
			}
		});
		deleteBtn.setOnAction(e -> {
			deleteOrari(Integer.parseInt(idField.getText()));
		});
		// Left Pane
		
		VBox leftPane = new VBox(15);
		
		leftPane.getChildren().addAll(formPane, buttonsPane);
		
		@SuppressWarnings("rawtypes")
		TableColumn teacher = new TableColumn("Mesimdhenesi");
		TableColumn ligjeratacol = new TableColumn("Ligjerata");
		TableColumn ushtrimecol = new TableColumn("Ushtrime");
		// Books table
		TableColumn<String, Orari> column1 = new TableColumn<>("ID:");
		column1.setCellValueFactory(new PropertyValueFactory("id"));
		column1.setPrefWidth(60);
		
		TableColumn<String, Orari> column2 = new TableColumn<>("Lendet");
		column2.setCellValueFactory(new PropertyValueFactory("titlenda"));
		column2.setPrefWidth(60);
