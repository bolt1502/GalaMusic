.class Lcom/acloud/network/http/UpgradeAppManager$2;
.super Ljava/lang/Object;
.source "UpgradeAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/network/http/UpgradeAppManager;->downBegin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/network/http/UpgradeAppManager;


# direct methods
.method constructor <init>(Lcom/acloud/network/http/UpgradeAppManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/acloud/network/http/UpgradeAppManager$2;)Lcom/acloud/network/http/UpgradeAppManager;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 226
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    iget-object v1, p0, Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    iget-object v1, v1, Lcom/acloud/network/http/UpgradeAppManager;->httpUtils:Lcom/acloud/network/http/HttpUtils;

    iget-object v2, p0, Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->apkUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/acloud/network/http/UpgradeAppManager;->access$9(Lcom/acloud/network/http/UpgradeAppManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    iget-object v4, v4, Lcom/acloud/network/http/UpgradeAppManager;->sdcardPath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/app_cache_path/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/acloud/network/http/UpgradeAppManager$2;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/acloud/network/http/UpgradeAppManager;->access$0(Lcom/acloud/network/http/UpgradeAppManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    .line 227
    new-instance v8, Lcom/acloud/network/http/UpgradeAppManager$2$1;

    invoke-direct {v8, p0}, Lcom/acloud/network/http/UpgradeAppManager$2$1;-><init>(Lcom/acloud/network/http/UpgradeAppManager$2;)V

    .line 226
    invoke-virtual/range {v1 .. v8}, Lcom/acloud/network/http/HttpUtils;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/acloud/network/http/HttpUtils$DownloadInfoCallback;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/acloud/network/http/UpgradeAppManager;->access$11(Lcom/acloud/network/http/UpgradeAppManager;Z)V

    .line 282
    return-void
.end method
