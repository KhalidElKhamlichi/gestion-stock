package ejb;

import java.util.List;

import javax.ejb.Stateless;

import dao.ProduitDAO;
import entity.StockProduit;
import service.StockRemote;

/**
 * Session Bean implementation class Stock
 */
@Stateless
public class Stock implements StockRemote {

    /**
     * Default constructor. 
     */
    public Stock() {
        // TODO Auto-generated constructor stub
    }

	@Override
	public List<StockProduit> getProduits() {
		return ProduitDAO.getAll();		
	}

	@Override
	public boolean updateQte(int codePdt, int qteCmd) {
		StockProduit pdt = ProduitDAO.getProduit(codePdt);
		int newQte = pdt.getQtePdt() - qteCmd;
		if(newQte >= 0)
			return ProduitDAO.updateQte(pdt.getCodeStock(), newQte);
		else return false;
	}


}
