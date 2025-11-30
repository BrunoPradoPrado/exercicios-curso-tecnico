
public class Tela {
	public String tamanho;
	public String resoluçãoTela;
	
	public Tela() {
		this.tamanho="";
		this.resoluçãoTela="";
	}
	public Tela(String tamanho, String resolução) {
		this.tamanho=tamanho;
		this.resoluçãoTela=resolução;
	}
	
	public String getTamanho() {
		return tamanho;
	}
	public void setTamanho(String tamanho) {
		this.tamanho = tamanho;
	}
	public String getResolução() {
		return resoluçãoTela;
	}
	public void setResolução(String resolução) {
		this.resoluçãoTela = resolução;
	}
	
	
}
