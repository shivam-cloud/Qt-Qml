#ifndef TCPSERVER_H
#define TCPSERVER_H

#include <QObject>
#include <QTcpServer>
#include <QHash>
#include <QTcpSocket>
#include <QByteArray>

class TcpServer : public QObject
{
    Q_OBJECT
public:
    explicit TcpServer(QObject *parent = nullptr);

signals:
    void newMessage(const QByteArray &ba);

public slots:
    void sendMessage( QString &message);

private slots:
    void onNewConnection();
    void onReadyRead();
    void onClientDisconnected();
    void onNewMessage( QByteArray &buffer);

private:
    QString getClientKey( QTcpSocket *client);
private:
    QTcpServer mServer;
    QHash<QString, QTcpSocket*> mClients;
};

#endif // TCPSERVER_H
