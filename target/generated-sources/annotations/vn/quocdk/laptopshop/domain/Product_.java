package vn.quocdk.laptopshop.domain;

import jakarta.annotation.Generated;
import jakarta.persistence.metamodel.EntityType;
import jakarta.persistence.metamodel.SingularAttribute;
import jakarta.persistence.metamodel.StaticMetamodel;

@StaticMetamodel(Product.class)
@Generated("org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
public abstract class Product_ {

	
	/**
	 * @see vn.quocdk.laptopshop.domain.Product#image
	 **/
	public static volatile SingularAttribute<Product, String> image;
	
	/**
	 * @see vn.quocdk.laptopshop.domain.Product#detailDesc
	 **/
	public static volatile SingularAttribute<Product, String> detailDesc;
	
	/**
	 * @see vn.quocdk.laptopshop.domain.Product#sold
	 **/
	public static volatile SingularAttribute<Product, Long> sold;
	
	/**
	 * @see vn.quocdk.laptopshop.domain.Product#factory
	 **/
	public static volatile SingularAttribute<Product, String> factory;
	
	/**
	 * @see vn.quocdk.laptopshop.domain.Product#quantity
	 **/
	public static volatile SingularAttribute<Product, Long> quantity;
	
	/**
	 * @see vn.quocdk.laptopshop.domain.Product#purpose
	 **/
	public static volatile SingularAttribute<Product, String> purpose;
	
	/**
	 * @see vn.quocdk.laptopshop.domain.Product#price
	 **/
	public static volatile SingularAttribute<Product, Double> price;
	
	/**
	 * @see vn.quocdk.laptopshop.domain.Product#name
	 **/
	public static volatile SingularAttribute<Product, String> name;
	
	/**
	 * @see vn.quocdk.laptopshop.domain.Product#shortDesc
	 **/
	public static volatile SingularAttribute<Product, String> shortDesc;
	
	/**
	 * @see vn.quocdk.laptopshop.domain.Product#id
	 **/
	public static volatile SingularAttribute<Product, Long> id;
	
	/**
	 * @see vn.quocdk.laptopshop.domain.Product
	 **/
	public static volatile EntityType<Product> class_;

	public static final String IMAGE = "image";
	public static final String DETAIL_DESC = "detailDesc";
	public static final String SOLD = "sold";
	public static final String FACTORY = "factory";
	public static final String QUANTITY = "quantity";
	public static final String PURPOSE = "purpose";
	public static final String PRICE = "price";
	public static final String NAME = "name";
	public static final String SHORT_DESC = "shortDesc";
	public static final String ID = "id";

}

