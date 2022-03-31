#include "musicmodel.h"

MusicModel::MusicModel(QObject *parent)
    : QAbstractListModel{parent}
{

}

int MusicModel::rowCount(const QModelIndex &) const
{
    return m_musics.size();
}

QVariant MusicModel::data(const QModelIndex &index, int role) const
{
    if(!index.isValid()){
        return QVariant();
    }
    switch(role){
    case nameRole:return m_musics.at(index.row()).namem;
    case songerRole: return m_musics.at(index.row()).songerm;
    case sectionRole: return m_musics.at(index.row()).sectionm;
    case intervalRole: return m_musics.at(index.row()).intervalm;
    default:return QVariant();
    }

}

QHash<int, QByteArray> MusicModel::roleNames() const
{
    static const QHash<int,QByteArray> roles{
        {nameRole,"namem"},
        {songerRole,"songerm"},
        {sectionRole,"sectionm"},
        {intervalRole,"intervalm"}
    };
    return roles;
}

void MusicModel::setMusic()
{
    beginResetModel();
    m_musics.clear();
    m_musics.append({ "Angel Hogan", "Chapel St.", "Clearwater" , "03:28" });
    m_musics.append({ "Felicia Patton", "Annadale Lane", "Knoxville" , "03:33" });
    m_musics.append({ "Grant Crawford", "Windsor Drive", "Riverdale" , "03:51" });
    m_musics.append({ "Gretchen Little", "Sunset Drive", "Virginia Beach" , "03:43" });
    m_musics.append({ "Geoffrey Richards", "University Lane", "Trussville" , "04:23" });
    m_musics.append({ "Henrietta Chavez", "Via Volto San Luca", "Piobesi Torinese" , "03:22" });
    m_musics.append({ "Harvey Chandler", "North Squaw Creek", "Madisonville" , "03:43" });
    m_musics.append({ "Miguel Gomez", "Wild Rose Street", "Trussville" , "03:43" });
    m_musics.append({ "Norma Rodriguez", " Glen Eagles Street", "Buffalo" , "02:41" });
    m_musics.append({ "Shelia Ramirez", "East Miller Ave", "Pickerington" , "03:46" });
    m_musics.append({ "Stephanie Moss", "Piazza Trieste e Trento", "Roata Chiusani" , "03:53" });
    endResetModel();
}
