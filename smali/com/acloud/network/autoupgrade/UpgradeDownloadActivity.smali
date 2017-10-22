.class public Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;
.super Landroid/app/Activity;
.source "UpgradeDownloadActivity.java"


# static fields
.field private static final PROGRESSUPDATE:Ljava/lang/String; = "progress_update"

.field private static final QUIT:Ljava/lang/String; = "quit"

.field private static final SPEEDUPDATE:Ljava/lang/String; = "speed_update"

.field private static mDownBegin:Lcom/acloud/network/downinterface/DownBeginListener;


# instance fields
.field private mCancleBtn:Landroid/widget/Button;

.field private mDownloadProgressBar:Landroid/widget/ProgressBar;

.field private mProgressNumText:Landroid/widget/TextView;

.field private mSpeedNumText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->mDownBegin:Lcom/acloud/network/downinterface/DownBeginListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/acloud/network/downinterface/DownBeginListener;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->mDownBegin:Lcom/acloud/network/downinterface/DownBeginListener;

    return-object v0
.end method

.method public static setListener(Lcom/acloud/network/downinterface/DownBeginListener;)V
    .locals 0
    .param p0, "downBegin"    # Lcom/acloud/network/downinterface/DownBeginListener;

    .prologue
    .line 55
    sput-object p0, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->mDownBegin:Lcom/acloud/network/downinterface/DownBeginListener;

    .line 56
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lcom/acloud/network/R$layout;->upgrade_down:I

    invoke-virtual {p0, v0}, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->setContentView(I)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->setFinishOnTouchOutside(Z)V

    .line 37
    sget v0, Lcom/acloud/network/R$id;->upgrade_download_cancle_button:I

    invoke-virtual {p0, v0}, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->mCancleBtn:Landroid/widget/Button;

    .line 39
    sget v0, Lcom/acloud/network/R$id;->upgrade_download_progressbar:I

    invoke-virtual {p0, v0}, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->mDownloadProgressBar:Landroid/widget/ProgressBar;

    .line 41
    sget v0, Lcom/acloud/network/R$id;->upgrade_download_progress_number_text:I

    invoke-virtual {p0, v0}, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->mProgressNumText:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/acloud/network/R$id;->upgrade_download_speed_number_text:I

    invoke-virtual {p0, v0}, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->mSpeedNumText:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->mCancleBtn:Landroid/widget/Button;

    new-instance v1, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity$1;

    invoke-direct {v1, p0}, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity$1;-><init>(Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    const-string v1, "progress_update"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "progress_update"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 62
    .local v0, "progressNum":I
    iget-object v1, p0, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->mDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 63
    iget-object v1, p0, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->mProgressNumText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .end local v0    # "progressNum":I
    :cond_0
    const-string v1, "speed_update"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->mSpeedNumText:Landroid/widget/TextView;

    const-string v2, "speed_update"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_1
    const-string v1, "quit"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/acloud/network/autoupgrade/UpgradeDownloadActivity;->finish()V

    .line 71
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
