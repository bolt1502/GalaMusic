.class Lcom/acloud/stub/localmusic/QtActivity$10$1;
.super Ljava/lang/Object;
.source "QtActivity.java"

# interfaces
.implements Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/localmusic/QtActivity$10;->onSuccess(Lcom/acloud/stub/localmusic/network/bean/ResSearchArtist;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/acloud/stub/localmusic/QtActivity$10;


# direct methods
.method constructor <init>(Lcom/acloud/stub/localmusic/QtActivity$10;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity$10$1;->this$1:Lcom/acloud/stub/localmusic/QtActivity$10;

    .line 1142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(JLjava/lang/String;)V
    .locals 0
    .param p1, "nCurDownSize"    # J
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 1172
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorString"    # Ljava/lang/String;

    .prologue
    .line 1185
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1154
    if-eqz p1, :cond_1

    .line 1155
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$10$1;->this$1:Lcom/acloud/stub/localmusic/QtActivity$10;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity$10;->this$0:Lcom/acloud/stub/localmusic/QtActivity;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity$10;->access$1(Lcom/acloud/stub/localmusic/QtActivity$10;)Lcom/acloud/stub/localmusic/QtActivity;

    move-result-object v0

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurMusicArtistName:Ljava/lang/String;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$56(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$10$1;->this$1:Lcom/acloud/stub/localmusic/QtActivity$10;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity$10;->this$0:Lcom/acloud/stub/localmusic/QtActivity;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity$10;->access$1(Lcom/acloud/stub/localmusic/QtActivity$10;)Lcom/acloud/stub/localmusic/QtActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$10$1;->this$1:Lcom/acloud/stub/localmusic/QtActivity$10;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity$10;->this$0:Lcom/acloud/stub/localmusic/QtActivity;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity$10;->access$1(Lcom/acloud/stub/localmusic/QtActivity$10;)Lcom/acloud/stub/localmusic/QtActivity;

    move-result-object v1

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mCurMusicArtistName:Ljava/lang/String;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$56(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->loadArtistImage(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$57(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)Z

    .line 1157
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$10$1;->this$1:Lcom/acloud/stub/localmusic/QtActivity$10;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity$10;->this$0:Lcom/acloud/stub/localmusic/QtActivity;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity$10;->access$1(Lcom/acloud/stub/localmusic/QtActivity$10;)Lcom/acloud/stub/localmusic/QtActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/stub/utils/PathUtils;->getArtistPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 777 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/GlaNative;->execSystemCmd(Ljava/lang/String;)V

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 777 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$10$1;->this$1:Lcom/acloud/stub/localmusic/QtActivity$10;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity$10;->this$0:Lcom/acloud/stub/localmusic/QtActivity;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity$10;->access$1(Lcom/acloud/stub/localmusic/QtActivity$10;)Lcom/acloud/stub/localmusic/QtActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/acloud/stub/utils/PathUtils;->getArtistCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/GlaNative;->execSystemCmd(Ljava/lang/String;)V

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 777 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$10$1;->this$1:Lcom/acloud/stub/localmusic/QtActivity$10;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity$10;->this$0:Lcom/acloud/stub/localmusic/QtActivity;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity$10;->access$1(Lcom/acloud/stub/localmusic/QtActivity$10;)Lcom/acloud/stub/localmusic/QtActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/acloud/stub/utils/PathUtils;->getArtistPicturePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/GlaNative;->execSystemCmd(Ljava/lang/String;)V

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 777 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$10$1;->this$1:Lcom/acloud/stub/localmusic/QtActivity$10;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity$10;->this$0:Lcom/acloud/stub/localmusic/QtActivity;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity$10;->access$1(Lcom/acloud/stub/localmusic/QtActivity$10;)Lcom/acloud/stub/localmusic/QtActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/acloud/stub/utils/PathUtils;->getArtistPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acloud/GlaNative;->execSystemCmd(Ljava/lang/String;)V

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/QtActivity$10$1;->this$1:Lcom/acloud/stub/localmusic/QtActivity$10;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity$10;->this$0:Lcom/acloud/stub/localmusic/QtActivity;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity$10;->access$1(Lcom/acloud/stub/localmusic/QtActivity$10;)Lcom/acloud/stub/localmusic/QtActivity;

    move-result-object v0

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mMusicPlayerService:Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;
    invoke-static {v0}, Lcom/acloud/stub/localmusic/QtActivity;->access$9(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/stub/service/XYPlayerService$PlayServiceStub;->sendPlayToWidget()V

    .line 1166
    :cond_1
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "nCurDownSize"    # J
    .param p4, "nFileTotalSize"    # J

    .prologue
    .line 1150
    return-void
.end method

.method public onSpeed(JLjava/lang/String;)V
    .locals 0
    .param p1, "downSizeSpeed"    # J
    .param p3, "speed"    # Ljava/lang/String;

    .prologue
    .line 1178
    return-void
.end method
