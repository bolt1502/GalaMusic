.class public Lcom/acloud/stub/localmusic/network/api/HttpAddressUtils;
.super Ljava/lang/Object;
.source "HttpAddressUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArtistImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "http://www.dorylist.com/api.php?m=newapi&a=searchartist"

    return-object v0
.end method

.method public static getArtistImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "artistName"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.dorylist.com/api.php?m=newapi&a=searchartist&name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLrcUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "http://www.dorylist.com/api.php?m=newapi&a=searchlrc"

    return-object v0
.end method

.method public static getLrcUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "artistName"    # Ljava/lang/String;
    .param p1, "musicName"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.dorylist.com/api.php?m=newapi&a=searchlrc&name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    const-string v1, "&artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
