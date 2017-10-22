.class public Lcom/acloud/network/autoupgrade/UpgradeMainActivity;
.super Landroid/app/Activity;
.source "UpgradeMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final UPGRADE_MESSAGE:Ljava/lang/String; = "upgrade_message"

.field private static mDownBegin:Lcom/acloud/network/downinterface/DownBeginListener;


# instance fields
.field private mMessageText:Landroid/widget/TextView;

.field private mNoUpgradeBtn:Landroid/widget/Button;

.field private mUpgradeBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->mDownBegin:Lcom/acloud/network/downinterface/DownBeginListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 38
    const-string v1, ""

    .line 39
    .local v1, "messageText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "upgrade_message"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    const-string v2, "upgrade_message"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->mMessageText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/acloud/network/R$id;->upgrade_message_text:I

    invoke-virtual {p0, v0}, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->mMessageText:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/acloud/network/R$id;->upgrade_upgradenow_button:I

    invoke-virtual {p0, v0}, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->mUpgradeBtn:Landroid/widget/Button;

    .line 51
    sget v0, Lcom/acloud/network/R$id;->upgrade_noupgrade_button:I

    invoke-virtual {p0, v0}, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->mNoUpgradeBtn:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->mUpgradeBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->mNoUpgradeBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public static setListener(Lcom/acloud/network/downinterface/DownBeginListener;)V
    .locals 0
    .param p0, "downBegin"    # Lcom/acloud/network/downinterface/DownBeginListener;

    .prologue
    .line 59
    sput-object p0, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->mDownBegin:Lcom/acloud/network/downinterface/DownBeginListener;

    .line 60
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 65
    .local v0, "id":I
    sget v1, Lcom/acloud/network/R$id;->upgrade_upgradenow_button:I

    if-ne v0, v1, :cond_1

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    sget-object v1, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->mDownBegin:Lcom/acloud/network/downinterface/DownBeginListener;

    invoke-interface {v1}, Lcom/acloud/network/downinterface/DownBeginListener;->downBegin()V

    .line 68
    sget-object v1, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->mDownBegin:Lcom/acloud/network/downinterface/DownBeginListener;

    invoke-static {v1}, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->setListener(Lcom/acloud/network/downinterface/DownBeginListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->finish()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    sget v1, Lcom/acloud/network/R$id;->upgrade_noupgrade_button:I

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v0, Lcom/acloud/network/R$layout;->upgrade_main:I

    invoke-virtual {p0, v0}, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->setContentView(I)V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->setFinishOnTouchOutside(Z)V

    .line 32
    invoke-direct {p0}, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->initView()V

    .line 34
    invoke-direct {p0}, Lcom/acloud/network/autoupgrade/UpgradeMainActivity;->initData()V

    .line 35
    return-void
.end method
