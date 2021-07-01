#include "tcpclient.h"
#include <QDebug>


TcpClient::TcpClient(QObject *parent) : QObject(parent)
{
    connect(&mSocket, &QTcpSocket::connected, this, &TcpClient::onConnected);
//    connect(&mSocket, &QTcpSocket::errorOccurred, this, &TcpClient::onErrorOccurred);
    connect(&mSocket, &QTcpSocket::readyRead, this, &TcpClient::onReadyRead);
}

void TcpClient::connectToServer(const QString &ip, const QString &port)
{
    mSocket.connectToHost(ip, port.toUInt());
}

void TcpClient::sendMessage(const QString &message)
{
    mSocket.write(message.toUtf8());
    mSocket.flush();
}

void TcpClient::onConnected()
{
    qDebug() << "Connected to host.";
}

void TcpClient::onReadyRead()
{
    const auto message = mSocket.readAll();
    emit newMessage(message);
}

void TcpClient::onErrorOccurred(QAbstractSocket::SocketError error)
{
    qWarning() << "Error:" << error;
}
