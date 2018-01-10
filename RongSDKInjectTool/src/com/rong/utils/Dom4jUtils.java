/**   
 * @Title: Dom4jUtils.java 
 * @Package com.rong.utils 
 * @Description: TODO(用一句话描述该文件做什么) 
 * @author peijueer   
 * @date 2017-12-26 上午10:19:51 
 * @version V1.0   
 */
package com.rong.utils;

import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import com.rong.bean.ChannelBean;

/**
 * @ClassName: Dom4jUtils
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author peijueer
 * @date 2017-12-26 上午10:19:51
 * 
 */
public class Dom4jUtils {
	public static final String PACKAGE = "package";
	public static final String APPLICATION = "application";
	public static final String NAME = "name";
	public static final String PUBLICXML = "public.xml";
	public static final String TYPE = "type";
	public static final String ID = "id";
	public static final String DRAWABLE = "drawable";
	public static final String LAYOUT = "layout";
	public static final String STRING = "string";
	public static final String STYLE = "style";
	public static final String ANIM = "anim";
	public static final String RAW = "raw";
	public static final String COLOR = "color";
	public static final String DIMEN = "dimen";
	public static final String CHANNELDEFAULT = ".mzw";

	/**
	 * @Title: changePackageName
	 * @Description: 修改游戏包名，为对应子渠道为结尾
	 * @param @param mainFestPath
	 * @param @param channelBean 设定文件
	 * @return void 返回类型
	 * @throws
	 */
	public static void changePackageName(String mainFestPath, ChannelBean channelBean) {
		SAXReader reader = new SAXReader();
		try {
			Document document = reader.read(new File(mainFestPath));
			Element rootElement = document.getRootElement();
			String srcPackage = rootElement.attribute(PACKAGE).getValue();
			
			String finalPackage = srcPackage;
			if (srcPackage.endsWith(CHANNELDEFAULT)) {
				finalPackage = srcPackage.substring(srcPackage.length() - 3) + channelBean.getChannelId();
			} else if (srcPackage.endsWith("." + channelBean.getChannelId())) {
				finalPackage = srcPackage;
			}else{
				finalPackage = srcPackage + "." + channelBean.getChannelId();
			}

			rootElement.attribute(PACKAGE).setValue(finalPackage);

			Element applicationElement = rootElement.element(APPLICATION);
			List<Attribute> applicationAttributes = applicationElement.attributes();
			for (Attribute attribute : applicationAttributes) {
				if (NAME.equals(attribute.getName()) && attribute.getValue().startsWith(".")) {
					String newValue = finalPackage + attribute.getValue();
					attribute.setValue(newValue);
				}
			}

			List<Element> applicationChildElements = applicationElement.elements();
			for (Element childElement : applicationChildElements) {
				List<Attribute> childElementAttributes = childElement.attributes();
				for (Attribute attribute : childElementAttributes) {
					if (NAME.equals(attribute.getName()) && attribute.getValue().startsWith(".")) {
						String newValue = finalPackage + attribute.getValue();
						attribute.setValue(newValue);
					}
				}
			}

			FileWriter writer = new FileWriter(new File(mainFestPath));
			document.write(writer);
			writer.flush();
			writer.close();
		} catch (Exception e) {
			System.out.println("changePackageName error" + e.toString());
			e.printStackTrace();
		}
	}

	/**
	 * @Title: addPermission
	 * @Description: 添加子渠道要求的权限
	 * @param @param mainFestPath
	 * @param @param filePath
	 * @param @param channelBean 设定文件
	 * @return void 返回类型
	 * @throws
	 */
	public static void addPermission(String mainFestPath, String filePath, ChannelBean channelBean) {
		SAXReader reader = new SAXReader();
		try {
			Document document = reader.read(new File(mainFestPath));
			Element rootElement = document.getRootElement();

			Document permissionDocument = reader.read(new File(filePath));
			Element permissionRootElement = permissionDocument.getRootElement();
			List<Element> permissionElements = permissionRootElement.elements();
			for (Element permissionElement : permissionElements) {
				rootElement.add((Element) permissionElement.clone());
			}

			FileWriter writer = new FileWriter(new File(mainFestPath));
			document.write(writer);
			writer.flush();
			writer.close();
		} catch (Exception e) {
			System.out.println("addPermission error" + e.toString());
			e.printStackTrace();
		}
	}

	/**
	 * @Title: addComponents
	 * @Description: 添加子渠道要求的组件信息
	 * @param @param mainFestPath
	 * @param @param filePath
	 * @param @param channleBean 设定文件
	 * @return void 返回类型
	 * @throws
	 */
	public static void addComponents(String mainFestPath, String filePath, ChannelBean channleBean) {
		SAXReader reader = new SAXReader();
		try {
			Document document = reader.read(new File(mainFestPath));
			Element rootElement = document.getRootElement();
			Element applicationElement = rootElement.element(APPLICATION);

			Document componentsDocument = reader.read(new File(filePath));
			Element componentsRootElement = componentsDocument.getRootElement();
			List<Element> componentsElements = componentsRootElement.elements();
			for (Element componentsElement : componentsElements) {
				applicationElement.add((Element) componentsElement.clone());
			}

			FileWriter writer = new FileWriter(new File(mainFestPath));
			document.write(writer);
			writer.flush();
			writer.close();
		} catch (Exception e) {
			System.out.println("addComponents error" + e.toString());
			e.printStackTrace();
		}
	}

	/**
	 * @Title: modifyPublic
	 * @Description: 修改public文件
	 * @param @param filePath
	 * @param @param channelBean 设定文件
	 * @return void 返回类型
	 * @throws
	 */
	public static void modifyPublic(String filePath, ChannelBean channelBean) {
		SAXReader reader = new SAXReader();
		try {
			Document document = reader.read(new File(filePath + "/" + channelBean.getChannelId() + "_" + PUBLICXML));
			Element rootElement = document.getRootElement();

			Document publicDocument = reader.read(new File(filePath + "/" + PUBLICXML));
			Element publicRootElement = publicDocument.getRootElement();
			List<Element> publicElements = publicRootElement.elements();
			List<Element> publicDrawableElements = new ArrayList<Element>();
			List<Element> publicLayoutElements = new ArrayList<Element>();
			List<Element> publicStringElements = new ArrayList<Element>();
			List<Element> publicStyleElements = new ArrayList<Element>();
			List<Element> publicAnimElements = new ArrayList<Element>();
			List<Element> publicRawElements = new ArrayList<Element>();
			List<Element> publicColorElements = new ArrayList<Element>();
			List<Element> publicIdElements = new ArrayList<Element>();
			List<Element> publicDimenElements = new ArrayList<Element>();

			for (Element publicElement : publicElements) {
				if (DRAWABLE.equals(publicElement.attribute(TYPE).getValue())) {
					publicDrawableElements.add(publicElement);
				} else if (LAYOUT.equals(publicElement.attribute(TYPE).getValue())) {
					publicLayoutElements.add(publicElement);
				} else if (STRING.equals(publicElement.attribute(TYPE).getValue())) {
					publicStringElements.add(publicElement);
				} else if (STYLE.equals(publicElement.attribute(TYPE).getValue())) {
					publicStyleElements.add(publicElement);
				} else if (ANIM.equals(publicElement.attribute(TYPE).getValue())) {
					publicAnimElements.add(publicElement);
				} else if (RAW.equals(publicElement.attribute(TYPE).getValue())) {
					publicRawElements.add(publicElement);
				} else if (COLOR.equals(publicElement.attribute(TYPE).getValue())) {
					publicColorElements.add(publicElement);
				} else if (ID.equals(publicElement.attribute(TYPE).getValue())) {
					publicIdElements.add(publicElement);
				} else if (DIMEN.equals(publicElement.attribute(TYPE).getValue())) {
					publicDimenElements.add(publicElement);
				}
			}

			int drawableMaxId = getMaxIdValue(publicDrawableElements);
			int layoutMaxId = getMaxIdValue(publicLayoutElements);
			int stringMaxId = getMaxIdValue(publicStringElements);
			int styleMaxId = getMaxIdValue(publicStyleElements);
			int animMaxId = getMaxIdValue(publicAnimElements);
			int rawMaxId = getMaxIdValue(publicRawElements);
			int colorMaxId = getMaxIdValue(publicColorElements);
			int idMaxId = getMaxIdValue(publicIdElements);
			int dimenMaxId = getMaxIdValue(publicDimenElements);

			int maxId = getMaxIdValue(publicIdElements);

			System.out.println("drawableMaxId-->" + Integer.toHexString(drawableMaxId));
			System.out.println("layoutMaxId-->" + Integer.toHexString(layoutMaxId));
			System.out.println("stringMaxId-->" + Integer.toHexString(stringMaxId));
			System.out.println("styleMaxId-->" + Integer.toHexString(styleMaxId));
			System.out.println("animMaxId-->" + Integer.toHexString(animMaxId));
			System.out.println("rawMaxId-->" + Integer.toHexString(rawMaxId));
			System.out.println("colorMaxId-->" + Integer.toHexString(colorMaxId));
			System.out.println("idMaxId-->" + Integer.toHexString(idMaxId));
			System.out.println("dimenMaxId-->" + Integer.toHexString(dimenMaxId));
			System.out.println("maxId-->" + Integer.toHexString(maxId));

			List<Element> channelElements = rootElement.elements();
			for (Element element : channelElements) {
				if (DRAWABLE.equals(element.attribute(TYPE).getValue())) {
					if (drawableMaxId == 0) {
						drawableMaxId = maxId + 16 * 16 * 16 * 16;
						maxId = maxId + 16 * 16 * 16 * 16;
					}
					element.attribute(ID).setValue("0x" + Integer.toHexString(drawableMaxId + 1));
					drawableMaxId = drawableMaxId + 1;
				} else if (LAYOUT.equals(element.attribute(TYPE).getValue())) {
					if (layoutMaxId == 0) {
						layoutMaxId = maxId + 16 * 16 * 16 * 16;
						maxId = maxId + 16 * 16 * 16 * 16;
					}
					element.attribute(ID).setValue("0x" + Integer.toHexString(layoutMaxId + 1));
					layoutMaxId = layoutMaxId + 1;
				} else if (STRING.equals(element.attribute(TYPE).getValue())) {
					if (stringMaxId == 0) {
						stringMaxId = maxId + 16 * 16 * 16 * 16;
						maxId = maxId + 16 * 16 * 16 * 16;
					}
					element.attribute(ID).setValue("0x" + Integer.toHexString(stringMaxId + 1));
					stringMaxId = stringMaxId + 1;
				} else if (STYLE.equals(element.attribute(TYPE).getValue())) {
					if (styleMaxId == 0) {
						styleMaxId = maxId + 16 * 16 * 16 * 16;
						maxId = maxId + 16 * 16 * 16 * 16;
					}
					element.attribute(ID).setValue("0x" + Integer.toHexString(styleMaxId + 1));
					styleMaxId = styleMaxId + 1;
				} else if (ANIM.equals(element.attribute(TYPE).getValue())) {
					if (animMaxId == 0) {
						animMaxId = maxId + 16 * 16 * 16 * 16;
						maxId = maxId + 16 * 16 * 16 * 16;
					}
					element.attribute(ID).setValue("0x" + Integer.toHexString(animMaxId + 1));
					animMaxId = animMaxId + 1;
				} else if (RAW.equals(element.attribute(TYPE).getValue())) {
					if (rawMaxId == 0) {
						rawMaxId = maxId + 16 * 16 * 16 * 16;
						maxId = maxId + 16 * 16 * 16 * 16;
					}
					element.attribute(ID).setValue("0x" + Integer.toHexString(rawMaxId + 1));
					rawMaxId = rawMaxId + 1;
				} else if (COLOR.equals(element.attribute(TYPE).getValue())) {
					if (colorMaxId == 0) {
						colorMaxId = maxId + 16 * 16 * 16 * 16;
						maxId = maxId + 16 * 16 * 16 * 16;
					}
					element.attribute(ID).setValue("0x" + Integer.toHexString(colorMaxId + 1));
					colorMaxId = colorMaxId + 1;
				} else if (ID.equals(element.attribute(TYPE).getValue())) {
					if (idMaxId == 0) {
						idMaxId = maxId + 16 * 16 * 16 * 16;
						maxId = maxId + 16 * 16 * 16 * 16;
					}
					element.attribute(ID).setValue("0x" + Integer.toHexString(idMaxId + 1));
					idMaxId = idMaxId + 1;
				} else if (DIMEN.equals(element.attribute(TYPE).getValue())) {
					if (dimenMaxId == 0) {
						dimenMaxId = maxId + 16 * 16 * 16 * 16;
						maxId = maxId + 16 * 16 * 16 * 16;
					}
					element.attribute(ID).setValue("0x" + Integer.toHexString(dimenMaxId + 1));
					dimenMaxId = dimenMaxId + 1;
				}
			}

			FileWriter writer = new FileWriter(new File(filePath + "/" + channelBean.getChannelId() + "_" + PUBLICXML));
			document.write(writer);
			writer.flush();
			writer.close();
		} catch (Exception e) {
			System.out.println("modifyPublic error" + e.toString());
			e.printStackTrace();
		}
	}

	/**
	 * @Title: getMaxIdValue
	 * @Description: 获取资源ID最大值
	 * @param @param elements
	 * @param @return 设定文件
	 * @return int 返回类型
	 * @throws
	 */
	public static int getMaxIdValue(List<Element> elements) {
		int maxIdValue = 0;
		if (elements.size() > 0) {
			Collections.sort(elements, new Comparator<Element>() {

				@Override
				public int compare(Element o1, Element o2) {
					String o1Id = o1.attribute(ID).getValue();
					String o2Id = o2.attribute(ID).getValue();

					int o1IdInt = Integer.parseInt(o1Id.substring(2), 16);
					int o2IdInt = Integer.parseInt(o2Id.substring(2), 16);

					return o1IdInt - o2IdInt;
				}
			});
			Element maxElement = elements.get(elements.size() - 1);
			String maxId = maxElement.attribute(ID).getValue();
			maxIdValue = Integer.parseInt(maxId.substring(2), 16);
		}

		return maxIdValue;
	}
}
