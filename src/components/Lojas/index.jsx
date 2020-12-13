import React from 'react';

const Lojas = () => {
    return(
        <>
        <header className="col-12 text-left mt-3">
                    <h2 className="text-info">Nossas lojas</h2>
                    <hr/>
                </header>
                <main className="container">
                    <div className="row justify-content-center">
                        <div className="card col-sm-12 col-lg-3 m-1">
                            <div className="card-body">
                                <h5 className="card-title text-info">São Paulo</h5>
                                <p className="card-text">Avenida das Nações, 505</p>
                                <p className="card-text">Centro</p>
                                <p className="card-text">(11)3685-0055</p>
                            </div>
                        </div>

                        <div className="card col-sm-12 col-lg-3 m-1">
                            <div className="card-body">
                                <h5 className="card-title text-info">Rio de Janeiro</h5>
                                <p className="card-text">Avenida Vargas, 405</p>
                                <p className="card-text">Centro</p>
                                <p className="card-text">(21)3425-3000</p>
                            </div>
                        </div>

                        <div className="card col-sm-12 col-lg-3 m-1">
                            <div className="card-body">
                                <h5 className="card-title text-info">Belo Horizonte</h5>
                                <p className="card-text">Avenida Prudente, 305</p>
                                <p className="card-text">Centro</p>
                                <p className="card-text">(31)3689-3000</p>
                            </div>
                        </div>
                    </div>
                </main>
            </>
        );
    }

export default Lojas;