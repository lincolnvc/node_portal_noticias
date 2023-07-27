module.exports.formulario_inclusao_noticia = function(application, req, res) {
    res.render("admin/form_add_noticia", {validacao: {}, noticia: {}});
}

module.exports.noticia_salvar = function(application, req, res) {
    var noticia = req.body;

    req.assert('titulo', 'T�tulo � obrigat�rio').notEmpty();
    req.assert('resumo', 'Resumo � obrigat�rio').notEmpty();
    req.assert('resumo', 'Resumo deve conter entre 10 e 100 caracteres').len(10, 100);
    req.assert('autor', 'Autor � obrigat�rio').notEmpty();
    req.assert('data_noticia', 'Data do fato � obrigat�ria').notEmpty().isISO8601();
    req.assert('noticia', 'Not�cia � obrigat�ria').notEmpty();

    var erros = req.validationErrors();

    if (erros) {
        res.render("admin/form_add_noticia", {validacao: erros, noticia: noticia});
        return;
    }

    var connection = application.config.dbConnection();
    var noticiasModel = new application.app.models.NoticiasDAO(connection);

    noticiasModel.salvarNoticia(noticia, function(error, result){
        res.redirect('/noticias');
    })
}
