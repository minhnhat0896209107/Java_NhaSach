package bo;

import dao.HoaDonDao;


public class HoaDonBo {
	HoaDonDao hoaDonDao = new HoaDonDao();
	public boolean insertHoaDon(Long makh) throws Exception {
		return hoaDonDao.insertHoaDon(makh);
	}
	
	public Long getMaHoaDon() throws Exception{
		return hoaDonDao.getMaHoaDon();
	}
}
