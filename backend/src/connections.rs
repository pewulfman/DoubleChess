
use crate::lobby::Lobby;
use actix::Addr;
use actix_web::{get, web::Data, web::Path, web::Payload, Error, HttpResponse, HttpRequest, web};
use actix_web_actors::ws;
use uuid::Uuid;
use crate::ws::ChessWs;

/// Start a new WebSocket session
#[get("/{group_id}")]
pub async fn connections(
    req: HttpRequest,
    stream: Payload,
    Path(group_id): Path<Uuid>,
    srv: Data<Addr<Lobby>>,
) -> Result<HttpResponse, Error> {
    let ws = ChessWs::new(
        group_id,
        srv.get_ref().clone(),
    );

    let resp = ws::start(ws, &req, stream)?;
    Ok(resp)
}
