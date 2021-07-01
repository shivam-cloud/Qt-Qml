#ifndef TCPCLIENT_H
#define TCPCLIENT_H


#include <QObject>
#include <QTcpSocket>
#include <QAbstractSocket>

class TcpClient : public QObject
{
    Q_OBJECT
public:
    explicit TcpClient(QObject *parent = nullptr);

signals:
    void newMessage(const QByteArray &ba);

public slots:
    void connectToServer(const QString &ip, const QString &port);
    void sendMessage(const QString &message);

private slots:
    void onConnected();
    void onReadyRead();
    void onErrorOccurred(QAbstractSocket::SocketError error);

private:
    QTcpSocket mSocket;
};

#endif // TCPCLIENT_H
