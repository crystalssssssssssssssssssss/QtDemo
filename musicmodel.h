#ifndef MUSICMODEL_H
#define MUSICMODEL_H

#include <QObject>
#include <QAbstractListModel>

class MusicModel : public QAbstractListModel
{
    Q_OBJECT



public:
    enum Music_Role{
        nameRole = Qt::UserRole+1,
        songerRole,
        sectionRole,
        intervalRole
    };
    Q_ENUM(Music_Role)
    explicit MusicModel(QObject *parent = nullptr);

signals:


    // QAbstractItemModel interface
public:
    int rowCount(const QModelIndex & = QModelIndex()) const;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;
    QHash<int, QByteArray> roleNames() const;
    Q_INVOKABLE void setMusic();

private:
    struct Music{
        QString namem;
        QString songerm;
        QString sectionm;
        QString intervalm;
    };
    QList<Music> m_musics;
};

#endif // MUSICMODEL_H
