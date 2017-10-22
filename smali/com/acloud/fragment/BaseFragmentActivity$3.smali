.class Lcom/acloud/fragment/BaseFragmentActivity$3;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/fragment/BaseFragmentActivity;->showToast(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/fragment/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/acloud/fragment/BaseFragmentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/fragment/BaseFragmentActivity$3;->this$0:Lcom/acloud/fragment/BaseFragmentActivity;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity$3;->this$0:Lcom/acloud/fragment/BaseFragmentActivity;

    # getter for: Lcom/acloud/fragment/BaseFragmentActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/acloud/fragment/BaseFragmentActivity;->access$1(Lcom/acloud/fragment/BaseFragmentActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity$3;->this$0:Lcom/acloud/fragment/BaseFragmentActivity;

    # getter for: Lcom/acloud/fragment/BaseFragmentActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/acloud/fragment/BaseFragmentActivity;->access$1(Lcom/acloud/fragment/BaseFragmentActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 262
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity$3;->this$0:Lcom/acloud/fragment/BaseFragmentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/acloud/fragment/BaseFragmentActivity;->access$2(Lcom/acloud/fragment/BaseFragmentActivity;Landroid/widget/Toast;)V

    .line 264
    :cond_0
    return-void
.end method
