.class public abstract Lcom/acloud/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


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

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/acloud/activity/BaseActivity;->isStartActivity:Z

    .line 41
    iput-object v1, p0, Lcom/acloud/activity/BaseActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    .line 42
    iput-object v1, p0, Lcom/acloud/activity/BaseActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    .line 43
    iput v0, p0, Lcom/acloud/activity/BaseActivity;->mMode:I

    .line 44
    iput-boolean v0, p0, Lcom/acloud/activity/BaseActivity;->isActivityRunningState:Z

    .line 45
    iput-boolean v0, p0, Lcom/acloud/activity/BaseActivity;->mIsVertical:Z

    .line 46
    iput-object v1, p0, Lcom/acloud/activity/BaseActivity;->mVolumeBarTimer:Lcom/acloud/AndroidTimer;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/activity/BaseActivity;)Lcom/acloud/AndroidTimer;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mVolumeBarTimer:Lcom/acloud/AndroidTimer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/activity/BaseActivity;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2(Lcom/acloud/activity/BaseActivity;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/acloud/activity/BaseActivity;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method private overridePendingTransition(Z)V
    .locals 2
    .param p1, "isAnim"    # Z

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    iget v0, p0, Lcom/acloud/activity/BaseActivity;->mMode:I

    if-nez v0, :cond_1

    .line 240
    sget v0, Lcom/acloud/uibase/R$anim;->none:I

    sget v1, Lcom/acloud/uibase/R$anim;->push_left_out:I

    invoke-virtual {p0, v0, v1}, Lcom/acloud/activity/BaseActivity;->overridePendingTransition(II)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    sget v0, Lcom/acloud/uibase/R$anim;->none:I

    sget v1, Lcom/acloud/uibase/R$anim;->push_right_out:I

    invoke-virtual {p0, v0, v1}, Lcom/acloud/activity/BaseActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private setDialogPos(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 442
    iget-boolean v2, p0, Lcom/acloud/activity/BaseActivity;->mIsVertical:Z

    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 444
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 445
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 446
    instance-of v2, p1, Lcom/acloud/uibase/PublicDialog;

    if-eqz v2, :cond_1

    .line 447
    const/16 v2, 0x64

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 451
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 453
    .end local v0    # "dialogWindow":Landroid/view/Window;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 449
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
    .line 251
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/activity/BaseActivity;->mToast:Landroid/widget/Toast;

    .line 255
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 131
    invoke-virtual {p0}, Lcom/acloud/activity/BaseActivity;->isFinishAinm()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/acloud/activity/BaseActivity;->overridePendingTransition(Z)V

    .line 132
    return-void
.end method

.method protected getActivity()Lcom/acloud/activity/BaseActivity;
    .locals 0

    .prologue
    .line 108
    return-object p0
.end method

.method protected abstract getLayoutId()I
.end method

.method protected getResId(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 3
    .param p1, "resClz"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 471
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 472
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 480
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 480
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 475
    :catch_1
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 477
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method protected hideLoadingDialog()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    invoke-virtual {v0}, Lcom/acloud/uibase/LoadingDialog;->hideDialog()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/activity/BaseActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    .line 347
    :cond_0
    return-void
.end method

.method protected hideMessageDialog()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    invoke-virtual {v0}, Lcom/acloud/uibase/PublicDialog;->dismiss()V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/activity/BaseActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    .line 419
    :cond_0
    return-void
.end method

.method protected isFinishAinm()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method protected isMessageDialogShow()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isShowVolumeBar()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method protected isStartActivitying()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/acloud/activity/BaseActivity;->isStartActivity:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    iput-boolean v2, p0, Lcom/acloud/activity/BaseActivity;->isActivityRunningState:Z

    .line 53
    invoke-virtual {p0}, Lcom/acloud/activity/BaseActivity;->getLayoutId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/acloud/activity/BaseActivity;->setContentView(I)V

    .line 57
    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 58
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/acloud/activity/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 59
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_0

    .line 61
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/acloud/activity/BaseActivity;->mIsVertical:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/acloud/activity/BaseActivity;->onViewCreated(Landroid/os/Bundle;)V

    .line 70
    :try_start_1
    invoke-virtual {p0}, Lcom/acloud/activity/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 71
    invoke-virtual {p0}, Lcom/acloud/activity/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 72
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 73
    const-string v3, "phone"

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "mode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iput v2, p0, Lcom/acloud/activity/BaseActivity;->mMode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_2
    new-instance v2, Lcom/acloud/AndroidTimer;

    new-instance v3, Lcom/acloud/activity/BaseActivity$1;

    invoke-direct {v3, p0}, Lcom/acloud/activity/BaseActivity$1;-><init>(Lcom/acloud/activity/BaseActivity;)V

    invoke-direct {v2, v3}, Lcom/acloud/AndroidTimer;-><init>(Lcom/acloud/AndroidTimer$TimerCallback;)V

    iput-object v2, p0, Lcom/acloud/activity/BaseActivity;->mVolumeBarTimer:Lcom/acloud/AndroidTimer;

    .line 89
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/acloud/activity/BaseActivity$2;

    invoke-direct {v3, p0}, Lcom/acloud/activity/BaseActivity$2;-><init>(Lcom/acloud/activity/BaseActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void

    .line 73
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 75
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 63
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/acloud/activity/BaseActivity;->hideLoadingDialog()V

    .line 137
    invoke-virtual {p0}, Lcom/acloud/activity/BaseActivity;->hideMessageDialog()V

    .line 138
    invoke-virtual {p0}, Lcom/acloud/activity/BaseActivity;->cancelToast()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/activity/BaseActivity;->isActivityRunningState:Z

    .line 141
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mVolumeBarTimer:Lcom/acloud/AndroidTimer;

    invoke-virtual {v0}, Lcom/acloud/AndroidTimer;->stop()V

    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 143
    return-void
.end method

.method protected onInitData()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 457
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 459
    invoke-virtual {p0}, Lcom/acloud/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "popup_volume_bar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/acloud/activity/BaseActivity;->isStartActivity:Z

    .line 123
    invoke-virtual {p0}, Lcom/acloud/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "popup_volume_bar"

    invoke-virtual {p0}, Lcom/acloud/activity/BaseActivity;->isShowVolumeBar()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mVolumeBarTimer:Lcom/acloud/AndroidTimer;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/acloud/AndroidTimer;->start(I)V

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 126
    return-void

    .line 123
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
    .line 325
    invoke-virtual {p0, p1}, Lcom/acloud/activity/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/acloud/activity/BaseActivity;->showLoadingDialog(Ljava/lang/CharSequence;Z)V

    .line 326
    return-void
.end method

.method protected showLoadingDialog(IZZ)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "isRobFocus"    # Z
    .param p3, "isHideBg"    # Z

    .prologue
    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/acloud/activity/BaseActivity;->showLoadingDialog(IZ)V

    .line 292
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    invoke-virtual {v0, p3}, Lcom/acloud/uibase/LoadingDialog;->setBgVisibility(Z)V

    .line 295
    :cond_0
    return-void
.end method

.method protected showLoadingDialog(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "isRobFocus"    # Z

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/acloud/activity/BaseActivity;->hideLoadingDialog()V

    .line 330
    iget-boolean v0, p0, Lcom/acloud/activity/BaseActivity;->isActivityRunningState:Z

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 334
    :cond_0
    new-instance v0, Lcom/acloud/uibase/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/acloud/uibase/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acloud/activity/BaseActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    .line 335
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    invoke-direct {p0, v0}, Lcom/acloud/activity/BaseActivity;->setDialogPos(Landroid/app/Dialog;)V

    .line 336
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    invoke-virtual {v0, p1, p2}, Lcom/acloud/uibase/LoadingDialog;->showDialog(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method protected showLoadingDialog(Ljava/lang/CharSequence;ZZ)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "isRobFocus"    # Z
    .param p3, "isHideBg"    # Z

    .prologue
    .line 305
    invoke-virtual {p0, p1, p2}, Lcom/acloud/activity/BaseActivity;->showLoadingDialog(Ljava/lang/CharSequence;Z)V

    .line 306
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    invoke-virtual {v0, p3}, Lcom/acloud/uibase/LoadingDialog;->setBgVisibility(Z)V

    .line 309
    :cond_0
    return-void
.end method

.method protected showLoadingDialog(Z)V
    .locals 1
    .param p1, "isRobFocus"    # Z

    .prologue
    .line 316
    sget v0, Lcom/acloud/uibase/R$string;->loading:I

    invoke-virtual {p0, v0, p1}, Lcom/acloud/activity/BaseActivity;->showLoadingDialog(IZ)V

    .line 317
    return-void
.end method

.method protected showLoadingDialog(ZZ)V
    .locals 1
    .param p1, "isRobFocus"    # Z
    .param p2, "isHideBg"    # Z

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/acloud/activity/BaseActivity;->showLoadingDialog(Z)V

    .line 299
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mLoadingDialog:Lcom/acloud/uibase/LoadingDialog;

    invoke-virtual {v0, p2}, Lcom/acloud/uibase/LoadingDialog;->setBgVisibility(Z)V

    .line 302
    :cond_0
    return-void
.end method

.method protected showMessageDialog(IILcom/acloud/uibase/PublicDialog$DialogCallBack;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "buttonCount"    # I
    .param p3, "callback"    # Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lcom/acloud/activity/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/acloud/activity/BaseActivity;->showMessageDialog(Ljava/lang/CharSequence;ILcom/acloud/uibase/PublicDialog$DialogCallBack;)V

    .line 366
    return-void
.end method

.method protected showMessageDialog(ILcom/acloud/uibase/PublicDialog$DialogCallBack;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "callback"    # Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/acloud/activity/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, p2}, Lcom/acloud/activity/BaseActivity;->showMessageDialog(Ljava/lang/CharSequence;ILcom/acloud/uibase/PublicDialog$DialogCallBack;)V

    .line 356
    return-void
.end method

.method protected showMessageDialog(Ljava/lang/CharSequence;ILcom/acloud/uibase/PublicDialog$DialogCallBack;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "buttonCount"    # I
    .param p3, "callback"    # Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/acloud/activity/BaseActivity;->hideMessageDialog()V

    .line 370
    iget-boolean v0, p0, Lcom/acloud/activity/BaseActivity;->isActivityRunningState:Z

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 374
    :cond_0
    new-instance v0, Lcom/acloud/uibase/PublicDialog;

    invoke-direct {v0, p3, p0}, Lcom/acloud/uibase/PublicDialog;-><init>(Lcom/acloud/uibase/PublicDialog$DialogCallBack;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/acloud/activity/BaseActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    .line 375
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    invoke-direct {p0, v0}, Lcom/acloud/activity/BaseActivity;->setDialogPos(Landroid/app/Dialog;)V

    .line 376
    iget-object v0, p0, Lcom/acloud/activity/BaseActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

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
    .line 385
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/acloud/activity/BaseActivity;->showMessageDialog(Ljava/lang/CharSequence;ILcom/acloud/uibase/PublicDialog$DialogCallBack;)V

    .line 386
    return-void
.end method

.method protected showMessageDialog(Ljava/lang/String;[Ljava/lang/String;Lcom/acloud/uibase/PublicDialog$DialogCallBack;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "buttonTexts"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/acloud/uibase/PublicDialog$DialogCallBack;

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/acloud/activity/BaseActivity;->hideMessageDialog()V

    .line 397
    iget-boolean v1, p0, Lcom/acloud/activity/BaseActivity;->isActivityRunningState:Z

    if-nez v1, :cond_0

    .line 409
    :goto_0
    return-void

    .line 401
    :cond_0
    new-instance v1, Lcom/acloud/uibase/PublicDialog;

    invoke-direct {v1, p3, p0}, Lcom/acloud/uibase/PublicDialog;-><init>(Lcom/acloud/uibase/PublicDialog$DialogCallBack;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/acloud/activity/BaseActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    .line 402
    const/4 v0, 0x1

    .line 403
    .local v0, "buttonCount":I
    if-eqz p2, :cond_1

    array-length v1, p2

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 404
    const/4 v0, 0x2

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/acloud/activity/BaseActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    invoke-virtual {v1, p1, v0}, Lcom/acloud/uibase/PublicDialog;->popDialog(Ljava/lang/String;I)V

    .line 407
    iget-object v1, p0, Lcom/acloud/activity/BaseActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    invoke-direct {p0, v1}, Lcom/acloud/activity/BaseActivity;->setDialogPos(Landroid/app/Dialog;)V

    .line 408
    iget-object v1, p0, Lcom/acloud/activity/BaseActivity;->mPublicDialog:Lcom/acloud/uibase/PublicDialog;

    invoke-virtual {v1, p2}, Lcom/acloud/uibase/PublicDialog;->setButtongText([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final showToast(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/acloud/activity/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/acloud/activity/BaseActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 259
    return-void
.end method

.method protected final showToast(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/acloud/activity/BaseActivity;->cancelToast()V

    .line 268
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/acloud/activity/BaseActivity;->mToast:Landroid/widget/Toast;

    .line 269
    iget-boolean v1, p0, Lcom/acloud/activity/BaseActivity;->mIsVertical:Z

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/acloud/activity/BaseActivity;->mToast:Landroid/widget/Toast;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/acloud/activity/BaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 273
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 274
    .local v0, "mhandler":Landroid/os/Handler;
    new-instance v1, Lcom/acloud/activity/BaseActivity$3;

    invoke-direct {v1, p0}, Lcom/acloud/activity/BaseActivity$3;-><init>(Lcom/acloud/activity/BaseActivity;)V

    .line 281
    const-wide/16 v2, 0xbb8

    .line 274
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
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
    .line 155
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/acloud/activity/BaseActivity;->startActivitySafety(Landroid/content/Intent;)Z

    .line 157
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
    .line 166
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v0}, Lcom/acloud/activity/BaseActivity;->startActivitySafety(Landroid/content/Intent;)Z

    .line 169
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
    .line 160
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v0}, Lcom/acloud/activity/BaseActivity;->startActivitySafety(Landroid/content/Intent;)Z

    .line 163
    return-void
.end method

.method public startActivityForResultSafety(Landroid/content/Intent;I)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 211
    iget-boolean v3, p0, Lcom/acloud/activity/BaseActivity;->isStartActivity:Z

    if-eqz v3, :cond_0

    .line 229
    :goto_0
    return v1

    .line 215
    :cond_0
    iput-boolean v2, p0, Lcom/acloud/activity/BaseActivity;->isStartActivity:Z

    .line 218
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/acloud/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 219
    iget v3, p0, Lcom/acloud/activity/BaseActivity;->mMode:I

    if-nez v3, :cond_1

    .line 220
    sget v3, Lcom/acloud/uibase/R$anim;->push_left_in:I

    sget v4, Lcom/acloud/uibase/R$anim;->none:I

    invoke-virtual {p0, v3, v4}, Lcom/acloud/activity/BaseActivity;->overridePendingTransition(II)V

    :goto_1
    move v1, v2

    .line 224
    goto :goto_0

    .line 222
    :cond_1
    sget v3, Lcom/acloud/uibase/R$anim;->push_right_in:I

    sget v4, Lcom/acloud/uibase/R$anim;->none:I

    invoke-virtual {p0, v3, v4}, Lcom/acloud/activity/BaseActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iput-boolean v1, p0, Lcom/acloud/activity/BaseActivity;->isStartActivity:Z

    goto :goto_0
.end method

.method public startActivityInNewTask(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, p1}, Lcom/acloud/activity/BaseActivity;->startActivitySafety(Landroid/content/Intent;)Z

    .line 180
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
    .line 172
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Lcom/acloud/activity/BaseActivity;->startActivitySafety(Landroid/content/Intent;)Z

    .line 175
    return-void
.end method

.method public startActivitySafety(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 188
    iget-boolean v3, p0, Lcom/acloud/activity/BaseActivity;->isStartActivity:Z

    if-eqz v3, :cond_0

    .line 206
    :goto_0
    return v1

    .line 192
    :cond_0
    iput-boolean v2, p0, Lcom/acloud/activity/BaseActivity;->isStartActivity:Z

    .line 195
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/acloud/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    iget v3, p0, Lcom/acloud/activity/BaseActivity;->mMode:I

    if-nez v3, :cond_1

    .line 197
    sget v3, Lcom/acloud/uibase/R$anim;->push_left_in:I

    sget v4, Lcom/acloud/uibase/R$anim;->none:I

    invoke-virtual {p0, v3, v4}, Lcom/acloud/activity/BaseActivity;->overridePendingTransition(II)V

    :goto_1
    move v1, v2

    .line 201
    goto :goto_0

    .line 199
    :cond_1
    sget v3, Lcom/acloud/uibase/R$anim;->push_right_in:I

    sget v4, Lcom/acloud/uibase/R$anim;->none:I

    invoke-virtual {p0, v3, v4}, Lcom/acloud/activity/BaseActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iput-boolean v1, p0, Lcom/acloud/activity/BaseActivity;->isStartActivity:Z

    goto :goto_0
.end method
