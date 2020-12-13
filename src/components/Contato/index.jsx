import React from 'react';
import {useState, useEffect} from 'react';

const Contato = () => {

const [msg, setMsg] = useState ([]);

const [render, setRender] = useState (false);

const [alert, setAlert] = useState (false);

useEffect(async() => {
    const res = await fetch('http://localhost/backend/mensagemapi.php');
setMsg(await res.json())
}, [render])

function novaMensagem(event) {
    event.preventDefault();
    let form = new FormData(event.target);
    const url = "http://localhost/backend/enviomsg.php";
    fetch(url, { 
        method: "POST",
        body: form
    }).then((res) => res.json()).then((data) => 
    {
        setRender(!render);
        setAlert(data)

        setTimeout(() => {
            setAlert(false);
        }, 3000)
    })
    
}
    return(
        <>

    <main className="container mt-1">
        <div  className="container d-flex ">
            <div className="contatos w-25 mt-5">           
            </div>
            <div className="mt-5 ml-5 mb-5">    
            <form onSubmit={novaMensagem}>
                <div className="formulario w-75  mb-4">
                    <h3 className="text-info">Entre em contato conosco:</h3>
                    <label className="text">Nome:</label><br/>
                    <input  type="text" name="nome" placeholder="Nome"/><br/>
                    <br/> <label >Mensagem:</label>
                    <textarea className="w-75" type="text" name="msg" placeholder="Escreva sua mensagem"></textarea>
                </div>
                <button className="btn btn-outline-info form-control w-50" name="submit" value="Enviar">Enviar</button>
            </form>
                { alert && 
                    <div className="alert alert-success alert-dismissible fade show" role="alert">
                        Mensagem enviada com sucesso!
                        <button type="button" className="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div> 
                }
            </div>
        </div>
        <section className="container ml-5 mt-5 row justify-content-start ">
            { msg.map(item => {
            return(
                    <>
                        <div className="col-4">
                            <div key={item.id} className="container justify-content-center mx-auto card">
                                <div className="card-body">
                                    <h5 className="card-title">{item.nome}</h5>
                                    <p className="card-text">{item.msg}</p>
                                </div>
                            </div>
                        </div>
                    </>
                )})}
        </section>
    </main>
    </>
    )
}

export default Contato;