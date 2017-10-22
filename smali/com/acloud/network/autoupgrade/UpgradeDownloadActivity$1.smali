.class Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity$1;
.super Ljava/lang/Object;
.source "UpgradeDownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;


# direct methods
.method constructor <init>(Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity$1;->this$0:Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    # getter for: Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->mDownBegin:Lcom/acloud/network/downinterface/DownBeginListener;
    invoke-static {}, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->access$0()Lcom/acloud/network/downinterface/DownBeginListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/network/downinterface/DownBeginListener;->downCancel()V

    .line 49
    iget-object v0, p0, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity$1;->this$0:Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;

    invoke-virtual {v0}, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->finish()V

    .line 50
    return-void
.end method
