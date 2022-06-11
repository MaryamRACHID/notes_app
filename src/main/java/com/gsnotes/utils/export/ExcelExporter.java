package com.gsnotes.utils.export;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import com.gsnotes.bo.Element;
import com.gsnotes.web.models.ExporterModel;
import javassist.bytecode.CodeIterator;
import org.apache.poi.ss.formula.Formula;
import org.apache.poi.ss.formula.functions.T;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFFormulaEvaluator;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.tomcat.jni.File;

import static java.lang.Double.parseDouble;
import static java.lang.Integer.parseInt;
import static org.apache.poi.ss.usermodel.Cell.*;


public class ExcelExporter {

	private XSSFWorkbook workbook;
	private XSSFSheet sheet;

	private List<Element> columnNames;
	private String[][] data;

	private String[] headerData;
	private String sheetName = "";

	public ExcelExporter(List columnNames, String[] headerData, String[][] data, String sheetName) {
		this.headerData = headerData;
		this.data = data;
		this.columnNames = columnNames;
		this.sheetName = sheetName;
		workbook = new XSSFWorkbook();

	}

	private void writeHeaderLine() {
		sheet = workbook.createSheet(sheetName);

		Row row = sheet.createRow(0);
		Row row1=sheet.createRow(1);
		Row row2=sheet.createRow(3);

		row.setHeight((short) 550);
		row1.setHeight((short) 550);
		row2.setHeight((short) 550);

		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setBold(true);
		font.setFontHeight(16);
		style.setFont(font);
		style.setAlignment(HorizontalAlignment.CENTER);

		XSSFFont font1 = workbook.createFont();
		font.setFontHeight(14);
		style.setFont(font1);
		// Workbook workbook1 = new XSSFWorkbook();

		// Create a blank sheet
		Sheet sheet = workbook.createSheet("student Details");

		// Create header CellStyle
		Font headerFont = workbook.createFont();
		headerFont.setColor(IndexedColors.WHITE.index);
		CellStyle headerCellStyle = sheet.getWorkbook().createCellStyle();
		headerCellStyle.setAlignment(HorizontalAlignment.CENTER);
		CellStyle headerCellStyle1 = sheet.getWorkbook().createCellStyle();
		headerCellStyle1.setAlignment(HorizontalAlignment.CENTER);
		CellStyle headerCellStyle2 = sheet.getWorkbook().createCellStyle();
		headerCellStyle2.setAlignment(HorizontalAlignment.CENTER);

		// fill foreground color ...
		headerCellStyle.setFillForegroundColor(IndexedColors.LIGHT_GREEN.index);
		headerCellStyle1.setFillForegroundColor(IndexedColors.AQUA .index);
		headerCellStyle2.setFillForegroundColor(IndexedColors.TAN .index);

		// and solid fill pattern produces solid grey cell fill
		headerCellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		headerCellStyle1.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		headerCellStyle2.setFillPattern(FillPatternType.SOLID_FOREGROUND);

		headerCellStyle.setFont(font);
		headerCellStyle1.setFont(font);




		createCell(row, 0, "Module", headerCellStyle2);
		createCell(row, 1, headerData[0], headerCellStyle2);
		createCell(row, 2, "Semestre", headerCellStyle);
		createCell(row, 3, headerData[1], headerCellStyle);
		createCell(row, 4, "Annee", headerCellStyle);
		createCell(row, 5, headerData[2], headerCellStyle);



		createCell(row1, 0, "Enseignant", headerCellStyle2);
		createCell(row1, 1, headerData[3], headerCellStyle2);
		createCell(row1, 2, "Session", headerCellStyle);
		createCell(row1, 3, headerData[4], headerCellStyle);
		createCell(row1, 4, "Classe", headerCellStyle);
		createCell(row1, 5, headerData[5], headerCellStyle); //niveau



		createCell(row2, 0, "ID", headerCellStyle1);
		createCell(row2, 1, "CNE", headerCellStyle1);
		createCell(row2, 2, "Nom", headerCellStyle1);
		createCell(row2, 3, "Prenom", headerCellStyle1);

		for(int i = 0; i < columnNames.size(); i++){
			createCell(row2,i+4,columnNames.get(i).getNom(),headerCellStyle1);
		}
		createCell(row2, columnNames.size()+4, "Moyenne", headerCellStyle1);
		createCell(row2, columnNames.size()+5, "Validation", headerCellStyle1);


	}


	private void createCell(Row row, int columnCount, Object value, CellStyle style) {
		sheet.autoSizeColumn(columnCount);
		Cell cell = row.createCell(columnCount);
		if (value instanceof Integer) {
			cell.setCellValue((Integer) value);
		} else if (value instanceof Boolean) {
			cell.setCellValue((Boolean) value);
		} else {
			cell.setCellValue((String) value);
		}
		cell.setCellStyle(style);
	}

	private String getColumnName(int n){
		StringBuilder name = new StringBuilder();
		while (n>0){
			int index = (n-1)%26;
			name.append((char) (index+'A'));
			n = (n-1) / 26;
		}
		return name.reverse().toString();
	}

	private void writeDataLines() {
		int rowCount = 4;

		CellStyle style = workbook.createCellStyle();
		CellStyle style1 = workbook.createCellStyle();
		style1.setAlignment(HorizontalAlignment.CENTER);
		XSSFFont font = workbook.createFont();
		font.setFontHeight(14);
		style.setFont(font);

		for (int i = 0; i < data.length; i++) {
			Row row = sheet.createRow(rowCount++);
			row.setHeight((short) 400);
			int columnCount = 0;
			for (int j = 0; j < data[i].length; j++) {
				createCell(row, columnCount++, data[i][j], style);
			}
			int columnCount2 = 4;
			for(int j = 0; j<columnNames.size()+2; j++){
				Cell cell = row.createCell(columnCount2);
				columnCount2++;
				if(columnCount2==columnNames.size()+5){
					CellReference cellReference = new CellReference(cell);
					String thisR = cellReference.getCellRefParts()[1];
					String formula = "SUM(";
					for (int k = 0; k<columnNames.size(); k++){
						formula+=getColumnName(5+k)+thisR+"*"+columnNames.get(k).getCurrentCoefficient();
						if(k!=columnNames.size()-1){
							formula+=",";
						}
					}
					formula+=")";
					//cell.setCellValue(formula);
					cell.setCellFormula(formula);
					System.out.println(formula);
					XSSFFormulaEvaluator formulaEvaluator = workbook.getCreationHelper().createFormulaEvaluator();
					formulaEvaluator.evaluateFormulaCell(cell);

				}
			}
			//Cell cellMoyenne = row.createCell(columnNames.size()+4);
			//CellReference cellReference = new CellReference(cellMoyenne);
			//String thisRow = cellReference.getCellRefParts()[1];
			//String formula = "SUM(";

			//cellMoyenne.setCellFormula(formula);
			//XSSFFormulaEvaluator formulaEvaluator = workbook.getCreationHelper().createFormulaEvaluator();
			//formulaEvaluator.evaluateFormulaCell(cellMoyenne);


		}
			//	if (columnCount2==7){
			//		int k=i+5;
			//		String formula = "SUM(E"+k+"*"+headerData[8]+",F"+k+"*"+headerData[9]+")";
			//		cell.setCellFormula(formula);
			//		XSSFFormulaEvaluator formulaEvaluator = workbook.getCreationHelper().createFormulaEvaluator();
			//		formulaEvaluator.evaluateFormulaCell(cell);
			//	}
			//	if (columnCount2==8){
			//		int k=i+5;
			//		String v = "v";
			//		String r = "r";
					//String formula = "=IF(8>7,\"7\",\"4\")";
					//cell.setCellFormula(formula);
					//XSSFFormulaEvaluator formulaEvaluator = workbook.getCreationHelper().createFormulaEvaluator();
					//formulaEvaluator.evaluateFormulaCell(cell);
			//	}
			//}

		}
		//for (int i=0; i<headerData.length; i++){
		//	sheet.autoSizeColumn(i);




	public void export(HttpServletResponse response) throws IOException {
		writeHeaderLine();
		writeDataLines();

		ServletOutputStream outputStream = response.getOutputStream();
		workbook.write(outputStream);
		workbook.close();

		outputStream.close();

	}
}
