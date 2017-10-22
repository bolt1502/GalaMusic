.class Lcom/acloud/stub/localmusic/QtActivity$8$1;
.super Ljava/lang/Object;
.source "QtActivity.java"

# interfaces
.implements Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/localmusic/QtActivity$8;->onSuccess(Lcom/acloud/stub/localmusic/network/bean/ResSearchLrc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/acloud/stub/localmusic/QtActivity$8;

.field private final synthetic val$musicData:Lcom/acloud/stub/localmusic/data/MusicInfoData;


# direct methods
.method constructor <init>(Lcom/acloud/stub/localmusic/QtActivity$8;Lcom/acloud/stub/localmusic/data/MusicInfoData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity$8$1;->this$1:Lcom/acloud/stub/localmusic/QtActivity$8;

    iput-object p2, p0, Lcom/acloud/stub/localmusic/QtActivity$8$1;->val$musicData:Lcom/acloud/stub/localmusic/data/MusicInfoData;

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(JLjava/lang/String;)V
    .locals 0
    .param p1, "nCurDownSize"    # J
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 1004
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorString"    # Ljava/lang/String;

    .prologue
    .line 1012
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 993
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$8$1;->val$musicData:Lcom/acloud/stub/localmusic/data/MusicInfoData;

    invoke-virtual {v0}, Lcom/acloud/stub/localmusic/data/MusicInfoData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$8$1;->this$1:Lcom/acloud/stub/localmusic/QtActivity$8;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity$8;->this$0:Lcom/acloud/stub/localmusic/QtActivity;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity$8;->access$1(Lcom/acloud/stub/localmusic/QtActivity$8;)Lcom/acloud/stub/localmusic/QtActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$8$1;->val$musicData:Lcom/acloud/stub/localmusic/data/MusicInfoData;

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->loadLrc(Lcom/acloud/stub/localmusic/data/MusicInfoData;)Z
    invoke-static {v0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$53(Lcom/acloud/stub/localmusic/QtActivity;Lcom/acloud/stub/localmusic/data/MusicInfoData;)Z

    .line 998
    :cond_0
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "nCurDownSize"    # J
    .param p4, "nFileTotalSize"    # J

    .prologue
    .line 989
    return-void
.end method

.method public onSpeed(JLjava/lang/String;)V
    .locals 0
    .param p1, "downSizeSpeed"    # J
    .param p3, "speed"    # Ljava/lang/String;

    .prologue
    .line 983
    return-void
.end method
