.class public Lcom/acloud/stub/localmusic/data/MusicInfoData;
.super Ljava/lang/Object;
.source "MusicInfoData.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private dirPath:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private initial:C

.field private isCollect:Z

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private pinyin:Ljava/lang/String;

.field private totalTime:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect:Z

    .line 8
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->dirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInitial()C
    .locals 1

    .prologue
    .line 88
    iget-char v0, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->initial:C

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->totalTime:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->type:I

    return v0
.end method

.method public isCollect()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect:Z

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->album:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->artist:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setCollect(Z)V
    .locals 0
    .param p1, "isCollect"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->isCollect:Z

    .line 70
    return-void
.end method

.method public setDirPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->dirPath:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->id:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setInitial(C)V
    .locals 0
    .param p1, "initial"    # C

    .prologue
    .line 92
    iput-char p1, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->initial:C

    .line 93
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->name:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->path:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pinyin"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->pinyin:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setTotalTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalTime"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->totalTime:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/acloud/stub/localmusic/data/MusicInfoData;->type:I

    .line 77
    return-void
.end method
