#include "tcpserver.h"
#include <QDebug>

TcpServer::TcpServer(QObject *parent) : QObject(parent)
{
    connect(&mServer, &QTcpServer::newConnection, this, &TcpServer::onNewConnection);
    connect(this, &TcpServer::newMessage, this, &TcpServer::onNewMessage);
    if(mServer.listen(QHostAddress::Any, 3500)) {
        qDebug() << "Listening ...";
    }
}

void TcpServer::sendMessage( QString &message)
{
    emit newMessage("Server: " + message.toUtf8());
}

void TcpServer::onNewConnection()
{
     auto client = mServer.nextPendingConnection();
    if(client == nullptr) {
        return;
    }

    qDebug() << "New client connected.";

    mClients.insert(this->getClientKey(client), client);

    connect(client, &QTcpSocket::readyRead, this, &TcpServer::onReadyRead);
    connect(client, &QTcpSocket::disconnected, this, &TcpServer::onClientDisconnected);
}

void TcpServer::onReadyRead()
{
    const auto client = qobject_cast<QTcpSocket*>(sender());

    if(client == nullptr) {
        return;
    }

    const auto message = this->getClientKey(client).toUtf8() + ":" + client->readAll();

    emit newMessage(message);
}

void TcpServer::onClientDisconnected()
{
     auto client = qobject_cast<QTcpSocket*>(sender());

    if(client == nullptr) {
        return;
    }

    mClients.remove(this->getClientKey(client));
}

void TcpServer::onNewMessage( QByteArray &buffer)
{
    for( auto &client : qAsConst(mClients)) {
        client->write(buffer);
        client->flush();
    }
}

QString TcpServer::getClientKey( QTcpSocket *client)
{
    return client->peerAddress().toString().append(":").append(QString::number(client->peerPort()));
}
