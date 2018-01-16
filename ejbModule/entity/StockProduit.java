package entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="produits_stock")
public class StockProduit implements Serializable {


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int codeStock;
	
	private int codePdt;
	
	private int qtePdt;
	
	public StockProduit() {}

	public StockProduit(int codePdt, int qtePdt) {
		super();
		this.codePdt = codePdt;
		this.qtePdt = qtePdt;
	}

	public int getCodeStock() {
		return codeStock;
	}

	public void setCodeStock(int codeStock) {
		this.codeStock = codeStock;
	}

	public int getCodePdt() {
		return codePdt;
	}

	public void setCodePdt(int codePdt) {
		this.codePdt = codePdt;
	}

	public int getQtePdt() {
		return qtePdt;
	}

	public void setQtePdt(int qtePdt) {
		this.qtePdt = qtePdt;
	}
	
	
	
	

}
