package com.car.utils;

import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;

public class ExcelReader {
	/*
	 * @Title: excelReader
	 * @Description: 读取excel文件
	 * @param @param 上传文件
	 * @param @param 实例对象
	 * @param @param 上传文件夹
	 * @param @param request对象
	 * @return List 返回类型
	 * @author Builder
	 */
	public static List<Object> excelReader(MultipartFile multipartFile ,Object object , String filePath,  HttpServletRequest request) throws IOException {
		ExcelReader reader = new ExcelReader();
		//url
		String fileUrl = reader.fileUpLoad(multipartFile, request, filePath);
		String path=request.getRealPath(filePath).replaceAll("\\\\", "/").replace(filePath,"");		
		String url = path +"\\"+ fileUrl;
		// 创建map集合
		Map<Integer, String> propertiesMap = new HashMap<Integer, String>();
		List<Object> list = new ArrayList<Object>();
		Class<? extends Object> class1 = object.getClass();
		// 实例属性名
		propertiesMap.put(-1, class1.getName());
		Field[] fields = class1.getDeclaredFields();
		for (int i = 0; i < fields.length; i++) {
			propertiesMap.put(i, fields[i].getName());
		}
		// --------------------------------------------------------
		FileInputStream excelFile = null;
		try {
			excelFile = new FileInputStream(url);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		reader.setInputStream(excelFile, url);
		if (url.toLowerCase().endsWith("xlsx")) {
			List<XSSFRow> rows = reader.readXSSFRows();
			// 赋值
			for (XSSFRow row : rows) {
				String[] values = reader.readCellsValue(row);
				Object obj = reader.genVOFromCells(propertiesMap, values);
				list.add(obj);
			}
		} else if (url.toLowerCase().endsWith("xls")) {
			List<HSSFRow> rows = reader.readHSSFRows();
			// 赋值
			for (HSSFRow row : rows) {
				String[] values = reader.readCellsValue(row);
				Object obj = reader.genVOFromCells(propertiesMap, values);
				list.add(obj);
			}
		}
		return list;
	}

	final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

	private FileInputStream inputStream;
	private HSSFWorkbook workbook;
	private XSSFWorkbook workbook2;
	private int sheetIndex;
	private String url;
	/**
	 * 开始读取数据行
	 */
	private int startRow = 0;
	/**
	 * 开始读取数据列
	 */
	private int startColumn = 0;

	/**
	 * 指定输入流 初始化WorkBook对象
	 */
	private void initWorkbook() {
		if (workbook == null) {
			try {
				// 读取2007版，以 .xlsx 结尾
				if (url.toLowerCase().endsWith("xlsx")) {
					workbook2 = new XSSFWorkbook(inputStream);
				}
				// 读取2003版，以 .xls 结尾
				else if (url.toLowerCase().endsWith("xls")) {
					workbook = new HSSFWorkbook(inputStream);
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 获取所有行
	 * 
	 * @return
	 */
	public List<HSSFRow> readHSSFRows() {
		HSSFSheet sheet = workbook.getSheetAt(sheetIndex);
		// 实际存在的行数
		int rows = sheet.getPhysicalNumberOfRows();
		List<HSSFRow> hssfRows = new ArrayList<HSSFRow>();

		for (int count = startRow; count <= rows - 1; count++) {
			HSSFRow row = sheet.getRow(count);
			if (row != null) {
				hssfRows.add(row);
			}
		}
		return hssfRows;
	}

	public List<XSSFRow> readXSSFRows() {
		XSSFSheet sheet = workbook2.getSheetAt(sheetIndex);
		// 实际存在的行数
		int rows = sheet.getPhysicalNumberOfRows();
		List<XSSFRow> xssfRows = new ArrayList<XSSFRow>();

		for (int count = startRow; count <= rows - 1; count++) {
			XSSFRow row = sheet.getRow(count);
			if (row != null) {
				xssfRows.add(row);
			}
		}
		return xssfRows;
	}

	/**
	 * 读取行数据
	 * 
	 * @param hssfRow
	 * @return
	 */
	public String[] readCellsValue(HSSFRow hssfRow) {

		int cells = hssfRow.getPhysicalNumberOfCells();// 列数
		// System.out.println("\nROW " + hssfRow.getRowNum() + " has " + cells +
		// " cell(s).");
		String[] cellValues = new String[cells];
		for (int counter = startColumn; counter < cells; counter++) {
			HSSFCell cell = hssfRow.getCell(counter);
			String value = null;
			switch (cell.getCellType()) {
			case HSSFCell.CELL_TYPE_FORMULA:
				value = cell.getCellFormula();
				break;
			case HSSFCell.CELL_TYPE_NUMERIC:
				value = String.valueOf(cell.getNumericCellValue());
				if (HSSFDateUtil.isCellDateFormatted(cell)) {
					Date date = cell.getDateCellValue();
					if (date != null) {
						value = format.format(date);
					} else {
						value = "";
					}
				} else {
					value = new DecimalFormat("0").format(cell.getNumericCellValue());
				}

				break;
			case HSSFCell.CELL_TYPE_STRING:
				value = cell.getStringCellValue();
				break;
			default:
				value = "9999";
			}
			cellValues[counter] = value;
		} // end for
		return cellValues;
	}

	public String[] readCellsValue(XSSFRow xssfRow) {

		int cells = xssfRow.getPhysicalNumberOfCells();// 列数
		// System.out.println("\nROW " + xssfRow.getRowNum() + " has " + cells +
		// " cell(s).");
		String[] cellValues = new String[cells];
		for (int counter = startColumn; counter < cells; counter++) {
			XSSFCell cell = xssfRow.getCell(counter);
			String value = null;
			switch (cell.getCellType()) {
			case HSSFCell.CELL_TYPE_FORMULA:
				value = cell.getCellFormula();
				break;
			case HSSFCell.CELL_TYPE_NUMERIC:
				value = String.valueOf(cell.getNumericCellValue());
				if (HSSFDateUtil.isCellDateFormatted(cell)) {
					Date date = cell.getDateCellValue();
					if (date != null) {
						value = format.format(date);
					} else {
						value = "";
					}
				} else {
					value = new DecimalFormat("0").format(cell.getNumericCellValue());
				}

				break;
			case HSSFCell.CELL_TYPE_STRING:
				value = cell.getStringCellValue();
				break;
			default:
				value = "9999";
			}
			cellValues[counter] = value;
		} // end for
		return cellValues;
	}

	/**
	 * 
	 * 根据传入的Map;将cell的数值依次对应赋值给对象属性
	 * 
	 * @param propertiesMap:格式為[-1:class,0:filedname1;1:filedname2.....]
	 *            其中：0代表第0个cell;1代表第1个cell
	 * @param cells
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public Object genVOFromCells(Map<Integer, String> propertiesMap, String cells[]) {
		// 存放对象属性描述信息
		Map<String, PropertyDescriptor> propMap = new HashMap<String, PropertyDescriptor>();
		Object obj = null;
		String className = propertiesMap.get(-1);
		Map properDesc = null;
		try {
			Class cls = Class.forName(className);
			obj = cls.newInstance();
			// 获取对象的描述信息
			BeanInfo bi = Introspector.getBeanInfo(cls);
			PropertyDescriptor[] pds = bi.getPropertyDescriptors();
			for (PropertyDescriptor p : pds) {
				propMap.put(p.getName(), p);
			}
			properDesc = BeanUtils.describe(obj);
			Set<Integer> keys = propertiesMap.keySet();
			Iterator<Integer> iter = keys.iterator();
			while (iter.hasNext()) {
				Integer index = iter.next();
				if (index.intValue() == -1) {
					continue;
				}
				String property = propertiesMap.get(index);
				if (properDesc.containsKey(property)) {
					// 获取对象类型
					Class<?> propertyType = propMap.get(property).getPropertyType();
					// System.out.println(property + ".class:" + propertyType);
					String value = cells[index];
					if (String.class.equals(propertyType)) {
						PropertyUtils.setProperty(obj, property, value);
					} else if (Date.class.equals(propertyType)) {
						Date d;
						try {
							d = format.parse(value);
						} catch (Exception e) {
							d = new Date();
						}
						PropertyUtils.setProperty(obj, property, d);
					} else if (int.class.equals(propertyType) || Integer.class.equals(propertyType)) {
						int i = 0;
						try {
							i = Integer.parseInt(value);
						} catch (NumberFormatException e) {
							i = 0;
						}
						PropertyUtils.setProperty(obj, property, i);
					} else if (double.class.equals(propertyType) || Double.class.equals(propertyType)) {
						double d = 0;
						try {
							d = Double.parseDouble(value);
						} catch (NumberFormatException e) {
							d = 0.0;
						}
						PropertyUtils.setProperty(obj, property, d);
					} else if (long.class.equals(propertyType) || Long.class.equals(propertyType)) {
						long l = 0;
						try {
							l = Long.parseLong(value);
						} catch (NumberFormatException e) {
							l = 0l;
						}
						PropertyUtils.setProperty(obj, property, l);
					} else if (float.class.equals(propertyType) || Float.class.equals(propertyType)) {
						float f = 0;
						try {
							f = Float.parseFloat(value);
						} catch (NumberFormatException e) {
							f = 0l;
						}
						PropertyUtils.setProperty(obj, property, f);
					} else {// boolean
						Boolean b = BooleanUtils.toBooleanObject(value);
						PropertyUtils.setProperty(obj, property, b);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return obj;
	}

	/**
	 * 设置输入流； 必须为Excel指定输入流
	 * 
	 * @param inputStream
	 * @param url
	 */
	public void setInputStream(FileInputStream inputStream, String url) {
		this.inputStream = inputStream;
		this.url = url;
		initWorkbook();
	}

	/**
	 * 设置读取sheet
	 * 
	 * @param sheetIndex
	 */
	public void setSheetIndex(int sheetIndex) {
		this.sheetIndex = sheetIndex;
	}

	/**
	 * 设置读取数据起始行 默认从0开始
	 * 
	 * @param startRow
	 */
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	/**
	 * 设置行数据，读取数据起始列 默认从0开始
	 * 
	 * @param startColumn
	 */
	public void setStartColumn(int startColumn) {
		this.startColumn = startColumn;
	}

	/**
	 * 文件上传
	 * 
	 * @return
	 * @throws IOException
	 */
	public String fileUpLoad(MultipartFile multipartFile, HttpServletRequest request, String filePath)
			throws IOException {
		// 获取文件名称
		String fileName = multipartFile.getOriginalFilename();

        // 存入磁盘的路径
        String path = request.getSession().getServletContext().getRealPath(filePath) + 
       		 File.separator + new SimpleDateFormat("yyyyMMdd").format(new Date()) + 
       		 File.separator + fileName;     
        //检查文件夹是否存在
        File dir = new File(request.getSession().getServletContext().getRealPath(filePath) + File.separator + new SimpleDateFormat("yyyyMMdd").format(new Date()) + File.separator);
        if (!dir.exists() || !dir.isDirectory()) {
       	 dir.mkdir();
        }
        String savePath = filePath.substring(1) + File.separator + new SimpleDateFormat("yyyyMMdd").format(new Date()) + File.separator;
        // 数据库存储路径
        String dbUrl = savePath + fileName;
         InputStream inputStream = multipartFile.getInputStream();
         // 写入本地磁盘
   FileOutputStream fileOutputStream = new FileOutputStream(path);
   byte buffer[] = new byte[4096];
   long fileSize = multipartFile.getSize();
   if(fileSize<=buffer.length){
       buffer = new byte[(int)fileSize];
   }
   int line =0;
   while((line = inputStream.read(buffer)) >0 )
   {
       fileOutputStream.write(buffer,0,line);
   }
   fileOutputStream.close();
   inputStream.close();
   return dbUrl;
	}
	
	
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
}