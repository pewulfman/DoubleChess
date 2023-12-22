extern crate actix_rt;
extern crate actix_web;
extern crate diesel;
extern crate dotenv;
extern crate env_logger;
extern crate juniper;
extern crate r2d2;
extern crate todos;

use std::{env, io};

use actix_web::{middleware, App, HttpServer, web::{self, Data}, Responder, HttpResponse};

use todos::db::{get_pool, PostgresPool};
// use todos::endpoints::graphql_endpoints;

#[actix_rt::main]
async fn main() -> std::io::Result<()> {
    println!("Hello, world!");
    logging_setup();

    // Instantiate a new connection pool
    let pool = get_pool();

    // Start up the server, passing in (a) the connection pool
    // to make it available to all endpoints and (b) the configuration
    // function that adds the /graphql logic.
    //  Débute la configuration du serveur HTTP en utilisant Actix-web
    //  Le mot-clé move capture les variables utilisées dans la fermeture (closure) par valeur.
    HttpServer::new(move || {
        App::new()
        // Ajoute des données (dans ce cas, une clone de la pool de connexions) à l'application, qui seront accessibles dans toute l'application
            .app_data(Data::new(pool.clone()))
            .route("/toast", web::get().to(perform_db_action))
            .route("/", web::get().to(perform_db_action))
            // Ajoute un middleware de journalisation par défaut pour enregistrer les requêtes et les réponses
            .wrap(middleware::Logger::default())
            // .configure(graphql_endpoints)
    })
    .bind("127.0.0.1:4000")?
    .run()
    .await
}

// TODO: more fine-grained logging setup
fn logging_setup() {
    env::set_var("RUST_LOG", "debug");
    env_logger::init();
}

async fn perform_db_action(pool: web::Data<PostgresPool>) -> impl Responder {
    HttpResponse::Ok().body("Action performed on DB")
}