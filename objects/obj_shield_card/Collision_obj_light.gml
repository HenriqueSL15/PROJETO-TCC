if(!drag){
	if(other.numeracao >= 1 && other.numeracao <= 5){
		y = 655
		if (other.numeracao == 1){
			x = x1
		}else if (other.numeracao == 2){
			x = x1 + incremento
		} else if (other.numeracao == 3){
			x = x1 + (incremento * 2)
		} else if (other.numeracao == 4){
			x = x1 + (incremento * 3)
		} else if (other.numeracao == 5){
			x = x1 + (incremento * 4)
		}
	}else if(other.numeracao > 5 && other.numeracao <= 10){
		y = 430
		if (other.numeracao == 6){
			x = x1
		}else if (other.numeracao == 7){
			x = x1 + incremento
		} else if (other.numeracao == 8){
			x = x1 + (incremento * 2)
		} else if (other.numeracao == 9){
			x = x1 + (incremento * 3)
		} else if (other.numeracao == 10){
			x = x1 + (incremento * 4)
		}
	}else{
		y = 205
		if (other.numeracao == 10){
			x = x1
		}else if (other.numeracao == 12){
			x = x1 + incremento
		} else if (other.numeracao == 13){
			x = x1 + (incremento * 2)
		} else if (other.numeracao == 14){
			x = x1 + (incremento * 3)
		} else if (other.numeracao == 15){
			x = x1 + (incremento * 4)
		}
	}
}