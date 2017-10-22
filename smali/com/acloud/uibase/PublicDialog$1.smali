.class Lcom/acloud/uibase/PublicDialog$1;
.super Ljava/lang/Object;
.source "PublicDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/uibase/PublicDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/uibase/PublicDialog;


# direct methods
.method constructor <init>(Lcom/acloud/uibase/PublicDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/uibase/PublicDialog$1;->this$0:Lcom/acloud/uibase/PublicDialog;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 57
    .local v0, "id":I
    sget v1, Lcom/acloud/uibase/R$id;->dialog_myBtnSure:I

    if-ne v1, v0, :cond_2

    .line 58
    iget-object v1, p0, Lcom/acloud/uibase/PublicDialog$1;->this$0:Lcom/acloud/uibase/PublicDialog;

    # getter for: Lcom/acloud/uibase/PublicDialog;->myCallBack:Lcom/acloud/uibase/PublicDialog$DialogCallBack;
    invoke-static {v1}, Lcom/acloud/uibase/PublicDialog;->access$0(Lcom/acloud/uibase/PublicDialog;)Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/acloud/uibase/PublicDialog$1;->this$0:Lcom/acloud/uibase/PublicDialog;

    # getter for: Lcom/acloud/uibase/PublicDialog;->myCallBack:Lcom/acloud/uibase/PublicDialog$DialogCallBack;
    invoke-static {v1}, Lcom/acloud/uibase/PublicDialog;->access$0(Lcom/acloud/uibase/PublicDialog;)Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    move-result-object v1

    invoke-interface {v1}, Lcom/acloud/uibase/PublicDialog$DialogCallBack;->onClickSure()V

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/acloud/uibase/PublicDialog$1;->this$0:Lcom/acloud/uibase/PublicDialog;

    invoke-virtual {v1}, Lcom/acloud/uibase/PublicDialog;->cancel()V

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    sget v1, Lcom/acloud/uibase/R$id;->dialog_myBtnCancenl:I

    if-ne v1, v0, :cond_1

    .line 63
    iget-object v1, p0, Lcom/acloud/uibase/PublicDialog$1;->this$0:Lcom/acloud/uibase/PublicDialog;

    # getter for: Lcom/acloud/uibase/PublicDialog;->myCallBack:Lcom/acloud/uibase/PublicDialog$DialogCallBack;
    invoke-static {v1}, Lcom/acloud/uibase/PublicDialog;->access$0(Lcom/acloud/uibase/PublicDialog;)Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 64
    iget-object v1, p0, Lcom/acloud/uibase/PublicDialog$1;->this$0:Lcom/acloud/uibase/PublicDialog;

    # getter for: Lcom/acloud/uibase/PublicDialog;->myCallBack:Lcom/acloud/uibase/PublicDialog$DialogCallBack;
    invoke-static {v1}, Lcom/acloud/uibase/PublicDialog;->access$0(Lcom/acloud/uibase/PublicDialog;)Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    move-result-object v1

    invoke-interface {v1}, Lcom/acloud/uibase/PublicDialog$DialogCallBack;->onClickCancel()V

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/acloud/uibase/PublicDialog$1;->this$0:Lcom/acloud/uibase/PublicDialog;

    invoke-virtual {v1}, Lcom/acloud/uibase/PublicDialog;->cancel()V

    goto :goto_0
.end method
