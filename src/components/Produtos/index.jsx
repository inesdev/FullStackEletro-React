import React, { useState, useEffect } from 'react';
import {Link} from 'react-router-dom';
import './styles.css';

const NossosProdutos = () => {

    function enter(event) {
        const img = event.target
        img.className = "card-img-top border border-info";
    }

    function out(event) {
        const img = event.target
        img.className = "card-img-top img-thumbnail";
    }

    const [prods, setProds] = useState([]);

    useEffect (async() => {
        const res = await fetch('http://localhost/backend/api.php');
        setProds(await res.json())

    }, [])

    function mostrar_categoria(categorias) {
        let elementos = document.getElementsByClassName('box-item');
        for(let i = 0; i < elementos.length; i++){
            if (categorias === elementos[i].id) {
                elementos[i].style="display: inline-block";
            } else {
                elementos[i].style="display:none";
            }
        }
    }

    function mostrar_todos() {
    let elementos = document.getElementsByClassName('box-item');
    for (let i=0; i<elementos.length; i++) {
        elementos[i].style = "display:inline-block";
        }
    }    

    return(
        <div>
            <div className="container-fluid">
            <h2 className="descricao">Nossos Produtos</h2>

            <hr/>
            <h3 className="descricao">Categorias</h3>
                <nav className="nav">
                    <ul className="list-group">
                    <li onClick={mostrar_todos} className="list-group-item box ">Todos (12)</li>
                    <li onClick={() => mostrar_categoria('panelas')} className="list-group-item box">Panelas (2)</li>
                    <li onClick={() => mostrar_categoria('liquidificadores')} className="list-group-item box">Liquidificadores (2)</li>
                    <li onClick={() => mostrar_categoria('sanduicheiras')} className="list-group-item box">Sanduicheiras (2)</li>
                    <li onClick={() => mostrar_categoria('ventiladores')} className="list-group-item box">Ventiladores (2)</li>
                    <li onClick={() => mostrar_categoria('aspiradores')} className="list-group-item box">Aspiradores (2)</li>
                    <li onClick={() => mostrar_categoria('centrifugas')} className="list-group-item box">Centrifugas (2)</li>
                    </ul>
                </nav>
            </div>

        <div className="containerp pl-5">
        <div className="row">       
        { prods.map(item => {
            return(
                <div key={item.id} id={item.categoria} className="box-item card col-sm-12 col-md-6 col-lg-3">
                    <img onMouseEnter={enter} onMouseLeave={out} src={item.img} className="card-img-top img-thumbnail"/>
                    <div className="card-body">
                        <h5 className="card-title descricao">{item.descricao}</h5>
                        <p className="card-text text-info precoa">{item.preco_antigo}</p>
                        <p className="preco">{item.preco_atual}</p>
                        <Link to="/contato"><button className="btn btn-info">Comprar</button></Link>
                    </div>
                </div>
                )})}
            </div>
        </div>
    </div>
    )
}

export default NossosProdutos;
