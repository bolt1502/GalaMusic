.class Lcom/acloud/fragment/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/fragment/BaseFragment;->showToast(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/fragment/BaseFragment;


# direct methods
.method constructor <init>(Lcom/acloud/fragment/BaseFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/fragment/BaseFragment$1;->this$0:Lcom/acloud/fragment/BaseFragment;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragment$1;->this$0:Lcom/acloud/fragment/BaseFragment;

    # getter for: Lcom/acloud/fragment/BaseFragment;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/acloud/fragment/BaseFragment;->access$0(Lcom/acloud/fragment/BaseFragment;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragment$1;->this$0:Lcom/acloud/fragment/BaseFragment;

    # getter for: Lcom/acloud/fragment/BaseFragment;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/acloud/fragment/BaseFragment;->access$0(Lcom/acloud/fragment/BaseFragment;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 145
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragment$1;->this$0:Lcom/acloud/fragment/BaseFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/acloud/fragment/BaseFragment;->access$1(Lcom/acloud/fragment/BaseFragment;Landroid/widget/Toast;)V

    .line 147
    :cond_0
    return-void
.end method
