.class Lcom/acloud/network/http/UpgradeAppManager$1;
.super Ljava/lang/Object;
.source "UpgradeAppManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/network/http/UpgradeAppManager;->popUpgradeDialog(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/acloud/network/http/UpgradeAppManager$1;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager$1;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mUpdateAppTask:Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;
    invoke-static {v0}, Lcom/acloud/network/http/UpgradeAppManager;->access$8(Lcom/acloud/network/http/UpgradeAppManager;)Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acloud/network/http/UpgradeAppManager$UpdateAppTask;->cancel(Z)Z

    .line 179
    iget-object v0, p0, Lcom/acloud/network/http/UpgradeAppManager$1;->this$0:Lcom/acloud/network/http/UpgradeAppManager;

    # getter for: Lcom/acloud/network/http/UpgradeAppManager;->mGalaProgressDialog:Lcom/acloud/network/ui/GalaProgressDialog;
    invoke-static {v0}, Lcom/acloud/network/http/UpgradeAppManager;->access$6(Lcom/acloud/network/http/UpgradeAppManager;)Lcom/acloud/network/ui/GalaProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/network/ui/GalaProgressDialog;->dismiss()V

    .line 180
    return-void
.end method
