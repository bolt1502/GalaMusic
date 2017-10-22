.class Lcom/acloud/activity/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/activity/BaseActivity;->showToast(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/acloud/activity/BaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/activity/BaseActivity$3;->this$0:Lcom/acloud/activity/BaseActivity;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity$3;->this$0:Lcom/acloud/activity/BaseActivity;

    # getter for: Lcom/acloud/activity/BaseActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/acloud/activity/BaseActivity;->access$1(Lcom/acloud/activity/BaseActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity$3;->this$0:Lcom/acloud/activity/BaseActivity;

    # getter for: Lcom/acloud/activity/BaseActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/acloud/activity/BaseActivity;->access$1(Lcom/acloud/activity/BaseActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 278
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity$3;->this$0:Lcom/acloud/activity/BaseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/acloud/activity/BaseActivity;->access$2(Lcom/acloud/activity/BaseActivity;Landroid/widget/Toast;)V

    .line 280
    :cond_0
    return-void
.end method
