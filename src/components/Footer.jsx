import Pag from './imagens/pagamento.jpg';
import React from 'react';
import './Produtos/styles.css';

const Footer = () => {
    return (
        <>                              
            <div className="media mt-1 rodape">
                <div className="media-body text-center">
                    <h5 className="mt-0 text-info">Formas de Pagamento</h5>
                    <img src={Pag} className="align-self-end img-fluid" alt="Formas de pagamento"/>
                </div>
            </div> 
        </>
    )
}

export default Footer;