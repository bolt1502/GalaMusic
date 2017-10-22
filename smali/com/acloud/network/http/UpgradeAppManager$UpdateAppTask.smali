.class Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;
.super Landroid/os/AsyncTask;
.source "UpgradeAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/network/http/UpgradeAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAppTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/network/http/UpgradeAppManager;


# direct methods
.method private constructor <init>(Lcom/acloud/network/http/UpgradeAppManager;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acloud/network/http/UpgradeAppManager;Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;-><init>(Lcom/acloud/network/http/UpgradeAppManager;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 72
    iget-object v6, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    iget-object v7, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    iget-object v8, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/acloud/network/http/UpgradeAppManager;->access$0(Lcom/acloud/network/http/UpgradeAppManager;)Landroid/content/Context;

    move-result-object v8

    # invokes: Lcom/acloud/network/http/UpgradeAppManager;->getCachePath(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/acloud/network/http/UpgradeAppManager;->access$1(Lcom/acloud/network/http/UpgradeAppManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/acloud/network/http/UpgradeAppManager;->sdcardPath:Ljava/lang/String;

    .line 74
    iget-object v6, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    iget-object v6, v6, Lcom/acloud/network/http/UpgradeAppManager;->sdcardPath:Ljava/lang/String;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    iget-object v6, v6, Lcom/acloud/network/http/UpgradeAppManager;->sdcardPath:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v5

    .line 78
    :cond_1
    if-eqz p1, :cond_2

    array-length v6, p1

    if-eqz v6, :cond_2

    .line 80
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-static {v6}, Lcom/acloud/network/http/HttpUtils;->getFromWebByHttpUrlConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 87
    :try_start_0
    iget-object v6, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/acloud/network/http/UpgradeAppManager;->access$2(Lcom/acloud/network/http/UpgradeAppManager;Lorg/json/JSONObject;)V

    .line 88
    iget-object v6, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->object:Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/acloud/network/http/UpgradeAppManager;->access$3(Lcom/acloud/network/http/UpgradeAppManager;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "version"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 89
    iget-object v6, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->object:Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/acloud/network/http/UpgradeAppManager;->access$3(Lcom/acloud/network/http/UpgradeAppManager;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "version"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, "curVer":I
    iget-object v6, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    iget-object v7, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/acloud/network/http/UpgradeAppManager;->access$0(Lcom/acloud/network/http/UpgradeAppManager;)Landroid/content/Context;

    move-result-object v7

    # invokes: Lcom/acloud/network/http/UpgradeAppManager;->getAppVer(Landroid/content/Context;)I
    invoke-static {v6, v7}, Lcom/acloud/network/http/UpgradeAppManager;->access$4(Lcom/acloud/network/http/UpgradeAppManager;Landroid/content/Context;)I

    move-result v6

    if-le v0, v6, :cond_2

    .line 92
    iget-object v6, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->object:Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/acloud/network/http/UpgradeAppManager;->access$3(Lcom/acloud/network/http/UpgradeAppManager;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "info"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "remark":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/acloud/network/http/UpgradeAppManager;->access$0(Lcom/acloud/network/http/UpgradeAppManager;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "upgrade_message"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v6, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/acloud/network/http/UpgradeAppManager;->access$0(Lcom/acloud/network/http/UpgradeAppManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    iget-object v6, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    invoke-static {v6}, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->setListener(Lcom/acloud/network/downinterface/DownBeginListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "curVer":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "remark":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->isDownloadSuccess:Z
    invoke-static {v6}, Lcom/acloud/network/http/UpgradeAppManager;->access$5(Lcom/acloud/network/http/UpgradeAppManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    iget-object v6, v6, Lcom/acloud/network/http/UpgradeAppManager;->sdcardPath:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/app_cache_path/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/acloud/network/http/UpgradeAppManager;->access$0(Lcom/acloud/network/http/UpgradeAppManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 99
    .restart local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 112
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;
    invoke-static {v0}, Lcom/acloud/network/http/UpgradeAppManager;->access$6(Lcom/acloud/network/http/UpgradeAppManager;)Lcom/acloud/network/ui/GalaProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;
    invoke-static {v0}, Lcom/acloud/network/http/UpgradeAppManager;->access$6(Lcom/acloud/network/http/UpgradeAppManager;)Lcom/acloud/network/ui/GalaProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/network/ui/GalaProgressDialog;->dismiss()V

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mUpgradeAppCallback:Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;
    invoke-static {v0}, Lcom/acloud/network/http/UpgradeAppManager;->access$7(Lcom/acloud/network/http/UpgradeAppManager;)Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;->onDownloadFinish(Ljava/lang/String;)V

    .line 124
    :cond_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    .line 129
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mUpgradeAppCallback:Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;
    invoke-static {v0}, Lcom/acloud/network/http/UpgradeAppManager;->access$7(Lcom/acloud/network/http/UpgradeAppManager;)Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/acloud/network/http/UpgradeAppManager$UpgradeAppCallback;->onDownloadProgress(I)V

    .line 131
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;
    invoke-static {v0}, Lcom/acloud/network/http/UpgradeAppManager;->access$6(Lcom/acloud/network/http/UpgradeAppManager;)Lcom/acloud/network/ui/GalaProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;
    invoke-static {v0}, Lcom/acloud/network/http/UpgradeAppManager;->access$6(Lcom/acloud/network/http/UpgradeAppManager;)Lcom/acloud/network/ui/GalaProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/network/ui/GalaProgressDialog;->show()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;
    invoke-static {v0}, Lcom/acloud/network/http/UpgradeAppManager;->access$6(Lcom/acloud/network/http/UpgradeAppManager;)Lcom/acloud/network/ui/GalaProgressDialog;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/acloud/network/ui/GalaProgressDialog;->setProgress(I)V

    .line 139
    :cond_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
