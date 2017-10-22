.class Lcom/acloud/stub/localmusic/QtActivity$10;
.super Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;
.source "QtActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/localmusic/QtActivity;->updateArtistImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback",
        "<",
        "Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/localmusic/QtActivity;


# direct methods
.method constructor <init>(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;)V
    .locals 0
    .param p2, "$anonymous0"    # Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity$10;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    .line 1135
    invoke-direct {p0, p2}, Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/acloud/stub/localmusic/QtActivity$10;)Lcom/acloud/stub/localmusic/QtActivity;
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$10;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Lcom/acloud/network/http/HttpRequest$HttpError;)V
    .locals 0
    .param p1, "error"    # Lcom/acloud/network/http/HttpRequest$HttpError;

    .prologue
    .line 1193
    return-void
.end method

.method public onSuccess(Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;)V
    .locals 7
    .param p1, "data"    # Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;

    .prologue
    .line 1139
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;->getPicture()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$10;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mHttpDownloadServer:Lcom/acloud/network/http/HttpDownloadServer;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$52(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/network/http/HttpDownloadServer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;->getPicture()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$10;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {v2}, Lcom/acloud/stub/utils/PathUtils;->getArtistPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;->getImgsize()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/acloud/stub/localmusic/QtActivity$10$1;

    invoke-direct {v6, p0}, Lcom/acloud/stub/localmusic/QtActivity$10$1;-><init>(Lcom/acloud/stub/localmusic/QtActivity$10;)V

    .line 1141
    invoke-virtual/range {v0 .. v6}, Lcom/acloud/network/http/HttpDownloadServer;->downloadApkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;)V

    .line 1188
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;

    invoke-virtual {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity$10;->onSuccess(Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;)V

    return-void
.end method
