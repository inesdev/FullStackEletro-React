import React from 'react';
import { Link } from 'react-router-dom';
import logo from './imagens/logo.png';

const Header = () => {
    return (
            <>            
                <header>
                    <nav className="navbar navbar-expand-lg navbar-light bg-info">
                        <Link className="navbar-brand" to="/">
                            <img
                            src={logo}
                            width="60"
                            height="60"
                            className="d-inline-block align-top"
                            alt="Soccershop"
                            loading="lazy"/>
                        </Link>

                        <button
                            className="navbar-toggler"
                            type="button"
                            data-toggle="collapse"
                            data-target="#navbarNav"
                            aria-controls="navbarNav"
                            aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span className="navbar-toggler-icon"></span>
                        </button>

                        <div className="collapse navbar-collapse justify-content-end" id="navbarNav">
                            <ul className="navbar-nav">
                                <li className="nav-item">
                                    <Link className="nav-link text-white" to="/produtos">Produtos</Link>
                                </li>
                                <li className="nav-item">
                                    <Link className="nav-link text-white" to="/lojas">Lojas</Link>
                                </li>
                                <li className="nav-item">
                                    <Link className="nav-link text-white" to="/contato">Contato</Link>
                                </li>
                            </ul>
                        </div>
                    </nav>
             </header>
        </>
    )
}

export default Header;