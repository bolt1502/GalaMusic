.class Lcom/acloud/stub/localmusic/QtActivity$8;
.super Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;
.source "QtActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/localmusic/QtActivity;->updateLrc(Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/acloud/network/http/HttpRequest$HttpRequestCallback",
        "<",
        "Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/localmusic/QtActivity;

.field private final synthetic val$musicData:Lcom/acloud/stub/localmusic/data/MusicInfoData;


# direct methods
.method constructor <init>(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    .locals 0
    .param p2, "$anonymous0"    # Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity$8;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    iput-object p3, p0, Lcom/acloud/stub/localmusic/QtActivity$8;->val$musicData:Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 970
    invoke-direct {p0, p2}, Lcom/acloud/network/http/HttpRequest$HttpRequestCallback;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/acloud/stub/localmusic/QtActivity$8;)Lcom/acloud/stub/localmusic/QtActivity;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$8;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Lcom/acloud/network/http/HttpRequest$HttpError;)V
    .locals 0
    .param p1, "error"    # Lcom/acloud/network/http/HttpRequest$HttpError;

    .prologue
    .line 1021
    return-void
.end method

.method public onSuccess(Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;)V
    .locals 8
    .param p1, "data"    # Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;

    .prologue
    const/4 v6, 0x0

    .line 974
    if-eqz p1, :cond_0

    .line 975
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$8;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mHttpDownloadServer:Lcom/acloud/network/http/HttpDownloadServer;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$52(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/network/http/HttpDownloadServer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;->getResult()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/stub/localmusic/network/bean/ResMusic;

    invoke-virtual {v1}, Lcom/acloud/stub/localmusic/network/bean/ResMusic;->getLrcdownurl()Ljava/lang/String;

    move-result-object v1

    .line 976
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$8;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    invoke-static {v2}, Lcom/acloud/stub/utils/PathUtils;->getLrcPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity$8;->val$musicData:Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v4}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".lrc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 977
    invoke-virtual {p1}, Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;->getResult()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/acloud/stub/localmusic/network/bean/ResMusic;

    invoke-virtual {v5}, Lcom/acloud/stub/localmusic/network/bean/ResMusic;->getLrcsize()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/acloud/stub/localmusic/QtActivity$8$1;

    iget-object v7, p0, Lcom/acloud/stub/localmusic/QtActivity$8;->val$musicData:Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-direct {v6, p0, v7}, Lcom/acloud/stub/localmusic/QtActivity$8$1;-><init>(Lcom/acloud/stub/localmusic/QtActivity$8;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V

    .line 975
    invoke-virtual/range {v0 .. v6}, Lcom/acloud/network/http/HttpDownloadServer;->downloadApkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;)V

    .line 1015
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;

    invoke-virtual {p0, p1}, Lcom/acloud/stub/localmusic/QtActivity$8;->onSuccess(Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;)V

    return-void
.end method
