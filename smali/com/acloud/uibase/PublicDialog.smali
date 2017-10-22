.class public Lcom/acloud/uibase/PublicDialog;
.super Landroid/app/Dialog;
.source "PublicDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/uibase/PublicDialog$DialogCallBack;
    }
.end annotation


# instance fields
.field private myCallBack:Lcom/acloud/uibase/PublicDialog$DialogCallBack;

.field private myCancelButton:Landroid/widget/Button;

.field private myContentTextView:Landroid/widget/TextView;

.field private mySureButton:Landroid/widget/Button;

.field private onBtnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/acloud/uibase/PublicDialog$DialogCallBack;Landroid/content/Context;)V
    .locals 2
    .param p1, "callBack"    # Lcom/acloud/uibase/PublicDialog$DialogCallBack;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 38
    sget v0, Lcom/acloud/uibase/R$style;->dialog:I

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 19
    iput-object v1, p0, Lcom/acloud/uibase/PublicDialog;->myContentTextView:Landroid/widget/TextView;

    .line 20
    iput-object v1, p0, Lcom/acloud/uibase/PublicDialog;->mySureButton:Landroid/widget/Button;

    .line 21
    iput-object v1, p0, Lcom/acloud/uibase/PublicDialog;->myCancelButton:Landroid/widget/Button;

    .line 22
    iput-object v1, p0, Lcom/acloud/uibase/PublicDialog;->myCallBack:Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    .line 53
    new-instance v0, Lcom/acloud/uibase/PublicDialog$1;

    invoke-direct {v0, p0}, Lcom/acloud/uibase/PublicDialog$1;-><init>(Lcom/acloud/uibase/PublicDialog;)V

    iput-object v0, p0, Lcom/acloud/uibase/PublicDialog;->onBtnClickListener:Landroid/view/View$OnClickListener;

    .line 40
    iput-object p1, p0, Lcom/acloud/uibase/PublicDialog;->myCallBack:Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/uibase/PublicDialog;)Lcom/acloud/uibase/PublicDialog$DialogCallBack;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/acloud/uibase/PublicDialog;->myCallBack:Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    return-object v0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 117
    sget v0, Lcom/acloud/uibase/R$id;->dialog_myContentView:I

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/PublicDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/uibase/PublicDialog;->myContentTextView:Landroid/widget/TextView;

    .line 118
    sget v0, Lcom/acloud/uibase/R$id;->dialog_myBtnSure:I

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/PublicDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/acloud/uibase/PublicDialog;->mySureButton:Landroid/widget/Button;

    .line 119
    sget v0, Lcom/acloud/uibase/R$id;->dialog_myBtnCancenl:I

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/PublicDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/acloud/uibase/PublicDialog;->myCancelButton:Landroid/widget/Button;

    .line 120
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lcom/acloud/uibase/R$layout;->dialog_public:I

    invoke-virtual {p0, v0}, Lcom/acloud/uibase/PublicDialog;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/acloud/uibase/PublicDialog;->findViews()V

    .line 51
    return-void
.end method

.method public popDialog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "strMessage"    # Ljava/lang/String;
    .param p2, "nButton"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/acloud/uibase/PublicDialog;->show()V

    .line 82
    iget-object v1, p0, Lcom/acloud/uibase/PublicDialog;->myContentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const/4 v1, 0x1

    if-ne v1, p2, :cond_0

    .line 85
    iget-object v1, p0, Lcom/acloud/uibase/PublicDialog;->myCancelButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/acloud/uibase/PublicDialog;->mySureButton:Landroid/widget/Button;

    .line 88
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 87
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 90
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    iget-object v1, p0, Lcom/acloud/uibase/PublicDialog;->mySureButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/acloud/uibase/PublicDialog;->onBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/acloud/uibase/PublicDialog;->myCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/acloud/uibase/PublicDialog;->onBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setButtongText([Ljava/lang/String;)V
    .locals 3
    .param p1, "buttonTexts"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 102
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    array-length v0, p1

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/acloud/uibase/PublicDialog;->mySureButton:Landroid/widget/Button;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 107
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/acloud/uibase/PublicDialog;->myCancelButton:Landroid/widget/Button;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
