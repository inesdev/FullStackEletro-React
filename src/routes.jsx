import React from 'react';
import { Routes, Route } from 'react-router-dom';

import PaginaInicial from './Views/home';
import ListaProdutos from './Views/produtos';
import NossasLojas from './Views/lojas';
import Contatos from './Views/contato';
import NotFound from './Views/notfound';

const RoutesMain = () => {
    return(
        <Routes>
            <Route path="/" element={<PaginaInicial/>} />
            <Route path="/produtos" element={<ListaProdutos/>} />
            <Route path="/lojas" element={<NossasLojas/>} />
            <Route path="/contato" element={<Contatos/>} />
            <Route path="*" element={<NotFound/>} />
        </Routes>
    );
}

export default RoutesMain;