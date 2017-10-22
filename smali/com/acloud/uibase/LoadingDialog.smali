.class public Lcom/acloud/uibase/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mLoadingBg:Landroid/widget/RelativeLayout;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private myContentTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 21
    sget v0, Lcom/acloud/uibase/R$style;->dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    iput-object v1, p0, Lcom/acloud/uibase/LoadingDialog;->myContentTextView:Landroid/widget/TextView;

    .line 17
    iput-object v1, p0, Lcom/acloud/uibase/LoadingDialog;->mLoadingBg:Landroid/widget/RelativeLayout;

    .line 18
    iput-object v1, p0, Lcom/acloud/uibase/LoadingDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 22
    return-void
.end method


# virtual methods
.method public hideDialog()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/acloud/uibase/LoadingDialog;->dismiss()V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v0, Lcom/acloud/uibase/R$layout;->dialog_loading:I

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/LoadingDialog;->setContentView(I)V

    .line 31
    sget v0, Lcom/acloud/uibase/R$id;->loading_prompt_textview:I

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/uibase/LoadingDialog;->myContentTextView:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/acloud/uibase/R$id;->loading_dialog:I

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/acloud/uibase/LoadingDialog;->mLoadingBg:Landroid/widget/RelativeLayout;

    .line 33
    sget v0, Lcom/acloud/uibase/R$id;->loading_progressBar:I

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/acloud/uibase/LoadingDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 34
    return-void
.end method

.method public setBgVisibility(Z)V
    .locals 5
    .param p1, "isVisibility"    # Z

    .prologue
    const/16 v4, 0x26

    .line 41
    if-nez p1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/acloud/uibase/LoadingDialog;->mLoadingBg:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 43
    iget-object v1, p0, Lcom/acloud/uibase/LoadingDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/acloud/uibase/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/acloud/uibase/R$drawable;->loading_progress:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v1, p0, Lcom/acloud/uibase/LoadingDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 45
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 46
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 47
    iget-object v1, p0, Lcom/acloud/uibase/LoadingDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/acloud/uibase/LoadingDialog;->mLoadingBg:Landroid/widget/RelativeLayout;

    sget v2, Lcom/acloud/uibase/R$drawable;->loading_dialog_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public showDialog(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "isRobFocus"    # Z

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/acloud/uibase/LoadingDialog;->show()V

    .line 61
    invoke-virtual {p0, p2}, Lcom/acloud/uibase/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 62
    iget-object v0, p0, Lcom/acloud/uibase/LoadingDialog;->myContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public showDialog(Z)V
    .locals 0
    .param p1, "isRobFocus"    # Z

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/acloud/uibase/LoadingDialog;->show()V

    .line 71
    return-void
.end method
