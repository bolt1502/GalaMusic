.class Lcom/acloud/network/http/UpgradeAppManager$2$1;
.super Ljava/lang/Object;
.source "UpgradeAppManager.java"

# interfaces
.implements Lcom/acloud/network/http/HttpUtils$DownloadInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/network/http/UpgradeAppManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurProgress:I

.field final synthetic this$1:Lcom/acloud/network/http/UpgradeAppManager$2;


# direct methods
.method constructor <init>(Lcom/acloud/network/http/UpgradeAppManager$2;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/network/http/UpgradeAppManager$2$1;->this$1:Lcom/acloud/network/http/UpgradeAppManager$2;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/network/http/UpgradeAppManager$2$1;->mCurProgress:I

    return-void
.end method


# virtual methods
.method public onCancel(JLjava/lang/String;)V
    .locals 0
    .param p1, "nCurDownSize"    # J
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 265
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorString"    # Ljava/lang/String;

    .prologue
    .line 279
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v1, p0, Lcom/acloud/network/http/UpgradeAppManager$2$1;->this$1:Lcom/acloud/network/http/UpgradeAppManager$2;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;
    invoke-static {v1}, Lcom/acloud/network/http/UpgradeAppManager$2;->access$0(Lcom/acloud/network/http/UpgradeAppManager$2;)Lcom/acloud/network/http/UpgradeAppManager;

    move-result-object v1

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;
    invoke-static {v1}, Lcom/acloud/network/http/UpgradeAppManager;->access$6(Lcom/acloud/network/http/UpgradeAppManager;)Lcom/acloud/network/ui/GalaProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/acloud/network/http/UpgradeAppManager$2$1;->this$1:Lcom/acloud/network/http/UpgradeAppManager$2;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;
    invoke-static {v1}, Lcom/acloud/network/http/UpgradeAppManager$2;->access$0(Lcom/acloud/network/http/UpgradeAppManager$2;)Lcom/acloud/network/http/UpgradeAppManager;

    move-result-object v1

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;
    invoke-static {v1}, Lcom/acloud/network/http/UpgradeAppManager;->access$6(Lcom/acloud/network/http/UpgradeAppManager;)Lcom/acloud/network/ui/GalaProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acloud/network/ui/GalaProgressDialog;->dismiss()V

    .line 252
    :cond_0
    if-eqz p1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/acloud/network/http/UpgradeAppManager$2$1;->this$1:Lcom/acloud/network/http/UpgradeAppManager$2;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;
    invoke-static {v1}, Lcom/acloud/network/http/UpgradeAppManager$2;->access$0(Lcom/acloud/network/http/UpgradeAppManager$2;)Lcom/acloud/network/http/UpgradeAppManager;

    move-result-object v1

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mUpgradeAppCallback:Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;
    invoke-static {v1}, Lcom/acloud/network/http/UpgradeAppManager;->access$7(Lcom/acloud/network/http/UpgradeAppManager;)Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;->onDownloadFinish(Ljava/lang/String;)V

    .line 256
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/acloud/network/http/UpgradeAppManager$2$1;->this$1:Lcom/acloud/network/http/UpgradeAppManager$2;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;
    invoke-static {v1}, Lcom/acloud/network/http/UpgradeAppManager$2;->access$0(Lcom/acloud/network/http/UpgradeAppManager$2;)Lcom/acloud/network/http/UpgradeAppManager;

    move-result-object v1

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/acloud/network/http/UpgradeAppManager;->access$0(Lcom/acloud/network/http/UpgradeAppManager;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "quit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/acloud/network/http/UpgradeAppManager$2$1;->this$1:Lcom/acloud/network/http/UpgradeAppManager$2;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;
    invoke-static {v1}, Lcom/acloud/network/http/UpgradeAppManager$2;->access$0(Lcom/acloud/network/http/UpgradeAppManager$2;)Lcom/acloud/network/http/UpgradeAppManager;

    move-result-object v1

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/acloud/network/http/UpgradeAppManager;->access$0(Lcom/acloud/network/http/UpgradeAppManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 259
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "nCurDownSize"    # J
    .param p4, "nFileTotalSize"    # J

    .prologue
    .line 233
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p2

    div-long/2addr v2, p4

    long-to-int v1, v2

    .line 234
    .local v1, "nCurProgress":I
    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/network/http/UpgradeAppManager;->access$10()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nCurProgress:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/acloud/utils/Logcat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget v2, p0, Lcom/acloud/network/http/UpgradeAppManager$2$1;->mCurProgress:I

    if-ne v2, v1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 239
    :cond_0
    iput v1, p0, Lcom/acloud/network/http/UpgradeAppManager$2$1;->mCurProgress:I

    .line 241
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/acloud/network/http/UpgradeAppManager$2$1;->this$1:Lcom/acloud/network/http/UpgradeAppManager$2;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;
    invoke-static {v2}, Lcom/acloud/network/http/UpgradeAppManager$2;->access$0(Lcom/acloud/network/http/UpgradeAppManager$2;)Lcom/acloud/network/http/UpgradeAppManager;

    move-result-object v2

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/acloud/network/http/UpgradeAppManager;->access$0(Lcom/acloud/network/http/UpgradeAppManager;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "progress_update"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    iget-object v2, p0, Lcom/acloud/network/http/UpgradeAppManager$2$1;->this$1:Lcom/acloud/network/http/UpgradeAppManager$2;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;
    invoke-static {v2}, Lcom/acloud/network/http/UpgradeAppManager$2;->access$0(Lcom/acloud/network/http/UpgradeAppManager$2;)Lcom/acloud/network/http/UpgradeAppManager;

    move-result-object v2

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/acloud/network/http/UpgradeAppManager;->access$0(Lcom/acloud/network/http/UpgradeAppManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSpeed(JLjava/lang/String;)V
    .locals 3
    .param p1, "downSize"    # J
    .param p3, "speed"    # Ljava/lang/String;

    .prologue
    .line 269
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/acloud/network/http/UpgradeAppManager$2$1;->this$1:Lcom/acloud/network/http/UpgradeAppManager$2;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;
    invoke-static {v1}, Lcom/acloud/network/http/UpgradeAppManager$2;->access$0(Lcom/acloud/network/http/UpgradeAppManager$2;)Lcom/acloud/network/http/UpgradeAppManager;

    move-result-object v1

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/acloud/network/http/UpgradeAppManager;->access$0(Lcom/acloud/network/http/UpgradeAppManager;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "speed_update"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lcom/acloud/network/http/UpgradeAppManager$2$1;->this$1:Lcom/acloud/network/http/UpgradeAppManager$2;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;
    invoke-static {v1}, Lcom/acloud/network/http/UpgradeAppManager$2;->access$0(Lcom/acloud/network/http/UpgradeAppManager$2;)Lcom/acloud/network/http/UpgradeAppManager;

    move-result-object v1

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/acloud/network/http/UpgradeAppManager;->access$0(Lcom/acloud/network/http/UpgradeAppManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 272
    return-void
.end method
