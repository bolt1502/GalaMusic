.class public abstract Lcom/acloud/fragment/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentActivity.java"


# instance fields
.field private isActivityRunningState:Z

.field private isStartActivity:Z

.field private mIsVertical:Z

.field private mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

.field private mMode:I

.field private mPublicDialog:Lcom/acloud/uibase/PublicDialog;

.field private mToast:Landroid/widget/Toast;

.field private mVolumeBarTimer:Lcom/acloud/AndroidTimer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->isStartActivity:Z

    .line 37
    iput-object v1, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    .line 38
    iput-object v1, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    .line 39
    iput v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mMode:I

    .line 41
    iput-boolean v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->isActivityRunningState:Z

    .line 42
    iput-boolean v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mIsVertical:Z

    .line 43
    iput-object v1, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mVolumeBarTimer:Lcom/acloud/AndroidTimer;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/fragment/BaseFragmentActivity;)Lcom/acloud/AndroidTimer;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mVolumeBarTimer:Lcom/acloud/AndroidTimer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/fragment/BaseFragmentActivity;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2(Lcom/acloud/fragment/BaseFragmentActivity;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method private overridePendingTransition(Z)V
    .locals 2
    .param p1, "isAnim"    # Z

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 223
    iget v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mMode:I

    if-nez v0, :cond_1

    .line 224
    sget v0, Lcom/acloud/uibase/R$anim;->none:I

    sget v1, Lcom/acloud/uibase/R$anim;->push_left_out:I

    invoke-virtual {p0, v0, v1}, Lcom/acloud/fragment/BaseFragmentActivity;->overridePendingTransition(II)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    sget v0, Lcom/acloud/uibase/R$anim;->none:I

    sget v1, Lcom/acloud/uibase/R$anim;->push_right_out:I

    invoke-virtual {p0, v0, v1}, Lcom/acloud/fragment/BaseFragmentActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private setDialogPos(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 391
    iget-boolean v2, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mIsVertical:Z

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 393
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 394
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 395
    instance-of v2, p1, Lcom/acloud/uibase/PublicDialog;

    if-eqz v2, :cond_1

    .line 396
    const/16 v2, 0x64

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 400
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 402
    .end local v0    # "dialogWindow":Landroid/view/Window;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 398
    .restart local v0    # "dialogWindow":Landroid/view/Window;
    .restart local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/16 v2, 0xc8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method


# virtual methods
.method protected final cancelToast()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mToast:Landroid/widget/Toast;

    .line 239
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 115
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragmentActivity;->isFinishAinm()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/acloud/fragment/BaseFragmentActivity;->overridePendingTransition(Z)V

    .line 116
    return-void
.end method

.method protected abstract getLayoutId()I
.end method

.method protected getResId(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 3
    .param p1, "resClz"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 425
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 426
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 434
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 434
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 429
    :catch_1
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 431
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method protected hideLoadingDialog()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    invoke-virtual {v0}, Lcom/acloud/uibase/LoadingDialog;->hideDialog()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    .line 304
    :cond_0
    return-void
.end method

.method protected hideMessageDialog()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    invoke-virtual {v0}, Lcom/acloud/uibase/PublicDialog;->dismiss()V

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    .line 376
    :cond_0
    return-void
.end method

.method protected isFinishAinm()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method protected isShowVolumeBar()Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method protected isStartActivitying()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->isStartActivity:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 47
    const/4 v3, 0x0

    invoke-super {p0, v3}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iput-boolean v2, p0, Lcom/acloud/fragment/BaseFragmentActivity;->isActivityRunningState:Z

    .line 49
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragmentActivity;->getLayoutId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/acloud/fragment/BaseFragmentActivity;->setContentView(I)V

    .line 53
    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 54
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 55
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_0

    .line 57
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mIsVertical:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/acloud/fragment/BaseFragmentActivity;->onViewCreated(Landroid/os/Bundle;)V

    .line 66
    :try_start_1
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 67
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 68
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 69
    const-string v3, "phone"

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "mode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iput v2, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mMode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_2
    new-instance v2, Lcom/acloud/AndroidTimer;

    new-instance v3, Lcom/acloud/fragment/BaseFragmentActivity$1;

    invoke-direct {v3, p0}, Lcom/acloud/fragment/BaseFragmentActivity$1;-><init>(Lcom/acloud/fragment/BaseFragmentActivity;)V

    invoke-direct {v2, v3}, Lcom/acloud/AndroidTimer;-><init>(Lcom/acloud/AndroidTimer$TimerCallback;)V

    iput-object v2, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mVolumeBarTimer:Lcom/acloud/AndroidTimer;

    .line 85
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/acloud/fragment/BaseFragmentActivity$2;

    invoke-direct {v3, p0}, Lcom/acloud/fragment/BaseFragmentActivity$2;-><init>(Lcom/acloud/fragment/BaseFragmentActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void

    .line 69
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 71
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 59
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragmentActivity;->hideLoadingDialog()V

    .line 121
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragmentActivity;->hideMessageDialog()V

    .line 122
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragmentActivity;->cancelToast()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->isActivityRunningState:Z

    .line 124
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mVolumeBarTimer:Lcom/acloud/AndroidTimer;

    invoke-virtual {v0}, Lcom/acloud/AndroidTimer;->stop()V

    .line 126
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 127
    return-void
.end method

.method protected onInitData()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mVolumeBarTimer:Lcom/acloud/AndroidTimer;

    invoke-virtual {v0}, Lcom/acloud/AndroidTimer;->stop()V

    .line 415
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 416
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->isStartActivity:Z

    .line 107
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "popup_volume_bar"

    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragmentActivity;->isShowVolumeBar()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mVolumeBarTimer:Lcom/acloud/AndroidTimer;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/acloud/AndroidTimer;->start(I)V

    .line 109
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 110
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract onViewCreated(Landroid/os/Bundle;)V
.end method

.method protected showLoadingDialog(IZ)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "isRobFocus"    # Z

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/acloud/fragment/BaseFragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/acloud/fragment/BaseFragmentActivity;->showLoadingDialog(Ljava/lang/CharSequence;Z)V

    .line 283
    return-void
.end method

.method protected showLoadingDialog(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "isRobFocus"    # Z

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragmentActivity;->hideLoadingDialog()V

    .line 287
    iget-boolean v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->isActivityRunningState:Z

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    new-instance v0, Lcom/acloud/uibase/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/acloud/uibase/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    .line 292
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    invoke-direct {p0, v0}, Lcom/acloud/fragment/BaseFragmentActivity;->setDialogPos(Landroid/app/Dialog;)V

    .line 293
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    invoke-virtual {v0, p1, p2}, Lcom/acloud/uibase/LoadingDialog;->showDialog(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method protected showLoadingDialog(Z)V
    .locals 1
    .param p1, "isRobFocus"    # Z

    .prologue
    .line 273
    sget v0, Lcom/acloud/uibase/R$string;->loading:I

    invoke-virtual {p0, v0, p1}, Lcom/acloud/fragment/BaseFragmentActivity;->showLoadingDialog(IZ)V

    .line 274
    return-void
.end method

.method protected showMessageDialog(IILcom/acloud/uibase/PublicDialog$DialogCallBack;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "buttonCount"    # I
    .param p3, "callback"    # Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lcom/acloud/fragment/BaseFragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/acloud/fragment/BaseFragmentActivity;->showMessageDialog(Ljava/lang/CharSequence;ILcom/acloud/uibase/PublicDialog$DialogCallBack;)V

    .line 323
    return-void
.end method

.method protected showMessageDialog(ILcom/acloud/uibase/PublicDialog$DialogCallBack;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "callback"    # Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/acloud/fragment/BaseFragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, p2}, Lcom/acloud/fragment/BaseFragmentActivity;->showMessageDialog(Ljava/lang/CharSequence;ILcom/acloud/uibase/PublicDialog$DialogCallBack;)V

    .line 313
    return-void
.end method

.method protected showMessageDialog(Ljava/lang/CharSequence;ILcom/acloud/uibase/PublicDialog$DialogCallBack;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "buttonCount"    # I
    .param p3, "callback"    # Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragmentActivity;->hideMessageDialog()V

    .line 327
    iget-boolean v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->isActivityRunningState:Z

    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    new-instance v0, Lcom/acloud/uibase/PublicDialog;

    invoke-direct {v0, p3, p0}, Lcom/acloud/uibase/PublicDialog;-><init>(Lcom/acloud/uibase/PublicDialog$DialogCallBack;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    .line 332
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    invoke-direct {p0, v0}, Lcom/acloud/fragment/BaseFragmentActivity;->setDialogPos(Landroid/app/Dialog;)V

    .line 333
    iget-object v0, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/acloud/uibase/PublicDialog;->popDialog(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected showMessageDialog(Ljava/lang/CharSequence;Lcom/acloud/uibase/PublicDialog$DialogCallBack;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "callback"    # Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    .prologue
    .line 342
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/acloud/fragment/BaseFragmentActivity;->showMessageDialog(Ljava/lang/CharSequence;ILcom/acloud/uibase/PublicDialog$DialogCallBack;)V

    .line 343
    return-void
.end method

.method protected showMessageDialog(Ljava/lang/String;[Ljava/lang/String;Lcom/acloud/uibase/PublicDialog$DialogCallBack;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "buttonTexts"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragmentActivity;->hideMessageDialog()V

    .line 354
    iget-boolean v1, p0, Lcom/acloud/fragment/BaseFragmentActivity;->isActivityRunningState:Z

    if-nez v1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 358
    :cond_0
    new-instance v1, Lcom/acloud/uibase/PublicDialog;

    invoke-direct {v1, p3, p0}, Lcom/acloud/uibase/PublicDialog;-><init>(Lcom/acloud/uibase/PublicDialog$DialogCallBack;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    .line 359
    const/4 v0, 0x1

    .line 360
    .local v0, "buttonCount":I
    if-eqz p2, :cond_1

    array-length v1, p2

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 361
    const/4 v0, 0x2

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    invoke-virtual {v1, p1, v0}, Lcom/acloud/uibase/PublicDialog;->popDialog(Ljava/lang/String;I)V

    .line 364
    iget-object v1, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    invoke-direct {p0, v1}, Lcom/acloud/fragment/BaseFragmentActivity;->setDialogPos(Landroid/app/Dialog;)V

    .line 365
    iget-object v1, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    invoke-virtual {v1, p2}, Lcom/acloud/uibase/PublicDialog;->setButtongText([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final showToast(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/acloud/fragment/BaseFragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/acloud/fragment/BaseFragmentActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method

.method protected final showToast(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/acloud/fragment/BaseFragmentActivity;->cancelToast()V

    .line 252
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mToast:Landroid/widget/Toast;

    .line 253
    iget-boolean v1, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mIsVertical:Z

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mToast:Landroid/widget/Toast;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 258
    .local v0, "mhandler":Landroid/os/Handler;
    new-instance v1, Lcom/acloud/fragment/BaseFragmentActivity$3;

    invoke-direct {v1, p0}, Lcom/acloud/fragment/BaseFragmentActivity$3;-><init>(Lcom/acloud/fragment/BaseFragmentActivity;)V

    .line 265
    const-wide/16 v2, 0xbb8

    .line 258
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    return-void
.end method

.method public startActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/acloud/fragment/BaseFragmentActivity;->startActivitySafety(Landroid/content/Intent;)Z

    .line 141
    return-void
.end method

.method public startActivity(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/acloud/fragment/BaseFragmentActivity;->startActivitySafety(Landroid/content/Intent;)Z

    .line 153
    return-void
.end method

.method public startActivity(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/acloud/fragment/BaseFragmentActivity;->startActivitySafety(Landroid/content/Intent;)Z

    .line 147
    return-void
.end method

.method public startActivityForResultSafety(Landroid/content/Intent;I)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 195
    iget-boolean v3, p0, Lcom/acloud/fragment/BaseFragmentActivity;->isStartActivity:Z

    if-eqz v3, :cond_0

    .line 213
    :goto_0
    return v1

    .line 199
    :cond_0
    iput-boolean v2, p0, Lcom/acloud/fragment/BaseFragmentActivity;->isStartActivity:Z

    .line 202
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/acloud/fragment/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 203
    iget v3, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mMode:I

    if-nez v3, :cond_1

    .line 204
    sget v3, Lcom/acloud/uibase/R$anim;->push_left_in:I

    sget v4, Lcom/acloud/uibase/R$anim;->none:I

    invoke-virtual {p0, v3, v4}, Lcom/acloud/fragment/BaseFragmentActivity;->overridePendingTransition(II)V

    :goto_1
    move v1, v2

    .line 208
    goto :goto_0

    .line 206
    :cond_1
    sget v3, Lcom/acloud/uibase/R$anim;->push_right_in:I

    sget v4, Lcom/acloud/uibase/R$anim;->none:I

    invoke-virtual {p0, v3, v4}, Lcom/acloud/fragment/BaseFragmentActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iput-boolean v1, p0, Lcom/acloud/fragment/BaseFragmentActivity;->isStartActivity:Z

    goto :goto_0
.end method

.method public startActivityInNewTask(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, p1}, Lcom/acloud/fragment/BaseFragmentActivity;->startActivitySafety(Landroid/content/Intent;)Z

    .line 164
    return-void
.end method

.method public startActivityInNewTask(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v0}, Lcom/acloud/fragment/BaseFragmentActivity;->startActivitySafety(Landroid/content/Intent;)Z

    .line 159
    return-void
.end method

.method public startActivitySafety(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 172
    iget-boolean v3, p0, Lcom/acloud/fragment/BaseFragmentActivity;->isStartActivity:Z

    if-eqz v3, :cond_0

    .line 190
    :goto_0
    return v1

    .line 176
    :cond_0
    iput-boolean v2, p0, Lcom/acloud/fragment/BaseFragmentActivity;->isStartActivity:Z

    .line 179
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/acloud/fragment/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    iget v3, p0, Lcom/acloud/fragment/BaseFragmentActivity;->mMode:I

    if-nez v3, :cond_1

    .line 181
    sget v3, Lcom/acloud/uibase/R$anim;->push_left_in:I

    sget v4, Lcom/acloud/uibase/R$anim;->none:I

    invoke-virtual {p0, v3, v4}, Lcom/acloud/fragment/BaseFragmentActivity;->overridePendingTransition(II)V

    :goto_1
    move v1, v2

    .line 185
    goto :goto_0

    .line 183
    :cond_1
    sget v3, Lcom/acloud/uibase/R$anim;->push_right_in:I

    sget v4, Lcom/acloud/uibase/R$anim;->none:I

    invoke-virtual {p0, v3, v4}, Lcom/acloud/fragment/BaseFragmentActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iput-boolean v1, p0, Lcom/acloud/fragment/BaseFragmentActivity;->isStartActivity:Z

    goto :goto_0
.end method
